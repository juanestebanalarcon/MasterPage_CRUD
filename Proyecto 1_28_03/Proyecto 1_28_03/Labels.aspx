<%@ Page Title="Labels" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Labels.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 19px;
            width: 612px;
        }
        .textAreaPrint {
            height: 286px;
            width: 442px;
            margin-left: 0px;
            color:gray;

        }
        .auto-style3 {
            height: 496px;
        }
        .auto-style4 {
            width: 98px;
        }
        .auto-style5 {
            height: 19px;
            width: 98px;
        }
        .auto-style7 {
            width: 580px;
        }
        .auto-style8 {
            width: 612px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <form id="formLabels" runat="server" class="auto-style3">
        <br />
        <br />
        <br />
        <br />
    <table border="2" style="border-spacing:2px; background-color:dodgerblue; " class="auto-style7">
            <tr>
                <td style="color:white; font-size:16px; font-family:Arial;" class="auto-style4">Order #:</td>
                <td class="auto-style8"> <asp:TextBox runat="server" ID="txtOrder"></asp:TextBox> </td>
            </tr>
            <tr>
                <td style="color:white; font-size:16px; font-family:Arial;" class="auto-style4">Part #:</td>
                <td class="auto-style8"> <asp:TextBox runat="server" ID="TxtPart"></asp:TextBox> </td>
            </tr>
            <tr>
                <td style="color:white; font-size:16px; font-family:Arial;" class="auto-style4">Color:</td>
                <td class="auto-style8">  <asp:RadioButton runat="server" Text="Black" BackColor="#000000"  ForeColor="White" ID="black" value="Black"/>&nbsp;&nbsp;<asp:RadioButton runat="server" Text="Brown" BackColor="#7d5542"  ForeColor="White" value="Brown" ID="brown"/>&nbsp;&nbsp;<asp:RadioButton runat="server" Text="Almond" BackColor="#cc0000"  ForeColor="White" ID="Almond" value="Almond"/>  &nbsp;&nbsp;<asp:RadioButton runat="server" Text="Green" BackColor="#009933"  ForeColor="White" ID="Green" value="green"/>  &nbsp;&nbsp;<asp:RadioButton runat="server" Text="Tan" BackColor="#EFDECD"  ForeColor="White" ID="Tan" value="Tan"/>&nbsp;&nbsp;<asp:RadioButton runat="server" Text="Gray" BackColor="#c0c0c0"  ForeColor="White" ID="Gray" value="Gray"/> &nbsp;&nbsp;<asp:RadioButton runat="server" Text="Burgundy" BackColor="#800000"  ForeColor="White" value="Burgundy" ID="Burgundy"/> </td>
            </tr>
        <tr>
            <td class="auto-style5">
                <br />
            </td>
            <td class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button runat="server" Text="Print" ID="btnPrint" CssClass="printButton" BackColor="#18F900" ForeColor="White" Height="24px" Width="48px" OnClick="btnPrint_Click" />
            </td>
   
        </table>
    &nbsp;<asp:TextBox ID="printArea" runat="server" Height="286px" TextMode="MultiLine" Width="563px"></asp:TextBox>
    </form>
    <br />
    <br />
 </asp:Content>

