using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Reflection.Emit;


namespace Aromakart.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
           
                Session["breadCumbTitle"] = "Manage Category";
                Session["breadCumbPage"] = "Product";
                lblMsg.Visible = false;
                getProducts();
           
           
            lblMsg.Visible = false;
        }

        protected void btnAddOrUpdate_Click(object sender, EventArgs e)
        {
            {
                string actionName = string.Empty, imgPath = string.Empty, fileExtension = string.Empty;
                bool isValidToExecute = false;
                int productId = Convert.ToInt32(hdnId.Value);
                con = new SqlConnection(Utils.getConnection());
                cmd = new SqlCommand("Product_Crud", con);
                cmd.Parameters.AddWithValue("@Action", productId == 0 ? "INSERT" : "UPDATE");
                cmd.Parameters.AddWithValue("@ProductId", productId);
                cmd.Parameters.AddWithValue("@ProductName", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductDesc", txtDesc.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductPrice", txtPrice.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductQuantity", txtQuantity.Text.Trim());
                cmd.Parameters.AddWithValue("@CategoryId", ddlCategories.SelectedValue);
                cmd.Parameters.AddWithValue("@IsActive", cbIsActive.Checked);
                if (fuProductImg.HasFile)
                {
                    if (Utils.isValidExtension(fuProductImg.FileName))
                    {
                        string newImageName = Utils.getUniqueId();
                        fileExtension = Path.GetExtension(fuProductImg.FileName);
                        imgPath = "Images/Product/" + newImageName.ToString() + fileExtension;
                        fuProductImg.PostedFile.SaveAs(Server.MapPath("~/Images/Product/") + newImageName.ToString() + fileExtension);
                        cmd.Parameters.AddWithValue("@ProductImgUrl", imgPath);
                        isValidToExecute = true;
                    }
                    else
                    {
                        lblMsg.Visible = false;
                        lblMsg.Text = "Please select .jpg, or .png image";
                        lblMsg.CssClass = "alert alert-danger";
                        isValidToExecute = false;
                    }
                }
                else
                {
                    isValidToExecute = true;
                }
                if (isValidToExecute)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        actionName = productId == 0 ? "inserted" : "updated";
                        lblMsg.Visible = true;
                        lblMsg.Text = "Product " + actionName + "&nbsp successful!";
                        lblMsg.CssClass = "alert alert-success";
                        getProducts();
                        clear();
                    }
                    catch (Exception ex)
                    {
                        lblMsg.Visible = true;
                        lblMsg.Text = "Error" + ex.Message;
                        lblMsg.CssClass = "alert alert-danger";

                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
        }
        void getProducts()
        {
            con = new SqlConnection(Utils.getConnection());
            cmd = new SqlCommand("Product_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "SELECT");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rProduct.DataSource = dt;
            rProduct.DataBind();

        }
        void clear()
        {
            txtName.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtQuantity.Text = string.Empty;
            txtPrice.Text = string.Empty;
            ddlCategories.ClearSelection();
            cbIsActive.Checked = false;
            hdnId.Value = "0";
            btnAddOrUpdate.Text = "Add";
            imgProduct.ImageUrl = string.Empty;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void rProduct_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            lblMsg.Visible = false;
           
            if (e.CommandName == "Edit")
            {
                con = new SqlConnection(Utils.getConnection());
                cmd = new SqlCommand("Product_Crud", con);
                cmd.Parameters.AddWithValue("@Action", "GETBYID");
                cmd.Parameters.AddWithValue("@ProductId", e.CommandArgument);
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                txtName.Text = dt.Rows[0]["ProductName"].ToString();
                txtDesc.Text = dt.Rows[0]["ProductDesc"].ToString();
                txtPrice.Text = dt.Rows[0]["ProductPrice"].ToString();
                txtQuantity.Text = dt.Rows[0]["ProductQuantity"].ToString();
                ddlCategories.SelectedValue = dt.Rows[0]["CategoryId"].ToString();
                cbIsActive.Checked = Convert.ToBoolean(dt.Rows[0]["IsActive"]);
                imgProduct.ImageUrl = string.IsNullOrEmpty(dt.Rows[0]["ProductImgUrl"].ToString()) ? "../Images/No_Image.png" : "../" + dt.Rows[0]["ProductImgUrl"].ToString();
                imgProduct.Height = 200;
                imgProduct.Width = 200;
                hdnId.Value = dt.Rows[0]["ProductId"].ToString();
                btnAddOrUpdate.Text = "Update";
            }
            else if (e.CommandName == "Delete")
            {
                con = new SqlConnection(Utils.getConnection());
                cmd = new SqlCommand("Product_Crud", con);
                cmd.Parameters.AddWithValue("@Action", "DELETE");
                cmd.Parameters.AddWithValue("@ProductId", e.CommandArgument);
                cmd.CommandType = CommandType.StoredProcedure;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Visible = true;
                    lblMsg.Text = "Product Deleted Successfully!";
                    lblMsg.CssClass = "alert alert-success";
                    getProducts();

                }
                catch (Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error" + ex.Message;
                    lblMsg.CssClass = "alert alert-danger";

                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void rProduct_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            //if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            //{
            //    Label lblIsActive
            //Label lblIsQuantity = e.Item.FindControl("lblIsActive") as Label;
            //    if (lblIsActive.Text =="True")
            //    {
            //        lblIsActive.Text = "Active";
            //        lblIsActive.CssClass = "badge badge-success";
            //    }
            //    else
            //    {
            //        lblIsActive.Text = "Active";
            //        lblIsActive.CssClass = "badge badge-danger";
            //    }

            //    if (Convert.ToInt32(lblIsQuantity.Text) <= 5)
            //    {
            //        lblIsQuantity.CssClass = "badge badge-danger";
            //        lblIsQuantity.ToolTip = "Item about to be 'Out Of Stock!'";
            //    }
            //}
        }
    }
}