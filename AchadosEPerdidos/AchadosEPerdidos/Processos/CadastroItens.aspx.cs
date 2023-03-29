using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
using Serilog;

namespace AchadosEPerdidos.Processos
{
    public partial class CadastroItens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //grdItens.Columns[4].Visible = false;
               //grdItens.Columns[5].Visible = false;
            }


        }

        public static bool VerificaCpf(string cpf)
        {
            int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            string tempCpf;
            string digito;
            int soma;
            int resto;
            cpf = cpf.Trim();
            cpf = cpf.Replace(".", "").Replace("-", "");
            if (cpf.Length != 11)
                return false;
            tempCpf = cpf.Substring(0, 9);
            soma = 0;

            for (int i = 0; i < 9; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCpf = tempCpf + digito;
            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cpf.EndsWith(digito);
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
            Log.Logger = new LoggerConfiguration()
           .WriteTo.File("C:\\temp\\myapp.txt",
           restrictedToMinimumLevel: Serilog.Events.LogEventLevel.Information,
           rollingInterval: RollingInterval.Hour)
           .CreateLogger();

            if (txtNomeItem.Text == "")
            {
                lblNomeItem.Text = "Campo obrigatório!";
                return;
            }
            lblNomeItem.Text = "";

            if (txtNomePessoa.Text == "")
            {
                lblNomePessoa.Text = "Campo obrigatório!";
                return;
            }
            lblNomePessoa.Text = "";

            if (txtCpfPessoa.Text == "" && txtCpfPessoa.Visible == true)
            {
                lblCpf.Text = "Campo obrigatório!";
                return;
            }
            lblCpf.Text = "";

            if (txtDescricao.Text == "")
            {
                lblDescrição.Text = "Campo obrigatório!";
                return;
            }
            lblDescrição.Text = "";

            if (txtLugar.Text == "")
            {
                lblLugar.Text = "Campo obrigatório!";
                return;
            }
            lblLugar.Text = "";

            if (txtData.Text == "")
            {
                lblData.Text = "Campo obrigatório!";
                return;
            }
            lblData.Text = "";

            if (VerificaCpf(txtCpfPessoa.Text) == false && txtCpfPessoa.Visible == true)
            {
                lblCpf.Text = "Cpf inválido!";
                Log.Error("Cpf do usuario é inválido");
                return;
            }
            else
            {
                lblEmail.Text = "";
            }

            //Verificar se o email é válido
            if (VerificaEmail(txtEmail.Text) == false)
            {
                lblEmail.Text = "Email inválido!";
                Log.Error("Email do usuario é inválido");
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
                NovoItem.Descricao = txtDescricao.Text;
                NovoItem.Status = false;
                NovoItem.Data = Convert.ToDateTime(txtData.Text);
                NovoItem.NomePessoa = txtNomePessoa.Text;
                NovoItem.Email = txtEmail.Text;
                NovoItem.Cpf = txtCpfPessoa.Text;
                NovoItem.Id_Funcionario = 1;
                NovoItem.PerdiAchei = txtCpfPessoa.Visible == false;

                Negocio.Item AcoesItem = new Negocio.Item();
                AcoesItem.Create(NovoItem);
                SiteMaster.ExibirAlert(this, "Item Cadastrado com sucesso!");
            }
            catch
            {
                SiteMaster.ExibirAlert(this, "Não foi possível cadastrar, tente novamente");
                Log.Error("Erro ao cadastrar item");
            }

            txtNomeItem.Text = "";
            txtLugar.Text = "";
            txtDescricao.Text = "";
            txtData.Text = "";
            txtNomePessoa.Text = "";
            txtEmail.Text = "";

        }
        protected void grdItens_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var itens = (List<Modelo.Item>)Session["dados"];

            if (e.CommandName == "excluir")
            {
                if (new Negocio.Item().Delete(itens[index].Id))
                    SiteMaster.ExibirAlert(this, "Item excluído com sucesso!");
                btnPesquisar_Click(null, null);
            }

            if (e.CommandName == "editar")
            {
                Response.Redirect("EditarItem.aspx?id=" + itens[index].Id);
            }

            if (e.CommandName == "status")
            {
                var item = itens[index];
                item.Status = true;
                new Negocio.Item().UpdateStatus(item);
                btnPesquisar_Click(null, null);
                SiteMaster.ExibirAlert(this, "Item encontrado!");
            }
        }


        protected void grdItens_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            var itens = (List<Negocio.Item>)Session["dados"];
            grdItens.PageIndex = e.NewPageIndex;
            grdItens.DataSource = itens;
            grdItens.DataBind();
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            if (txtPesqNome.Text == "")
            {
                lblPesquisar.Text = "Insira o nome de algum objeto!";
                return;
            }
            else
                lblPesquisar.Text = "";

            var itens = new Negocio.Item().Read("", txtPesqNome.Text, txtLugar.Text, txtDescricao.Text, rdoStatus.SelectedValue,  txtData.Text);
            Session["dados"] = itens;
            grdItens.DataSource = itens;
            grdItens.DataBind();
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int index = e.Row.RowIndex + (grdItens.PageIndex * grdItens.PageCount);
                var item = ((List<Modelo.Item>)Session["dados"])[index];

                if (Session["funcionario_logado"] == null)
                {
                    e.Row.Cells[3].Text = "Perdido";

                    
                    
                }

                if (item.Status == true)
                {
                    e.Row.Cells[3].Text = "Encontrado";
                }

                //grdItens.Columns[4].Visible = true;
                //grdItens.Columns[5].Visible = true;
            }
        }

        protected void btnItemPerdido_Click(object sender, EventArgs e)
        {
            pnlCadastro.Visible = true;
            txtCpfPessoa.Visible = true;
        }

        protected void btnItemAchado_Click(object sender, EventArgs e)
        {
            pnlCadastro.Visible = true;
            txtCpfPessoa.Visible = false;

            Modelo.Item NovoItem = new Modelo.Item();
            NovoItem.PerdiAchei = true;
        }
    }
}




