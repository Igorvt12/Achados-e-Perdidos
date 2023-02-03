<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iniciall.aspx.cs" Inherits="AchadosEPerdidos.Iniciall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-sm-2"></div>
    <div class="col-sm-6">
        <div class="jumbotron">
            <h2>Insira seu tipo de usuário</h2>
            <asp:Button runat="server" ID="btnUsuario" CssClass="btn btn-primary" Text="Usuario Padrão" />


            <asp:Button runat="server" ID="btnFuncionarios" Text="Funcionário" CssClass="btn btn-primary" OnClick="btnFuncionarios_Click" />
            <br />
            <br />
            <asp:Panel runat="server" ID="pnlInfosFuncionarios" Visible="false">
                <asp:TextBox runat="server" ID="txtEmailFuncionarios" placeholder="Insira seu email"></asp:TextBox>

                <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" placeholder="Insira sua senha"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" ID="btnEntrar" Text="Entrar" CssClass="btn btn-success" OnClick="btnEntrar_Click" />
                <br />
                <br />
            </asp:Panel>
            <br />
            <br />
            <br />
            Não possui um cadastro de funcionário?
            <br />
            Nome:
            <asp:TextBox runat="server" ID="txtCreateNomeFuncionario" placeholder="Insira seu nome de funcionário"></asp:TextBox>
            <br />
            <br />
            Email:<asp:TextBox runat="server" ID="txtCreateEmailFuncionario" placeholder="Insira seu email"></asp:TextBox>
            <asp:Label runat="server" ID="lblEmail" ForeColor="Red"></asp:Label>
            <br />
            Senha:
            <asp:TextBox runat="server" ID="txtCreateSenhaFuncionario" TextMode="Password" placeholder="Insira sua senha"></asp:TextBox>
            <br />
            <asp:TextBox runat="server" ID="txtConfirmaSenha" TextMode="Password" placeholder="Confirme sua senha"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="btnCreateFuncionario" Text="Criar Funcionario" CssClass="btn btn-warning" OnClick="btnCreateFuncionario_Click" />
        </div>
    </div>
    <div class="col-sm-2"></div>

</asp:Content>
