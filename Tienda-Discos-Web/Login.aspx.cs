using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;
using Tienda_Electronica_Web;

namespace Tienda_Electronica_Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            UsuarioNegocio negocio = new UsuarioNegocio();
            try
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;

                if (Validacion.validaTextoVacio(txtEmail) || Validacion.validaTextoVacio(txtPassword))
                {
                    Session.Add("error", "Debe completar ambos campos");
                    Response.Redirect("Error.aspx");
                }

                usuario.Email = txtEmail.Text;
                usuario.Pass = txtPassword.Text;

                if (negocio.Loguear(usuario))
                {
                    Session.Add("usuario", usuario);
                    Response.Redirect("MiPerfil.aspx", false);
                }
                else
                {
                   Session.Add("error ", "usuario o contraseña incorrectos");
                   Response.Redirect("Error.aspx");                       
                }
            }
            catch  (System.Threading.ThreadAbortException ex) { }
            catch (Exception ex)
            {
                Session.Add("error",ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }
    }
}