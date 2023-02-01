<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroItens.aspx.cs" Inherits="AchadosEPerdidos.Processos.CadastroItens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Insira as informações do item encontrado/perdido</h2>

    <div class="col-sm-6">
        <div class="jumbotron">
            
            <asp:TextBox runat="server" ID="txtNomeItem" placeholder="Digite o nome/tipo do item"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtNomePessoa" placeholder="Digite seu nome"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtDescrição" placeholder="Descrição detalhada do item."></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtLugar" placeholder="Lugar que foi encontrado"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtData" placeholder="Data que foi encontrada"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtEmail" placeholder="Email para contato"></asp:TextBox>
            <br /><br />
            <asp:Button runat="server" ID="btnCadastrarItem" CssClass="btn btn-success" Text="Cadastrar Item" OnClick="btnCadastrarItem_Click" />
        </div>
    </div>

    <div class="col-sm-3">
        <div class="jumbotron">
            <h2>Aqui será inserido algumas informações.</h2>
        </div>
    </div>


    <div class="col-sm-3"></div>




</asp:Content>
