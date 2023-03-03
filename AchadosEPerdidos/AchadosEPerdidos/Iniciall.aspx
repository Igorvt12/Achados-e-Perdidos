<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iniciall.aspx.cs" Inherits="AchadosEPerdidos.Iniciall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Folhas de Estilos/EstiloLogin.css" rel="stylesheet" type="text/css" />
    <div class="container" style="position: relative; background-color: white;"></div>
    <div class="col-sm-3"></div>
    <div class="col-sm-6">

        <div class="jumbotron Jumbotron">
            <h2 class="Titulo" style="text-align: center">LOGIN</h2>
            <div style="text-align: center">
                <asp:Button runat="server" ID="btnUsuario" CssClass="BotãoAzul" Text="Usuario Padrão" OnClick="btnUsuario_Click" />
                <asp:Button runat="server" ID="btnFuncionarios" Text="Funcionário" CssClass="BotãoAzul" OnClick="btnFuncionarios_Click" />
                <br />
                <br />
                
                
                <asp:Panel runat="server" ID="pnlInfosFuncionarios" Visible="false">
                    <asp:TextBox runat="server" ID="txtEmailFuncionarios" CssClass="TextBox" placeholder="Insira seu email"></asp:TextBox>
                    <br /><br />                    
                    <asp:TextBox runat="server" ID="txtSenha" CssClass="TextBox" placeholder="Insira sua senha"></asp:TextBox>
                    <br /><br />                    
                    <asp:Button runat="server" ID="btnEntrar" Text="Entrar" CssClass="BotãoAzul" OnClick="btnEntrar_Click" />
                
                    <br /><br /><br />                    
                    Não possui um cadastro de funcionário?
                    <br />
                    <asp:TextBox runat="server" ID="txtCreateNomeFuncionario" CssClass="TextBox" placeholder="Insira seu nome"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" ID="lblCreateNomeFunc" ForeColor="Red"></asp:Label>
                    <br /><br />                    
                    <asp:TextBox runat="server" ID="txtCreateEmailFuncionario" CssClass="TextBox" placeholder="Insira seu email"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" ID="lblCreateEmailFunc" CssClass="Textos"></asp:Label>
                    <br /><br />                    
                    
                    <asp:TextBox runat="server" ID="txtCreateSenhaFuncionario" CssClass="TextBox" placeholder="Insira sua senha"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" ID="lblCreateSenhaFunc" ForeColor="Red"></asp:Label>
                    <br /><br />

                    <asp:TextBox runat="server" ID="txtConfirmaSenha" CssClass="TextBox" placeholder="Confirme sua senha"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" ID="lblConfirmaSenha" ForeColor="Red"></asp:Label>
                    <br />
                    
                    <asp:Button runat="server" ID="btnCreateFuncionario" Text="Criar Funcionario" CssClass="BotãoRed" OnClick="btnCreateFuncionario_Click" />
                    
                    <br /><br />                                      
                </asp:Panel>                        
            </div>
                

        </div>
    </div>

    <div class="col-sm-3"></div>

    <div class="col-sm-3"></div>

</asp:Content>
