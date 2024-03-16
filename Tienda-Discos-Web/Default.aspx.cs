﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;
using System.EnterpriseServices.Internal;

namespace Tienda_Electronica_Web
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulo  { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulo = negocio.listarConSP();

            if (!IsPostBack)
            {
              repRepetidor.DataSource = ListaArticulo;
              repRepetidor.DataBind();
            }
            
        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }

        
    }
}