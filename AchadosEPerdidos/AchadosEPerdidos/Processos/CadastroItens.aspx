<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="CadastroItens.aspx.cs"  Inherits="AchadosEPerdidos.Processos.CadastroItens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Insira as informações do item encontrado/perdido</h2>
    <div class="col-sm-1"></div>
    <div class="col-sm-9">
        <div class="jumbotron Jumbotron">
            <h2 class="Titulo">Cadastro de Itens</h2>
            <br />
            <h4 class="Frase">Você que perdeu ou achou algum item que não seja de sua posse, pode inserir as informações abaixo.</h4>
            <br />
            <h4 class="Frase">Insira as informações necessárias e clique em CADASTRAR ITEM.</h4>
                                                
            <br><br />
            <h3 class="Textos">* Cadastro do Item</h3>
            
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
            <asp:Button runat="server" ID="btnCadastrarItem" CssClass="BotãoRed" Text="Cadastrar Item" OnClick="btnCadastrarItem_Click" />

                                        
            
            <!--Começar a fazer a Barra de Pesquisa-->



        </div>
    </div>      

    <br />    
</asp:Content>
