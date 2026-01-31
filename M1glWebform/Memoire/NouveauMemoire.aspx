<%@ Page Title="Nouveau Mémoire" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NouveauMemoire.aspx.cs" Inherits="M1glWebform.Memoire.NouveauMemoire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1 class="mt-4">Nouveau Mémoire</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a runat="server" href="~/">Tableau de bord</a></li>
        <li class="breadcrumb-item"><a runat="server" href="~/Memoire/ListeMemoires.aspx">Mémoires</a></li>
        <li class="breadcrumb-item active">Nouveau</li>
    </ol>
    
    <div class="row">
        <div class="col-lg-8">
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-plus-circle me-1"></i>
                    Informations du mémoire
                </div>
                <div class="card-body">
                    
                    <p class="text-danger">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />

                    <div class="mb-3">
                        <label class="form-label fw-bold">
                            <i class="fas fa-heading me-2"></i>Titre du mémoire *
                        </label>
                        <asp:TextBox runat="server" ID="txtTitre" CssClass="form-control" 
                            placeholder="Ex: Intelligence Artificielle et Société" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitre"
                            CssClass="text-danger small" ErrorMessage="Le titre est obligatoire" 
                            Display="Dynamic" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">
                            <i class="fas fa-align-left me-2"></i>Description
                        </label>
                        <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" 
                            Rows="4" CssClass="form-control" 
                            placeholder="Décrivez brièvement le contenu..." />
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">
                            <i class="fas fa-calendar me-2"></i>Date *
                        </label>
                        <asp:TextBox runat="server" ID="txtDate" TextMode="Date" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate"
                            CssClass="text-danger small" ErrorMessage="La date est obligatoire" 
                            Display="Dynamic" />
                    </div>

                    <div class="mt-4">
                        <asp:Button runat="server" OnClick="btnEnregistrer_Click" 
                            Text="💾 Enregistrer" CssClass="btn btn-success" />
                        <asp:Button runat="server" OnClick="btnAnnuler_Click" 
                            Text="❌ Annuler" CssClass="btn btn-secondary ms-2" 
                            CausesValidation="false" />
                    </div>

                </div>
            </div>
        </div>
    </div>
    
</asp:Content>