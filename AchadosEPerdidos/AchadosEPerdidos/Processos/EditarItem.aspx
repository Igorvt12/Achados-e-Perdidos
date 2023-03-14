<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarItem.aspx.cs" Inherits="AchadosEPerdidos.Processos.EditarItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:TextBox runat="server" ID="txtEditarNome" Text="Editar o nome do item"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox runat="server" ID="txtEditarDescricao" Text="Editar o nome do item"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox runat="server" ID="txtEditarLugar" placeholder="Editar o nome do item"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox runat="server" ID="txtEditarData" placeholder="Editar o nome do item"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox runat="server" ID="txtEditarNomePessoa" placeholder="Editar o nome da pessoa que encontrou/perdeu"></asp:TextBox>
    <br />
    <br />
    <asp:Button runat="server" ID="btnEditarItem" Text="Atualizar Item" CssClass="btn btn-success" />

</asp:Content>
