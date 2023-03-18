<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iniciall.aspx.cs" Inherits="AchadosEPerdidos.Iniciall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Folhas de Estilos/EstiloLogin.css" rel="stylesheet" type="text/css" />
    
<!------------------P A R T E     D A     E S Q U E R D A --------------------->

    <div class="split left" style="background-image: url(/Imagens/login3.jpg)">
        <div style="width:100%; height: 100%" class="fundo">
            <div class="centered ">                
            </div>
        </div>
    </div>

<!--------------------------------------------------------------------------->

<!------------------P A R T E     D A     D I R E I T A --------------------->

    <div class="split right">
        <div style="padding-top: 75px; text-align: center;">
            <h1 class="titulo" style="text-align: center">LOGIN</h1>
        </div>
        <div style="padding-top: 50px; text-align: center;">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8" style="text-align: center;">
                    <asp:Button runat="server" ID="btnUsuario" CssClass="BotãoVermelho" Text="Usuario Padrão" OnClick="btnUsuario_Click" />
                    <asp:Button runat="server" ID="btnFuncionarios" Text="Funcionário" CssClass="BotãoVermelho" OnClick="btnFuncionarios_Click" />
                    <br />
                    <br />
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8" style="text-align: center;">
                <asp:Panel runat="server" ID="pnlInfosFuncionarios" Visible="false">
                    <div style="padding-left: 63px">
                        <asp:TextBox runat="server" ID="txtEmailFuncionarios" CssClass="TextBox" placeholder="Insira seu email"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox runat="server" ID="txtSenha" CssClass="TextBox" placeholder="Insira sua senha"></asp:TextBox>
                        <br />
                        <asp:Button runat="server" ID="btnEntrar" Text="Entrar" CssClass="BotãoEntrar" OnClick="btnEntrar_Click" />
                        <br />
                        <br />
                        <asp:Label runat="server" CssClass="teste">Não possui um cadastro de funcionário?</asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCreateNomeFuncionario" CssClass="TextBox" placeholder="Insira seu nome"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" ID="lblCreateNomeFunc" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCreateEmailFuncionario" CssClass="TextBox" placeholder="Insira seu email"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" ID="lblCreateEmailFunc" CssClass="Textos"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCreateSenhaFuncionario" CssClass="TextBox"  placeholder="Insira sua senha"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" ID="lblCreateSenhaFunc" ForeColor="Red"></asp:Label>
                        <br />                        
                        <asp:TextBox runat="server" ID="txtConfirmaSenha" CssClass="TextBox" placeholder="Confirme sua senha"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" ID="lblConfirmaSenha" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button runat="server" ID="btnCreateFuncionario" Text="Criar Funcionario" CssClass="BotãoEntrar" OnClick="btnCreateFuncionario_Click" />
                    </div>
                    <br />
                    <br />
                </asp:Panel>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>

<!--------------------------------------------------------------------------->
</asp:Content>
