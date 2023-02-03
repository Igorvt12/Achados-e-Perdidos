<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iniciall.aspx.cs" Inherits="AchadosEPerdidos.Iniciall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="FolhaEstilo.css" rel="stylesheet" type="text/css" />
    <div class="container" style="position: relative; background-color: white;"></div>
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <div class="jumbotron Jumbotron">
            <h2 class="Titulo" style="text-align: center">LOGIN</h2>
            <div style="text-align: center">
                <asp:Button runat="server" ID="btnUsuario" CssClass="BotãoAzul" Text="Usuario Padrão" />
                <asp:Button runat="server" ID="btnFuncionarios" Text="Funcionário" CssClass="BotãoAzul" OnClick="btnFuncionarios_Click" />
                <br />
                <br />
                
                
                <asp:Panel runat="server" ID="pnlInfosFuncionarios" Visible="false">
                    <asp:TextBox runat="server" ID="txtFuncionarios" CssClass="TextBox" placeholder="Insira seu email"></asp:TextBox>
                    <br /><br />
                    <asp:TextBox runat="server" ID="txtSenha" CssClass="TextBox" placeholder="Insira sua senha"></asp:TextBox>
                    <br /><br />                    
                    <asp:Button runat="server" ID="btnEntrar" Text="Entrar" CssClass="BotãoAzul" />
                    <br /><br /><br />                    
                    Não possui um cadastro de funcionário?
                    <br />
                    <asp:TextBox runat="server" ID="txtCreateNomeFuncionario" CssClass="TextBox" placeholder="Insira seu nome"></asp:TextBox>
                    <br /><br />                    
                    <asp:TextBox runat="server" ID="txtCreateEmailFuncionario" CssClass="TextBox" placeholder="Insira seu email"></asp:TextBox>
                    <br /><br />                    
                    <asp:TextBox runat="server" ID="txtCreateSenhaFuncionario" CssClass="TextBox" placeholder="Insira sua senha"></asp:TextBox>
                    <br /><br />                    
                    <asp:Button runat="server" ID="btnCreateFuncionario" Text="Criar Funcionario" CssClass="BotãoRed" />
                </asp:Panel>
            
            
            </div>
        </div>
    </div>

    <div class="col-sm-3"></div>

    <div class="col-sm-3"></div>

</asp:Content>
