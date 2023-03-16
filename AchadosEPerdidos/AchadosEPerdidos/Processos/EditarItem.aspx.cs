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
       /* protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"].ToString();
                connection.Open();
                var comando = new MySqlCommand("SELECT * FROM pessoa WHERE id = " + id, connection);
                var reader = comando.ExecuteReader();
                reader.Read();
                txtNome.Text = reader.GetString("nome");
                var textoAtivo = "";
                if (reader.GetBoolean("ativo"))
                    textoAtivo = "1";
                else
                    textoAtivo = "0";
                rdoAtivo.SelectedValue = textoAtivo;
            }
        }*/
    }
}