<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroItens.aspx.cs" Inherits="AchadosEPerdidos.Processos.CadastroItens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Insira as informações do item encontrado/perdido</h2>
    <div class="col-sm-1"></div>
    <div class="col-sm-10">
        <div class="jumbotron Jumbotron">
            <h2 class="Titulo">Cadastro de Itens</h2>
            <br />
            <h4 class="Frase">Você que perdeu ou achou algum item que não seja de sua posse, pode inserir as informações abaixo.</h4>
            <br />
            <h4 class="Frase">Insira as informações necessárias e clique em CADASTRAR ITEM.</h4>
            <br>
            <br />
            <h3 class="Textos">* Cadastro do Item</h3>
            <div class="col-sm-6">
                <br />
                <h4 class="Textos">Nome do Item</h4>
                <asp:TextBox runat="server" ID="txtNomeItem" CssClass="TextBox" placeholder="Digite o nome/tipo do item"></asp:TextBox>
                <br />
                <br />
                <br />
                <h4 class="Textos">Nome</h4>
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
                <asp:Label runat="server" ID="lblEmail" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Button runat="server" ID="btnCadastrarItem" CssClass="BotãoRed" Text="Cadastrar Item; sc"  OnClick="btnCadastrarItem_Click" />
                <br />
            </div>
            <div class="col-sm-6">
                <div class="jumbotron" style="text-align: center; border-color: #b50d3a; border-style: solid; background-color: white;">
                    <h3 class="Frase">Ao inserir as informações do item ao lado, você ou a pessoa que perdeu poderá consultar os items que foram perdidos na tabela abaixo, através dos filtros.</h3>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="jumbotron Jumbotron">
            <h3 class="Textos">*Encontre seu item perdido.</h3>

            <br />
            <h4 class="Frase">Escolha alguns dos filtros e insira alguma informação de seu item.</h4>
            <br />
            <asp:TextBox runat="server" ID="txtPesqNome" CssClass="TextBox" placeholder="Insira o nome para pesquisa."></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtPesqDescrição" CssClass="TextBox" placeholder="Insira a descrição para pesquisa."></asp:TextBox>
            <br />
            <br />
            <asp:TextBox runat="server" ID="txtPesqLugar" CssClass="TextBox" placeholder="Insira o lugar para pesquisa."></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="btnPesquisar" CssClass="BotãoRed" Text="Pesquisar Item" />
        </div>

    </div>

    <br />
</asp:Content>
