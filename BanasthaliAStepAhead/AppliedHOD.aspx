<%--<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="AppliedHOD.aspx.cs" Inherits="BanasthaliAStepAhead.AppliedHOD" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1246px" BorderColor="#3366CC" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand">
        <AlternatingRowStyle BorderColor="#0066CC" />
    <Columns>
        <asp:TemplateField HeaderText="Leave Id"  >
            <ItemTemplate>
                <asp:Label ID="LeaveId" runat="server" Text='<%# Eval("LeaveId") %>' />
            </ItemTemplate>
            </asp:TemplateField>
        <asp:BoundField HeaderText="From" DataField="From" />
        <asp:BoundField HeaderText="To" DataField="To" />
        <asp:ButtonField Text="View Status" CommandName="View" />
    </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
</asp:Content>
