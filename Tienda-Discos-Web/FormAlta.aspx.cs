using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace Tienda_Electronica_Web
{
    public partial class FormAlta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled=false;

            try
            {
                if (!IsPostBack)
                {
                    MarcaNegocio negocio = new MarcaNegocio();
                    List<Marca> lista = negocio.listar();

                    ddlMarca.DataSource = lista;
                    ddlMarca.DataValueField = "Id";
                    ddlMarca.DataTextField = "Descripcion";
                    ddlMarca.DataBind();

                    CategoriaNegocio negocio2 = new CategoriaNegocio();
                    List<Categoria> listas = negocio2.listar();

                    ddlCategoria.DataSource = listas;
                    ddlCategoria.DataValueField = "Id";
                    ddlCategoria.DataTextField = "Descripcion";
                    ddlCategoria.DataBind();
                }
            }
            catch (Exception ex)
            {
               Session.Add("error", ex);
                throw;  
            }

           
        }

        

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            imgArticulo.ImageUrl = txtImagenUrl.Text;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
           
                try
                {
                    Articulo nuevo = new Articulo();
                    ArticuloNegocio negocio = new ArticuloNegocio();

                    nuevo.Codigo = txtCodigo.Text;
                    nuevo.Nombre = txtNombre.Text;
                    nuevo.Descripcion = txtDescripcion.Text;
                    nuevo.Precio = int.Parse(txtPrecio.Text);
                    nuevo.ImagenUrl = txtImagenUrl.Text;

                    nuevo.Marca = new Marca();
                    nuevo.Marca.Id = int.Parse(ddlMarca.SelectedValue);
                    nuevo.Categoria = new Categoria();
                    nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);

                    negocio.agregar(nuevo);
                Response.Redirect("Lista.aspx", false);
                }
                catch (Exception ex)
                {

                    Session.Add("error", ex.ToString()); ;
                }
            
        }
    }
}