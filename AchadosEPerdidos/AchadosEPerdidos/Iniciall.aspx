<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iniciall.aspx.cs" Inherits="AchadosEPerdidos.Iniciall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-sm-2"></div>
    <div class="col-sm-6">
        <div class="jumbotron">
            <h2>Insira seu tipo de usuário</h2>
            <asp:Button runat="server" ID="btnUsuario" Text="Usuario Padrão" />
            <br />
            <br />
            <asp:Button runat="server" ID="btnFuncionarios" Text="Funcionário" OnClick="btnFuncionarios_Click" />
            <br />
            <br />
            <asp:Panel runat="server" ID="pnlInfosFuncionarios" Visible="false">
                <asp:TextBox runat="server" ID="txtFuncionarios" placeholder="Insira seu nome"></asp:TextBox>
                
                <asp:TextBox runat="server" ID="txtSenha" placeholder="Insira sua senha"></asp:TextBox>
                <asp:Button runat="server" ID="btnEntrar" Text="Entrar" CssClass="btn btn-success" />
                <br />
                <br />
            </asp:Panel>


            Não possui um cadastro de funcionário?
            <br />
            Nome:
            <asp:TextBox runat="server" ID="txtCreateNomeFuncionario" placeholder="Insira seu nome de funcionário"></asp:TextBox>
            <br />
            Senha:
            <asp:TextBox runat="server" ID="txtCreateSenhaFuncionario" placeholder="Insira sua senha"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="btnCreateFuncionario" Text="Criar Funcionario" />
        </div>
    </div>
    <div class="col-sm-2"></div>

</asp:Content>
