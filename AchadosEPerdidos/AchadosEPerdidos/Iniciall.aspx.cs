﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AchadosEPerdidos
{
    public partial class Iniciall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnFuncionarios_Click(object sender, EventArgs e)
        {
            pnlInfosFuncionarios.Visible = true;
        }
    }
}