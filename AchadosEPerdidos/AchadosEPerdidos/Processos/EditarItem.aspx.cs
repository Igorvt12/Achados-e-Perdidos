using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AchadosEPerdidos.Processos
{
    public partial class EditarItem : System.Web.UI.Page
    {
        private MySqlConnection connection;
   
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"].ToString();
                var item = new Negocio.Item().ReadForUpdate(id,"","","","","")[0];

                txtNomePessoa.Text = item.NomePessoa;
                txtDescricao.Text = item.Descricao;
                txtLugar.Text = item.Lugar;
                txtData.Text = item.Data.ToString();
                txtNomePessoa.Text = item.NomePessoa;
            }
        }

        protected void btnEditarItem_Click(object sender, EventArgs e)
        {
            if (txtNomeItem.Text == "")
            {
                lblNomeItem.Text = "Este campo não pode ficar vazio!";
                return;
            }
            else
                lblNomeItem.Text = "";

            if (txtDescricao.Text == "")
            {
                lblDescricao.Text = "Este campo não pode ficar vazio!";
                return;
            }
            else
                lblDescricao.Text = "";

            if (txtLugar.Text == "")
            {
                lblLugar.Text = "Este campo não pode ficar vazio!";
                return;
            }
            else
                lblLugar.Text = "";

            if (txtData.Text == "")
            {
                lblData.Text = "Este campo não pode ficar vazio!";
                return;
            }
            else
                lblData.Text = "";

            if (txtNomePessoa.Text == "")
            {
                lblNomePessoa.Text = "Este campo não pode ficar vazio!";
                return;
            }

            else
                lblNomePessoa.Text = "";
        }

    }
}