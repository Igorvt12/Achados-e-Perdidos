<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarItem.aspx.cs" Inherits="AchadosEPerdidos.Processos.EditarItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    Nome do item:
    <asp:TextBox runat="server" ID="txtNomeItem"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="lblNomeItem" ForeColor="Red"></asp:Label>
    <br />
    Descrição do item:
    <asp:TextBox runat="server" ID="txtDescricao"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="lblDescricao" ForeColor="Red"></asp:Label>
    <br />
    Lugar encontrado:
    <asp:TextBox runat="server" ID="txtLugar"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="lblLugar" ForeColor="Red"></asp:Label>
    <br />
    Data encontrada:
    <asp:TextBox runat="server" ID="txtData"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="lblData" ForeColor="Red"></asp:Label>
    <br />
    Nome da pessoa que encontrou / perdeu o item:
    <asp:TextBox runat="server" ID="txtNomePessoa"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="lblNomePessoa" ForeColor="Red"></asp:Label>
    <br />
    <asp:Button runat="server" ID="btnEditarItem" Text="Atualizar Item" CssClass="btn btn-success" OnClick="btnEditarItem_Click" />

</asp:Content>
