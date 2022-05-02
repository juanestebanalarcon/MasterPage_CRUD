<%@ Page Title="New WC" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="newWC.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <br />
    <br />
    <h2 style="color:crimson; font-size:20px;font-family:Arial; text-align:center;">New WC - (Agregar registro nuevo)</h2>
    <br />
    <br />
    <form id="new_WC" runat="server">
        <table border="0">
            <tr>
                <td>  <asp:Label runat="server" Text="Manufacturer"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="manufacturerTxt"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  <asp:Label runat="server" Text="Model"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="modelTXT"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  <asp:Label runat="server" Text="Start Year"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="TXTstartY"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  <asp:Label runat="server" Text="End Year"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="endYtxt"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  <asp:Label runat="server" Text="No. Doors"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="nDoorsTXT"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  <asp:Label runat="server" Text="With Driver"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="wDriverTxt"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  <asp:Label runat="server" Text="With Passenger"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="wPassengerTxt"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>  <asp:Label runat="server" Text="With Both"></asp:Label> </td>
                <td> <asp:TextBox runat="server" ID="wBothTxt"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td colspan="2"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button runat="server" Text="Save" ID="btnSaveWC" OnClick="btnSaveWC_Click" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

