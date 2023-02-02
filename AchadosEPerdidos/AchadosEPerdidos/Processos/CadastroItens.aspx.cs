using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AchadosEPerdidos.Processos
{
    public partial class CadastroItens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarItem_Click(object sender, EventArgs e)    
{
            Modelo.Item NovoItem = new Modelo.Item();
            NovoItem.NomeItem = txtNomeItem.Text;
            NovoItem.Lugar = txtLugar.Text;
            NovoItem.Descrição = txtDescrição.Text;
            NovoItem.Status = false;
            NovoItem.Data = Convert.ToDateTime(txtData.Text);
            NovoItem.NomePessoa = txtNomePessoa.Text;
            NovoItem.Email = txtEmail.Text;
            NovoItem.Id_Funcionario = 1;

            Negocio.Item AcoesItem = new Negocio.Item();
            AcoesItem.Create(NovoItem);
        }
    }
}