<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="AchadosEPerdidos.Processos.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Folhas de Estilos/EstiloContato.css" rel="stylesheet" type="text/css" />
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6" style="padding-top: 1px;">
            <div class="jumbotron Jumbotron" style="text-align: center;">
                <h1 style="color: #b50d3a; font-family: 'Montserrat',sans-serif;">CONTATO</h1>
                <h4 class="fras" style="color:#b50d3a; font-family: Montserrat,sans-serif; font-weight:300; line-height:35px;">
                    Caso tenha tido algum problema relacionado ao site, insira  suas informações e o assunto
                    e sua solicitação será enviada até nós.
                </h4>
                <div style="padding-top: 20px;">
                    <asp:Label runat="server" class="labels" ID="lblNome" Text="Seu Nome"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" CssClass="textbox" ID="txtNome"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" class="labels" ID="lblEmail" Text="Seu Email"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" CssClass="textbox" ID="txtEmail"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" class="labels" ID="lblAssunto" Text="Assunto"></asp:Label>
                    <br />
                    <asp:DropDownList runat="server" CssClass="lista" ID="ddlAssunto">
                        <asp:ListItem Value="Falha no Carregamento" Text="Falha ao Carregar o Sistema"></asp:ListItem>
                        <asp:ListItem Value="Falha no Registro de Informações" Text="Falha no Registro de Informações"></asp:ListItem>
                        <asp:ListItem Value="Falha ao Consultar os Itens" Text="Falha ao Consultar os Itens"></asp:ListItem>
                        <asp:ListItem Value="Apenas contato" Text="Apenas Contato"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label runat="server" class="labels" ID="lblMensagem" Text="Sua Mensagem"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" CssClass="textboxmensagem" ID="txtMensagem"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button runat="server" ID="btnEnviar" OnClick="btnEnviar_Click" CssClass="BotãoRed" Text="Enviar" />
                </div>
            </div>
        </div>

    </div>
    <div class="col-sm-3">
    </div>


   
</asp:Content>
