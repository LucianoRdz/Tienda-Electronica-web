using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;


namespace Tienda_Discos_Web.EjemplosConDropdowns
{
    public partial class DropDownsEjemplos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            try
            {
                if (!IsPostBack) { 
                ddlArticulos.DataSource = articuloNegocio.listarConSP();
                ddlArticulos.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }
        }

        
    }
}