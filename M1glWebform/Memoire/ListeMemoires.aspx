<%@ Page Title="Gestion des Mémoires" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeMemoires.aspx.cs" Inherits="M1glWebform.Memoire.ListeMemoires" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-content animate-in">
        <div class="page-header">
            <h1>📚 Gestion des Mémoires</h1>
            <p>Gérez et organisez vos mémoires académiques</p>
        </div>

        <div class="card animate-in" style="animation-delay: 0.2s;">
            <asp:Button ID="btnNouveau" runat="server" 
                Text="Nouveau Mémoire" 
                OnClick="btnNouveau_Click" 
                CssClass="btn-custom btn-primary" />
        </div>

        <div class="gridview-container animate-in" style="animation-delay: 0.3s;">
            <asp:GridView ID="gvMemoire" runat="server" 
                CssClass="gridview-custom"
                AutoGenerateColumns="False" 
                DataKeyNames="IdM" 
                OnRowEditing="gvMemoire_RowEditing" 
                OnRowDeleting="gvMemoire_RowDeleting"
                GridLines="None"
                BorderStyle="None">
                <Columns>
                    <asp:BoundField DataField="IdM" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="LibelleM" HeaderText="Titre" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="DateM" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                    
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button runat="server" 
                                CommandName="Edit" 
                                Text="Modifier" 
                                CssClass="btn-action btn-modifier" />
                            
                            <asp:Button runat="server" 
                                CommandName="Delete" 
                                Text="Supprimer" 
                                CssClass="btn-action btn-supprimer"
                                OnClientClick="return confirm('Êtes-vous sûr de vouloir supprimer ce mémoire ?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>