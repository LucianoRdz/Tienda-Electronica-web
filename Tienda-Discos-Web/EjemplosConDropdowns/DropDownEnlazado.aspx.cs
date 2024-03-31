using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace Tienda_Electronica_Web.EjemplosConDropdowns
{
    public partial class DropDownEnlazado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            MarcaNegocio marcaNegocio = new MarcaNegocio();
            try
            {
                if (!IsPostBack)
                {
                    List<Articulo> listaArticulo = negocio.listar();
                    Session["listaArticulo"] = listaArticulo;

                    List<Marca> listaMarcas = marcaNegocio.listar();

                    ddlMarca.DataSource = listaMarcas;
                    ddlMarca.DataTextField = "Descripcion";
                    ddlMarca.DataValueField = "Id";
                    ddlMarca.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }
        }
        
        protected void ddlMarca_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(ddlMarca.SelectedItem.Value);
            ddlArticulosFiltrados.DataSource = ((List<Articulo>)Session["listaArticulo"]).FindAll(x => x.Marca.Id == id);
            ddlArticulosFiltrados.DataBind();
        }
    }
}