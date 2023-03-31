<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroItens.aspx.cs" Inherits="AchadosEPerdidos.Processos.CadastroItens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Folhas de Estilos/EstiloCadastro.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">

    <div class="container-fluid ContainerDeCima" style="height: 85px;">
        <div class="row">
            <div class="col-sm-2">
                <h3 class="FraseContainer">Achados e Perdidos</h3>
            </div>
            <div class="col-sm-5"></div>
            <div class="col-sm-1">
                <h5><a class="FraseContainer" style="text-align: right;" href="#middle">Cadastrar um Item</a></h5>
            </div>
            <div class="col-sm-1">
                <h5><a class="FraseContainer" style="text-align: right;" href="#bottom">Pesquisar um Item</a></h5>
            </div>
            <div class="col-sm-1">
                <h5><a class="FraseContainer" style="text-align:right;" href="Contato.aspx">Entrar em Contato</a></h5>
            </div>
        </div>
    </div>


    <div class="col-12" style="background-image: url(/Imagens/ilustrativa.jpeg); height: 500px;">
        <br />
        <br />
        <br />
        <div class="col-sm-12 ">
            <div class="row ContainerImage">
                <div class="col-sm-2"></div>

                <div class="col-sm-8">
                    <h3 class="fraseimagem">Plataforma online com objetivo único de auxiliar pessoas a acharem itens pessoais que foram perdidos ou encontrados em certos estabelecimentos
                    podendo também ver o status do item, se o mesmo já foi achado ou ainda se encontra perdido. Usuários normais poderão apenas ver o status do item,
                    já os administradores poderão alterar o mesmo.
                    </h3>
                </div>
            </div>
        </div>

    </div>

    <div class="col-sm-1"></div>

    <div class="col-sm-10">
        <div class="row">
            <div class="jumbotron Jumbotron">
                <h2 class="Titulo">Cadastro de Itens</h2>
                <br />
                <h4 class="Frase">Você que perdeu ou achou algum item que não seja de sua posse, pode inserir as informações abaixo.</h4>
                <br />
                <br />
                <h4 class="Frase">Primeiro, informe se perdeu ou achou o item, e em seguida, insira as informações necessárias e clique em CADASTRAR ITEM.</h4>

            </div>
        </div>

        <div id="middle">
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-6" style="text-align: center;">
                        <asp:Button runat="server" CssClass="ItemPerdidoAchado w3-round" Text="Perdi um item" ID="btnItemPerdido" OnClick="btnItemPerdido_Click" />
                    </div>
                    <div class="col-sm-6" style="text-align: center;">
                        <asp:Button runat="server" CssClass="ItemPerdidoAchado w3-round" Text="Achei um item" ID="btnItemAchado" OnClick="btnItemAchado_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <asp:Panel Visible="false" runat="server" ID="pnlCadastro">
        <div class="col-sm-12">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <h4 style="font-weight: 900" class="Textos">Suas informações</h4>

                <div class="row">
                    <div class="col-md-12">
                        <asp:TextBox runat="server" Width="100%" ID="txtNomePessoa" CssClass="TextBox" placeholder="Digite seu nome"></asp:TextBox>
                        <br />
                        <asp:TextBox runat="server" Width="100%" ID="txtCpfPessoa" CssClass="TextBox" placeholder="Digite seu CPF (Caso de solicitação do item, deve-se apresentar o CPF.)"></asp:TextBox>
                        <asp:Label runat="server" ID="lblCpf" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                <br />
                <br />
                <h4 style="font-weight: 900" class="Textos">Informações do Item</h4>
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

                <asp:TextBox runat="server" ID="txtData" TextMode="Date" CssClass="TextBox" placeholder="Data que foi encontrada"></asp:TextBox>
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

            </div>
            <div class="col-sm-3">
            </div>


        </div>
    </asp:Panel>


    
    <div class="col-sm-12">
        <div class="jumbotron Jumbotron">

            <h3 style="font-weight: 900" class="Textos">*Encontre seu item perdido.</h3>
            <div class="row">
                <div id="bottom">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <br />
                    <h4 class="Frase">Escolha alguns dos filtros e insira alguma informação de seu item.</h4>
                    <br />
                    <asp:TextBox runat="server" ID="txtPesqNome" CssClass="TextBox" placeholder="Insira o nome para pesquisa."></asp:TextBox>
                    <asp:Label CssClass="lbl" runat="server" ID="lblPesquisar"></asp:Label>
                    <div style="text-align: center">
                        <br />
                        <asp:Button runat="server" ID="btnPesquisar" CssClass="BotãoRed" Text="Pesquisar Item" OnClick="btnPesquisar_Click" />
                    </div>
                    <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <br />
                            <br />
                            <div style="text-align: center;position:relative">
                                <asp:RadioButtonList runat="server" ID="rdoStatus" RepeatDirection="Vertical" CssClass="form-control radio">
                                    <asp:ListItem Text="Todos os itens" Value="" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Somente achados" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Somente perdidos" Value="0"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                    <br />

                    <asp:GridView runat="server" ID="grdItens" OnRowCommand="grdItens_RowCommand" OnRowDataBound="OnRowDataBound"  Visible="false"
                        OnPageIndexChanging="grdItens_PageIndexChanging" CssClass="Grid" Width="100%" AutoGenerateColumns="false" AllowPaging="false">
                        <Columns>
                             <asp:BoundField DataField="nomeitem" HeaderText="Nome do Item" />
                            <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                            <asp:BoundField DataField="lugar" HeaderText="Lugar" />
                            <asp:ButtonField ButtonType="Button" HeaderText="Status" CommandName="status" Text="Alterar Status" ControlStyle-CssClass="btn BotãoAlterar" />
                            <asp:BoundField DataField="data" HeaderText="Data de Cadastro" dataformatstring="{0:dd/MM/yyyy}"/>
                            <asp:ButtonField ButtonType="Link" HeaderText="Atualizar" CommandName="editar" ControlStyle-CssClass="btn BotãoEditar" Text="Editar" />
                            <asp:ButtonField ButtonType="Link" HeaderText="Excluir" CommandName="excluir" ControlStyle-CssClass="btn BotãoExcluir" Text="Excluir" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="container-fluid ContainerDeCima" style="height: 180px">
                <h2 class="FraseContainer" style="padding-left: 100px; padding-top: 30px; font-weight: 600">Caso seu item tenha sido Encontrado</h2>
                <h4 class="FraseContainer" style="padding-left: 100px; padding-top: 20px; font-weight: 300">Compareça até o setor principal para a retirada (Apresentar o CPF).</h4>                
            </div>
        </div>
    </div>

    <br />
</asp:Content>



