using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace Tienda_Electronica_Web
{
    public partial class Detalles : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if (id != null && !IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                listaArticulos = negocio.listar(id);
            }
        }
        public static string ObtenerIdUsuario()
        {
            
            Usuario usuario = HttpContext.Current.Session["usuario"] as Usuario;
            if (Seguridad.sesionActiva(usuario))
            {
                
                return usuario.Id.ToString();
            }

            
            return string.Empty;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}