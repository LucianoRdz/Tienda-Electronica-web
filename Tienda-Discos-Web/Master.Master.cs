using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace Tienda_Electronica_Web
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgAvatar.ImageUrl = "https://media.istockphoto.com/id/1337144146/es/vector/vector-de-icono-de-perfil-de-avatar-predeterminado.jpg?s=612x612&w=0&k=20&c=YiNB64vwYQnKqp-bWd5mB_9QARD3tSpIosg-3kuQ_CI=";
           
            if (!( Page is Login || Page is Registro || Page is Default ))
            {
                if (!Seguridad.sesionActiva(Session["usuario"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Usuario user = (Usuario)Session["usuario"];
                    lblUser.Text = user.Email;
                     if (!string.IsNullOrEmpty(user.urlImagenPerfil))
                       imgAvatar.ImageUrl = "~/images/" + user.urlImagenPerfil; 
                }

            }

            if (Seguridad.sesionActiva(Session["usuario"]))
            {
                Usuario user = (Usuario)Session["usuario"];
                imgAvatar.ImageUrl = "~/images/" + ((Usuario)Session["usuario"]).urlImagenPerfil;
                lblUser.Text = user.Email;
            }
            
        }

        protected void imgAvatar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MiPerfil.aspx");
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}