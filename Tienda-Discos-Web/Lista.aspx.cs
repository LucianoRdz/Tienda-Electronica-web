﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace Tienda_Electronica_Web
{
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            dgvArticulos.DataSource = negocio.listarConSP();
            dgvArticulos.DataBind();
        }
    }
    //protected void btnAceptar_Click(object sender, EventArgs e)
    //{
        
    //}
}