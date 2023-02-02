using System;
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

            Modelo.Funcionario NovoFuncionario = new Modelo.Funcionario();
            NovoFuncionario.Usuario = txtCreateNomeFuncionario.Text;
            NovoFuncionario.Senha = txtCreateSenhaFuncionario.Text;
            NovoFuncionario.Email = txtCreateEmailFuncionario.Text;


            Negocio.Funcionario AcoesFuncionario = new Negocio.Funcionario();
            AcoesFuncionario.Create(NovoFuncionario);
        }
    }
}
