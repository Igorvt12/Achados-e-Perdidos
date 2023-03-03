using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
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
        protected void btnFuncionarios_Click(object sender, EventArgs e)
        {
            pnlInfosFuncionarios.Visible = true;
        }

        protected void btnCreateFuncionario_Click(object sender, EventArgs e)
        {
            if (txtCreateNomeFuncionario.Text == "")
            {
                lblCreateNomeFunc.Text = "Campo obrigatório!";
                return;
            }
            lblCreateNomeFunc.Text = "";

            //Verificar se o email é válido
            if (VerificaEmail(txtCreateEmailFuncionario.Text) == false)
            {
                lblCreateEmailFunc.Text = "Email inválido!";
                return;
            }
            lblCreateEmailFunc.Text = "";

            if (txtCreateSenhaFuncionario.Text == "")
            {
                lblCreateSenhaFunc.Text = "Campo obrigatório!";
                return;
            }
            lblCreateSenhaFunc.Text = "";

            if (txtConfirmaSenha.Text == "")
            {
                lblConfirmaSenha.Text = "Campo obrigatório!";
                return;
            }
            lblConfirmaSenha.Text = "";

            //Verificar se a senha é igual
            if (txtCreateSenhaFuncionario.Text != txtConfirmaSenha.Text && txtCreateSenhaFuncionario.Text.Trim() != "")
            {
                SiteMaster.ExibirAlert(this, "Senhas diferentes!");
                return;
            }

            Modelo.Funcionario NovoFuncionario = new Modelo.Funcionario();
            NovoFuncionario.Nome = txtCreateNomeFuncionario.Text;
            NovoFuncionario.Email = txtCreateEmailFuncionario.Text;
            NovoFuncionario.Senha = txtCreateSenhaFuncionario.Text;
           

            Negocio.Funcionario AcoesFuncionario = new Negocio.Funcionario();
            AcoesFuncionario.Create(NovoFuncionario);

            SiteMaster.ExibirAlert(this, "Funcionario Cadastrado com sucesso!");

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            var funcionario = new Modelo.Funcionario();
            funcionario.Email = txtEmailFuncionarios.Text;
               funcionario.Senha = txtSenha.Text;

            if (new Negocio.Funcionario().VerificaEmailNoBD(funcionario))
            {
                SiteMaster.ExibirAlert(this, "Email já cadastrado!");
            }

            if (new Negocio.Funcionario().Login(funcionario))
            {
                SiteMaster.ExibirAlertRedirecionar(this, "Você está logado como " + txtEmailFuncionarios.Text, "/Processos/CadastroItens.aspx");
                return;
            }
            SiteMaster.ExibirAlert(this, "Senha ou Email incorreto!");
            Session["funcionario_logado"] = txtEmailFuncionarios.Text;
        }

        protected void btnUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Processos/CadastroItens.aspx");
        }
    }
}
