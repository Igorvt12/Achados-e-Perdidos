<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="CadastroItens.aspx.cs"  Inherits="AchadosEPerdidos.Processos.CadastroItens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Insira as informações do item encontrado/perdido</h2>

    <div class="col-sm-6">
        <div class="jumbotron Jumbotron">
            <h2 class="Titulo">Cadastro de Itens que foram achados ou perdidos.</h2>
            <br />
            <p>TEXTO TEXTO TEXTO</p>
            <span class="Textos">* Cadastro do Item</span>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtNomeItem" CssClass="TextBox" placeholder="Digite o nome/tipo do item"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtNomePessoa" CssClass="TextBox" placeholder="Digite seu nome"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtDescrição" CssClass="TextBox" placeholder="Descrição detalhada do item."></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtLugar" CssClass="TextBox" placeholder="Lugar que foi encontrado"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtData" CssClass="TextBox" placeholder="Data que foi encontrada"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtEmail" CssClass="TextBox" placeholder="Email para contato"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="btnCadastrarItem" CssClass="Botão" Text="Cadastrar Item" OnClick="btnCadastrarItem_Click" />
        </div>
    </div>

    <div class="col-sm-3">
        <div class="jumbotron">
            <h2>Aqui será inserido algumas informações.</h2>
        </div>
    </div>


    <div class="col-sm-3"></div>




</asp:Content>
