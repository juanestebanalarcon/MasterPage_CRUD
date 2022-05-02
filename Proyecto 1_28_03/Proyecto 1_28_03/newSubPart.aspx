<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="newSubPart.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
        <h2 style="color:blue;text-align:center;font-size:20px;font-family:Arial, Helvetica, sans-serif;">New Sub Part</h2>
        <br />
        <br />
        <table border="0">
            <tr>
     <td><asp:Label runat="server" Text="Part Number" ></asp:Label></td>
      <td><asp:TextBox runat="server" ID="TXTpartNumber"></asp:TextBox></td>
            </tr>
            <tr>
  <td>  <asp:Label runat="server" Text="Make"></asp:Label></td>
  <td>  <asp:TextBox runat="server" ID="TXTmake"></asp:TextBox></td>
            </tr>
            <tr>
   <td> <asp:Label runat="server" Text="Front"></asp:Label> </td>
   <td> <asp:TextBox runat="server" ID="TXTfront"></asp:TextBox> </td>
            </tr>
            <tr>
 <td>   <asp:Label runat="server" Text="Drivers Side"></asp:Label> </td>
<td>    <asp:TextBox runat="server" ID="TXTdriversSide"></asp:TextBox> </td>
            </tr>
            <tr>
<td>    <asp:Label runat="server" Text="Passenger Side"></asp:Label></td>
<td>    <asp:TextBox runat="server" ID="TXTpassengerSide"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button runat="server" Text="Save" OnClick="btnSaveSubPart_Click" ID="btnSaveSubPart" style="height: 26px"/>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

