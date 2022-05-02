<%@ Page Title="WC-Home" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
 WC - Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
   #btnSearch {
       color:white;
       background-color:darkslategrey;
       border-radius:10px;
   }
        #form1 {
            height: 494px;
            margin-top: 71px;
        }
        #textSearch {
            border-radius:10px;
        }
        .theadHome {
            padding: 0 15px;
            font-size:16px;


        }
        .auto-style1 {
            margin-top: 80px;
            margin-bottom: 70px;
            font-family:Verdana;
            margin-left: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <br />
        <br />
        <asp:TextBox runat="server" ID="txtSearch" ForeColor="Blue" Font-Size="16px"></asp:TextBox> &nbsp;&nbsp; <asp:Button ID="btnSearch" BackColor="#33cc33" runat="server" ForeColor="White" Text="Search" Width="114px" OnClick="btnSearch_Click" />
        <br />

        <asp:GridView ID="tableWC_read" runat="server" CssClass="auto-style1" Height="70%" Width="100%" AutoGenerateColumns="False" BorderColor="Red" BorderStyle="Solid" DataKeyNames="id" ForeColor="Black" HorizontalAlign="Center" RowHeaderColumn="red" DataSourceID="dataSourceWC">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" ControlStyle-ForeColor="Red" InsertVisible="False">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="manufacturer" HeaderText="Manufacturer" SortExpression="manufacturer" ControlStyle-ForeColor="Red">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" ControlStyle-ForeColor="Red">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="startYear" HeaderText="Start Year" SortExpression="startYear" ControlStyle-ForeColor="Red">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="endYear" HeaderText="End Year" SortExpression="endYear" ControlStyle-ForeColor="Red">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="nDoors" HeaderText="No. Doors" SortExpression="nDoors" ControlStyle-ForeColor="Red">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="withDriver" HeaderText="With Driver" SortExpression="withDriver" ControlStyle-ForeColor="Red">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="withPassenger" HeaderText="With Passenger" SortExpression="withPassenger" ControlStyle-ForeColor="Red">
<ControlStyle ForeColor="Red"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="withBoth" HeaderText="With Both" SortExpression="withBoth" />
        </Columns>
        <HeaderStyle BackColor="White" ForeColor="Red" />
    </asp:GridView>
        <asp:SqlDataSource ID="dataSourceWC" runat="server" ConnectionString="<%$ ConnectionStrings:WCConnectionString %>" SelectCommand="SELECT * FROM [dbo].[regWC]" UpdateCommand="update [dbo].[regWC] set [manufacturer] = @manufacturer, [model]=@model,[startYear]=@startYear,[endYear]=@endYear,[nDoors]=@nDoors,[withDriver]=@withDriver,[withPassenger]=@withPassenger,[withBoth]=@withBoth where [id] = @id" DeleteCommand="delete from [dbo].[regWC] where [id]=id"></asp:SqlDataSource>
    </form>


</asp:Content>

