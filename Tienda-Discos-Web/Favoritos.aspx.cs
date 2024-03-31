using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;
using Negocio;

namespace Tienda_Electronica_Web
{
    public partial class Favoritos : System.Web.UI.Page
    {
        public List<Articulo> listaProductos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Seguridad.sesionActiva(Session["usuario"]))
            //    Response.Redirect("Login.aspx", false);


            if (!IsPostBack)
            {
                Usuario user = (Usuario)Session["usuario"];
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";

                if (!string.IsNullOrEmpty(id) && int.TryParse(id, out int idArticulo))
                {
                    FavoritoNegocio negocio = new FavoritoNegocio();
                    Favorito nuevo = new Favorito();

                    nuevo.IdUser = user.Id;
                    nuevo.IdArticulo = int.Parse(id);

                    negocio.insertarFavorito(nuevo);
                }

                listaProductos = new List<Articulo>();

                if (user != null)
                {
                    FavoritoNegocio negocioArticulo = new FavoritoNegocio();
                    List<int> idArticulosFav = negocioArticulo.listarFavoritos(user.Id);

                    if (idArticulosFav.Count > 0)
                    {
                        ArticuloNegocio favorito = new ArticuloNegocio();
                        listaProductos = favorito.listarArticuloConID(idArticulosFav);
                        repRepeater.DataSource = listaProductos;
                        repRepeater.DataBind();
                    }
                }
                else
                {
                    Session.Add("error", "Error al cargar articulos favoritos");
                    Response.Redirect("Error.aspx");
                }

            }




        }

        protected void btnEliminarFav_Click(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["usuario"];
            FavoritoNegocio negocio = new FavoritoNegocio();


            int idArticulo = int.Parse(((Button)sender).CommandArgument);
            int idUser = user.Id;

            negocio.eliminarFavorito(idArticulo, idUser);

            Response.Redirect("Favoritos.aspx", false);
        }
    }
}