using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Negocio;


namespace Tienda_Discos_Web
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
                Usuario user = new Usuario();
                UsuarioNegocio usuarioNegocio = new UsuarioNegocio();
                user.Email = txtEmail.Text;
                user.Pass = txtPass.Text;
                int id = usuarioNegocio.insertarNuevo(user);

                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
            
        }
    }
}