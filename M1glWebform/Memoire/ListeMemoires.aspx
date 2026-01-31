<%@ Page Title="Liste des Mémoires" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeMemoires.aspx.cs" Inherits="M1glWebform.Memoire.ListeMemoires" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1 class="mt-4">Liste des Mémoires</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a runat="server" href="~/">Tableau de bord</a></li>
        <li class="breadcrumb-item active">Mémoires</li>
    </ol>
    
    <!-- Bouton Nouveau -->
    <div class="mb-4">
        <asp:Button ID="btnNouveau" runat="server" 
            Text="➕ Nouveau Mémoire" 
            OnClick="btnNouveau_Click" 
            CssClass="btn btn-primary" />
    </div>
    
    <!-- Tableau des mémoires -->
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Tous les mémoires
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <asp:GridView ID="gvMemoire" runat="server" 
                    CssClass="table table-striped table-bordered table-hover"
                    AutoGenerateColumns="False" 
                    DataKeyNames="IdM" 
                    OnRowEditing="gvMemoire_RowEditing" 
                    OnRowDeleting="gvMemoire_RowDeleting"
                    GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="IdM" HeaderText="ID" ReadOnly="True" ItemStyle-Width="60px" />
                        <asp:BoundField DataField="LibelleM" HeaderText="Titre" />
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:BoundField DataField="DateM" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-Width="120px" />
                        
                        <asp:TemplateField HeaderText="Actions" ItemStyle-Width="200px">
                            <ItemTemplate>
                                <asp:Button runat="server" 
                                    CommandName="Edit" 
                                    Text="✏️ Modifier" 
                                    CssClass="btn btn-sm btn-info me-1" />
                                
                                <asp:Button runat="server" 
                                    CommandName="Delete" 
                                    Text="🗑️ Supprimer" 
                                    CssClass="btn btn-sm btn-danger"
                                    OnClientClick="return confirm('Êtes-vous sûr de vouloir supprimer ce mémoire ?');" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle CssClass="bg-dark text-white" />
                </asp:GridView>
            </div>
        </div>
    </div>
    
</asp:Content>