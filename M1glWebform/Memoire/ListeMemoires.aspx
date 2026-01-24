<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeMemoires.aspx.cs" Inherits="M1glWebform.Memoire.ListeMemoires" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <table style="width: 100%;">
        <tr>
            <td>
                <asp:Button ID="btnNouveau" runat="server" Text="Nouveau" OnClick="btnNouveau_Click" CssClass="btn btn-primary" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvMemoire" runat="server" BackColor="White" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                    GridLines="Vertical" Width="100%" AutoGenerateColumns="False" 
                    DataKeyNames="IdM" OnRowEditing="gvMemoire_RowEditing" 
                    OnRowDeleting="gvMemoire_RowDeleting">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="IdM" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="LibelleM" HeaderText="Titre" />
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:BoundField DataField="DateM" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="Modifier" />
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Button" DeleteText="Supprimer" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>