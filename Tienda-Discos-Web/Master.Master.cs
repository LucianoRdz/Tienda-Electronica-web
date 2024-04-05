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

            //if (Seguridad.sesionActiva(Session["usuario"]))
            //{
            //    Usuario usuario = (Usuario)Session["usuario"];

            //    if (!string.IsNullOrEmpty(usuario.urlImagenPerfil))
            //        imgIconoAvatar.ImageUrl = "~/Images/" + usuario.urlImagenPerfil;
            //    else
            //        imgIconoAvatar.ImageUrl = "https://previews.123rf.com/images/salamatik/salamatik1801/salamatik180100019/92979836-perfil-an%C3%B3nimo-icono-de-la-cara-persona-silueta-gris-avatar-masculino-por-defecto-foto-de.jpg";
            //}
            //else
            //{

            //    imgIconoAvatar.ImageUrl = "https://previews.123rf.com/images/salamatik/salamatik1801/salamatik180100019/92979836-perfil-an%C3%B3nimo-icono-de-la-cara-persona-silueta-gris-avatar-masculino-por-defecto-foto-de.jpg";
            //}

            //if (!(Page is Login || Page is Registro || Page is Default || Page is Error))
            //{
            //    if (!Seguridad.sesionActiva(Session["usuario"]))
            //        Response.Redirect("Login.aspx", false);

            //}




            imgIconoAvatar.ImageUrl = "https://media.istockphoto.com/id/1337144146/es/vector/vector-de-icono-de-perfil-de-avatar-predeterminado.jpg?s=612x612&w=0&k=20&c=YiNB64vwYQnKqp-bWd5mB_9QARD3tSpIosg-3kuQ_CI=";
            if (Page is Default)
            {
                if (Seguridad.sesionActiva(Session["usuario"]))
                {
                    Usuario user = (Usuario)Session["usuario"];
                    if (!string.IsNullOrEmpty(user.urlImagenPerfil))
                        imgIconoAvatar.ImageUrl = "~/Images/" + user.urlImagenPerfil;
                }
            }

            if (!(Page is Login || Page is Registro || Page is Default || Page is Error|| Page is Detalles))
            {
                if (!Seguridad.sesionActiva(Session["usuario"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Usuario user = (Usuario)Session["usuario"];
                    if (!string.IsNullOrEmpty(user.urlImagenPerfil))
                        imgIconoAvatar.ImageUrl = "~/Images/" + user.urlImagenPerfil;
                }
            }
        }



        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Registro.aspx");
        }
    }
}