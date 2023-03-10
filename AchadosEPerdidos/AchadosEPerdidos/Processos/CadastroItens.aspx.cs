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
            txtNomePessoa.Enabled = false;
            txtNomeItem.Enabled = false;
            txtDescricao.Enabled = false;
            txtLugar.Enabled = false;
            txtData.Enabled = false;
            txtEmail.Enabled = false;
            if (!IsPostBack)
            {
            }


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
            else
            {
                lblNomeItem.Text = "";
            }
            if (txtNomePessoa.Text == "")
            {
                lblNomePessoa.Text = "Campo obrigatório!";
                return;
            }
            else
            {
                lblNomePessoa.Text = "";
            }
            if (txtDescricao.Text == "")
            {
                lblDescrição.Text = "Campo obrigatório!";
                return;
            }
            else
            {
                lblDescrição.Text = "";
            }
            if (txtLugar.Text == "")
            {
                lblLugar.Text = "Campo obrigatório!";
                return;
            }
            else
            {
                lblLugar.Text = "";
            }
            if (txtData.Text == "")
            {
                lblData.Text = "Campo obrigatório!";
                return;
            }
            else
            {
                lblData.Text = "";
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
                NovoItem.Id_Funcionario = 1;

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
                //
            }

            if (e.CommandName == "status")
            {

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

            var itens = new Negocio.Item().Read("", txtPesqNome.Text, txtLugar.Text, txtDescricao.Text, rdoStatus.SelectedValue);
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
                    e.Row.Cells[3].Text = "Ainda perdido";
                }
                    if (item.Status == true)
                    {
                        e.Row.Cells[3].Text = "Encontrado";
                    }
            }
        }

        
    }
}




