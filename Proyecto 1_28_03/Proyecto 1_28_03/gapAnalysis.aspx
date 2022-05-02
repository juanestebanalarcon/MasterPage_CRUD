<%@ Page Title="Gap_Analysis" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="gapAnalysis.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-gridgAP {
            margin-left: 0px;
            font-family:Arial;
            font-size:16px;
        }
        .auto-gridgAP tbody {
            color:black;
            text-align:center;
        }
        .auto-gridgAP thead {
            color:red;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <form id="form1" runat="server">
        <br />
    <br />
    <br />
    <h1 style="font-size: 25px; font-family:Arial;color:red; text-align:center; padding:5px 0;">Gap Analysis</h1>
        <br />
        <p style="text-align:center; color:black;">The following  WC have no corresponding pieces</p>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-gridgAP" DataKeyNames="id" DataSourceID="gapAnalysysData" Height="70%" Width="100%">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" ControlStyle-ForeColor="Blue" />
                <asp:BoundField DataField="manufacturer" HeaderText="Manufacturer" SortExpression="manufacturer" ControlStyle-ForeColor="Blue" />
                <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
                <asp:BoundField DataField="startYear" HeaderText="Start Year" SortExpression="startYear" ControlStyle-ForeColor="Blue" />
                <asp:BoundField DataField="endYear" HeaderText="End Year" SortExpression="endYear" ControlStyle-ForeColor="Blue" />
                <asp:BoundField DataField="nDoors" HeaderText="No. Doors" SortExpression="nDoors" ControlStyle-ForeColor="Blue" />
                <asp:BoundField DataField="withDriver" HeaderText="With Driver" SortExpression="withDriver" ControlStyle-ForeColor="Blue" />
                <asp:BoundField DataField="withPassenger" HeaderText="With Passenger" SortExpression="withPassenger" ControlStyle-ForeColor="Blue" />
                <asp:BoundField DataField="withBoth" HeaderText="With Both" SortExpression="withBoth"  ControlStyle-ForeColor="Blue" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="gapAnalysysData" runat="server" ConnectionString="<%$ ConnectionStrings:WCConnectionString %>" SelectCommand="SELECT regWC.id, regWC.manufacturer, regWC.model, regWC.startYear, regWC.endYear, regWC.nDoors, regWC.withDriver, regWC.withPassenger, regWC.withBoth FROM regWC INNER JOIN newSubPart ON regWC.withDriver &lt;&gt; newSubPart.partNumber AND regWC.withPassenger &lt;&gt; newSubPart.partNumber AND regWC.withBoth &lt;&gt; newSubPart.partNumber"></asp:SqlDataSource>
    </form>
</asp:Content>

