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
                <asp:Label runat="server" ID="lblNomeItem" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <br />
                <h4 class="Textos">Nome</h4>
                <asp:TextBox runat="server" ID="txtNomePessoa" CssClass="TextBox" placeholder="Digite seu nome"></asp:TextBox>
                <br />
                <asp:Label runat="server" ID="lblNomePessoa" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:TextBox runat="server" ID="txtDescricao" CssClass="TextBox" placeholder="Descrição detalhada do item."></asp:TextBox>
                <br />
                <asp:Label runat="server" ID="lblDescrição" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:TextBox runat="server" ID="txtLugar" CssClass="TextBox" placeholder="Lugar que foi encontrado"></asp:TextBox>
                <br />
                <asp:Label runat="server" ID="lblLugar" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:TextBox runat="server" ID="txtData" CssClass="TextBox" placeholder="Data que foi encontrada"></asp:TextBox>
                <br />
                <asp:Label runat="server" ID="lblData" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:TextBox runat="server" ID="txtEmail" CssClass="TextBox" placeholder="Email para contato"></asp:TextBox>
                <asp:Label runat="server" ID="lblEmail" ForeColor="Red"></asp:Label>
                <br />
                <br />

                <asp:Button runat="server" ID="btnCadastrarItem" CssClass="BotãoRed" Text="Cadastrar Item" OnClick="btnCadastrarItem_Click" />

                <br />
            </div>
            <div class="col-sm-6">
                <div class="jumbotron" style="text-align: center; border-color: #b50d3a; border-style: solid; background-color: white;">
                    <h3  class="Frase">Ao inserir as informações do item ao lado, você ou a pessoa que perdeu poderá consultar os items que foram perdidos na tabela abaixo, através dos filtros.</h3>
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
            

            <asp:Button runat="server" ID="btnPesquisar" CssClass="BotãoRed" Text="Pesquisar Item" OnClick="btnPesquisar_Click" />

            <h1 class="text-center" style="color: white; font-family: Monaco">ITENS ENCONTRADOS</h1>
            
            <asp:GridView runat="server" ID="grdItens" OnRowCommand="grdItens_RowCommand" CssClass="grid" Width="100%" AutoGenerateColumns="false" AllowPaging="false">
                <Columns>
                    <asp:BoundField DataField="nomeitem" HeaderText="Nome do Item" />
                    <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                    <asp:BoundField DataField="lugar" HeaderText="Lugar" />
                    <asp:ButtonField ButtonType="Button" HeaderText="Status" ControlStyle-CssClass="btn btn-success"/>
                 </Columns>
            </asp:GridView>


        </div>

    </div>


    <br />
</asp:Content>
