<%@ Page Title="Tableau de bord" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="M1glWebform._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1 class="mt-4">Tableau de bord</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Accueil</li>
    </ol>
    
    <!-- ========== CARDS STATISTIQUES ========== -->
    <div class="row">
        <div class="col-xl-3 col-md-6">
            <div class="card bg-primary text-white mb-4">
                <div class="card-body">
                    <h3 class="mb-0">
                        <asp:Label ID="lblTotalMemoires" runat="server" Text="0"></asp:Label>
                    </h3>
                    <small>Total Mémoires</small>
                </div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" runat="server" href="~/Memoire/ListeMemoires.aspx">Voir détails</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
        
        <div class="col-xl-3 col-md-6">
            <div class="card bg-warning text-white mb-4">
                <div class="card-body">
                    <h3 class="mb-0">5</h3>
                    <small>En cours</small>
                </div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="#">Voir détails</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
        
        <div class="col-xl-3 col-md-6">
            <div class="card bg-success text-white mb-4">
                <div class="card-body">
                    <h3 class="mb-0">12</h3>
                    <small>Terminés</small>
                </div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="#">Voir détails</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
        
        <div class="col-xl-3 col-md-6">
            <div class="card bg-danger text-white mb-4">
                <div class="card-body">
                    <h3 class="mb-0">25</h3>
                    <small>Étudiants</small>
                </div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="#">Voir détails</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- ========== DERNIERS MÉMOIRES ========== -->
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Derniers mémoires ajoutés
        </div>
        <div class="card-body">
            <asp:GridView ID="gvDerniersMemoires" runat="server" 
                CssClass="table table-striped table-bordered table-hover"
                AutoGenerateColumns="False"
                GridLines="None">
                <Columns>
                    <asp:BoundField DataField="IdM" HeaderText="ID" ItemStyle-Width="60px" />
                    <asp:BoundField DataField="LibelleM" HeaderText="Titre" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="DateM" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-Width="120px" />
                </Columns>
                <HeaderStyle CssClass="bg-dark text-white" />
            </asp:GridView>
        </div>
    </div>
    
    <!-- ========== SECTIONS D'INFORMATION ========== -->
    <div class="row">
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-header bg-primary text-white">
                    <i class="fas fa-rocket me-2"></i>Démarrage rapide
                </div>
                <div class="card-body">
                    <p>Système de gestion des mémoires académiques permettant de suivre et organiser les travaux de recherche.</p>
                    <a runat="server" href="~/Memoire/ListeMemoires.aspx" class="btn btn-primary btn-sm">
                        <i class="fas fa-arrow-right me-2"></i>Voir les mémoires
                    </a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-header bg-success text-white">
                    <i class="fas fa-book me-2"></i>Gestion complète
                </div>
                <div class="card-body">
                    <p>Créez, modifiez et supprimez des mémoires facilement grâce à une interface moderne et intuitive.</p>
                    <a runat="server" href="~/Memoire/NouveauMemoire.aspx" class="btn btn-success btn-sm">
                        <i class="fas fa-plus me-2"></i>Nouveau mémoire
                    </a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-header bg-info text-white">
                    <i class="fas fa-chart-bar me-2"></i>Statistiques
                </div>
                <div class="card-body">
                    <p>Suivez l'évolution de vos mémoires avec des statistiques détaillées et des rapports personnalisés.</p>
                    <a href="#" class="btn btn-info btn-sm">
                        <i class="fas fa-chart-line me-2"></i>Voir les stats
                    </a>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>