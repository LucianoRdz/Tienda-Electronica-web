using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using Tienda_Electronica_Web;


namespace Tienda_Electronica_Web
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarme_Click(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if(!Page.IsValid)
                 return;
                

                Usuario usuario = new Usuario();
                UsuarioNegocio usuarioNegocio = new UsuarioNegocio();

                if (Validacion.validaTextoVacio(txtEmail) || Validacion.validaTextoVacio(txtEmail))
                {
                    Session.Add("error", "Debe completar ambos campos.");
                    Response.Redirect("Error.aspx");
                }
           

                usuario.Email = txtEmail.Text;
                usuario.Pass = txtPass.Text;
                
                usuario.Id = usuarioNegocio.insertarNuevo(usuario);
                Session.Add("usuario", usuario);

                Response.Redirect("MiPerfil.aspx", false);
            }
            catch (System.Threading.ThreadAbortException ex) { }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
            
        }
    }
}