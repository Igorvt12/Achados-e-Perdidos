<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroItens.aspx.cs" Inherits="AchadosEPerdidos.Processos.CadastroItens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Folhas de Estilos/EstiloCadastro.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <div class="container-fluid ContainerDeCima" style="width: 100%;">
        <h2 class="FraseContainer ">Achados e Perdidos</h2>
    </div>

    <div class="col-sm-1"></div>
    <div class="col-sm-10">
        <div class="jumbotron Jumbotron">
            <h2 class="Titulo">Cadastro de Itens</h2>
            <br />
            <h4 class="Frase">Você que perdeu ou achou algum item que não seja de sua posse, pode inserir as informações abaixo.</h4>
            <br />
            <h4 class="Frase">Insira as informações necessárias e clique em CADASTRAR ITEM.</h4>
        </div>

        <div class="col-sm-12">
            <div class="col-sm-6">
                <asp:Button runat="server" CssClass="ItemPerdidoAchado w3-round" Text="Perdi um item" ID="btnItemPerdido" />
            </div>
            <div class="col-sm-6">
                <asp:Button runat="server" CssClass="ItemPerdidoAchado w3-round" Text="Achei um item" ID="btnItemAchado" />
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <h4 class="Textos">Suas informações</h4>

            <div class="row">
                <div class="col-md-12">
                    <asp:TextBox runat="server" Width="100%" ID="txtNomePessoa" CssClass="TextBox" placeholder="Digite seu nome"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <h4 class="Textos">Informações do Item</h4>
            <asp:TextBox runat="server" ID="txtNomeItem" CssClass="TextBox" placeholder="Digite o nome/tipo do item"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblNomeItem" ForeColor="Red"></asp:Label>
            <asp:Label runat="server" ID="lblNomePessoa" ForeColor="Red"></asp:Label>
            <br />

            <asp:TextBox runat="server" ID="txtDescricao" CssClass="TextBox" placeholder="Descrição detalhada do item."></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblDescrição" ForeColor="Red"></asp:Label>
            <br />

            <asp:TextBox runat="server" ID="txtLugar" CssClass="TextBox" placeholder="Lugar que foi encontrado"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblLugar" ForeColor="Red"></asp:Label>
            <br />

            <asp:TextBox runat="server" ID="txtData" CssClass="TextBox" placeholder="Data que foi encontrada"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblData" ForeColor="Red"></asp:Label>
            <br />

            <asp:TextBox runat="server" ID="txtEmail" CssClass="TextBox" placeholder="Email para contato"></asp:TextBox>
            <asp:Label runat="server" ID="lblEmail" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <div style="text-align: center">
                <asp:Button runat="server" ID="btnCadastrarItem" CssClass="BotãoRed" Text="Cadastrar Item" OnClick="btnCadastrarItem_Click" />
            </div>
            <br />
        </div>
        <div class="col-sm-3">
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
           
            <div class="col-sm-12">
                <asp:RadioButtonList runat="server" ID="rdoStatus" RepeatDirection="Vertical" CssClass="form-control radio">
                    <asp:ListItem Text="Todos os itens" Value="" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Somente achados" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Somente perdidos" Value="0"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <br />
            <br />
            <asp:Button runat="server" ID="btnPesquisar" CssClass="BotãoRed" Text="Pesquisar Item" OnClick="btnPesquisar_Click" />
            <asp:Label runat="server" ID="lblPesquisar" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <h1 class="text-center" style="color: white; font-family: Monaco">ITENS ENCONTRADOS</h1>

            <asp:GridView runat="server" ID="grdItens" OnRowCommand="grdItens_RowCommand" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="grdItens_PageIndexChanging" CssClass="Grid" Width="100%" AutoGenerateColumns="false" AllowPaging="false">
                <Columns>
                    <asp:BoundField DataField="nomeitem" HeaderText="Nome do Item" />
                    <asp:BoundField DataField="descricao" HeaderText="Descrição" />

                    <asp:BoundField DataField="lugar" HeaderText="Lugar" />
                    <asp:ButtonField ButtonType="Button" CommandName="status" Text="Alterar Status para encontrado" ControlStyle-CssClass="btn btn-success" />
                    <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="btn btn-warning" Text="Editar" />
                    <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-danger" Text="Excluir" />

                </Columns>

            </asp:GridView>



        </div>

    </div>


    <br />
</asp:Content>
