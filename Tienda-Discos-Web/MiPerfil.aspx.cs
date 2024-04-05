using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;
using System.Security.Policy;

namespace Tienda_Electronica_Web
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Seguridad.sesionActiva(Session["usuario"]))
                    {
                        if (Seguridad.sesionActiva(Session["usuario"]))
                        {
                            Usuario user = (Usuario)Session["usuario"];
                            txtEmail.Text = user.Email;
                            txtEmail.ReadOnly = true;
                            txtNombre.Text = user.Nombre;
                            txtApellido.Text = user.Apellido;
                            if (!string.IsNullOrEmpty(user.urlImagenPerfil))
                            {
                                imgNuevoPerfil.ImageUrl = "~/images/" + user.urlImagenPerfil;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Session.Add("Error.aspx", ex.ToString());

            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }



        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (!Page.IsValid)
                {
                    return;
                }

                UsuarioNegocio negocio = new UsuarioNegocio();
                Usuario user = (Usuario)Session["usuario"];

                if (txtImagen.PostedFile.FileName != "")
                {
                    string ruta = Server.MapPath("./images/");
                    txtImagen.PostedFile.SaveAs(ruta + "perfil-" + user.Id + ".jpg");
                    user.urlImagenPerfil = "perfil-" + user.Id + ".jpg";
                }


                user.Nombre = txtNombre.Text;
                user.Apellido = txtApellido.Text;

                negocio.actualizar(user);

                Image img = (Image)Master.FindControl("imgIconoAvatar");
                img.ImageUrl = "~/Images/" + user.urlImagenPerfil;
            }



            catch (Exception ex)
            {
                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}