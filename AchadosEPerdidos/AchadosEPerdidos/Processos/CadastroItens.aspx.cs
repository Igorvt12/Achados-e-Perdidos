using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
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
        private bool VerificaEmail(string testar_email)
        {
            Regex rg = new Regex(@"^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$");

            if (rg.IsMatch(testar_email))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void btnCadastrarItem_Click(object sender, EventArgs e)
        {

            //Verificar se o email é válido
            if (VerificaEmail(txtEmail.Text) == false)
            {
                lblEmail.Text = "Email inválido!";
                return;
            }
            else
            {
                lblEmail.Text = "";
            }

            try
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
                SiteMaster.ExibirAlert(this, "Item Cadastrado com sucesso!");
            }
            catch
            {
                SiteMaster.ExibirAlert(this, "Não foi possível cadastrar, tente novamente");
            }
        }
    }
}