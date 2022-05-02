<%@ Page Title="subParts" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="subParts.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="make" DataSourceID="SqlDataSource1" Width="919px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ControlStyle-ForeColor="#3399ff"/>
                <asp:BoundField DataField="partNumber" HeaderText="Part Number" SortExpression="partNumber" />
                <asp:BoundField DataField="make" HeaderText="Make" ReadOnly="True" SortExpression="make" />
                <asp:BoundField DataField="front" HeaderText="Front" SortExpression="front" />
                <asp:BoundField DataField="driversSide" HeaderText="Drivers Side" SortExpression="driversSide" />
                <asp:BoundField DataField="passengerSide" HeaderText="Passenger Side" SortExpression="passengerSide" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WCConnectionString %>" SelectCommand="SELECT * FROM [newSubPart]" UpdateCommand="UPDATE [newSubPart] set [make]= @make, [front]= @front, [driversSide]=@driversSide, [passengerSide]=@passengerSide where [partNumber]=@partNumber" DeleteCommand="delete from [newSubPart] where [partNumber]=partNumber"></asp:SqlDataSource>
    </form>

</asp:Content>

