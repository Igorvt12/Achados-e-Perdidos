<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarItem.aspx.cs" Inherits="AchadosEPerdidos.Processos.EditarItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Folhas de Estilos/EstiloEditar.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">

    <div class="split left">
        <div style="padding-top: 75px; text-align: center;">
            <h1 class="titulo" style="text-align: center">Editar Item</h1>
        </div>

        <div style="padding-top: 50px; text-align: center;">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8" style="text-align: left;">

                    <asp:Label CssClass="labels" runat="server" ID="lblItem" Text="Nome do item"></asp:Label>
                    <br />
                    <asp:TextBox CssClass="textbox"  runat="server" ID="txtNomeItem"></asp:TextBox>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblNomeItem" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblDescriçãoitem" Text="Descrição do item"></asp:Label>
                    <asp:TextBox CssClass="textbox" runat="server" ID="txtDescricao"></asp:TextBox>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblDescricao" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblLugarItem" Text="Lugar Encontrado:"></asp:Label>
                    <asp:TextBox CssClass="textbox" runat="server" ID="txtLugar"></asp:TextBox>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblLugar" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblDataEncontrada" Text="Data encontrada"></asp:Label>
                    <br />

                    <asp:TextBox CssClass="textbox" runat="server" ID="txtData"></asp:TextBox>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblData" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblPessoa" Text="Nome da pessoa que encontrou"></asp:Label>
                    <asp:TextBox CssClass="textbox" runat="server" ID="txtNomePessoa"></asp:TextBox>
                    <br />
                    <asp:Label CssClass="labels" runat="server" ID="lblNomePessoa" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Button runat="server" ID="btnEditarItem" Text="Atualizar Item" CssClass="BotãoRed" OnClick="btnEditarItem_Click" />
                </div>
            </div>
        </div>
    </div>

    <div class="split right CorDireita">
        
    </div>
</asp:Content>
