<%@ Page Title="Nouveau Mémoire" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NouveauMemoire.aspx.cs" Inherits="M1glWebform.Memoire.NouveauMemoire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-content animate-in">
        <!-- En-tête -->
        <div class="page-header">
            <h1>✍️ Nouveau Mémoire</h1>
            <p>Créez un nouveau mémoire académique</p>
        </div>

        <!-- Formulaire -->
        <div class="form-container animate-in" style="animation-delay: 0.2s;">
            <p class="text-danger">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>

            <asp:ValidationSummary runat="server" CssClass="text-danger" />

            <!-- Titre -->
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtTitre" CssClass="form-label">
                    Titre du mémoire *
                </asp:Label>
                <asp:TextBox runat="server" ID="txtTitre" CssClass="form-control" 
                    placeholder="Ex: Intelligence Artificielle et Société" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitre"
                    CssClass="text-danger" ErrorMessage="Le titre du mémoire est obligatoire" 
                    Display="Dynamic" />
            </div>

            <!-- Description -->
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtDescription" CssClass="form-label">
                    Description
                </asp:Label>
                <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" 
                    CssClass="form-control" 
                    placeholder="Décrivez brièvement le contenu du mémoire..." />
            </div>

            <!-- Date -->
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtDate" CssClass="form-label">
                    Date *
                </asp:Label>
                <asp:TextBox runat="server" ID="txtDate" TextMode="Date" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate"
                    CssClass="text-danger" ErrorMessage="La date est obligatoire" 
                    Display="Dynamic" />
            </div>

            <!-- Boutons -->
            <div class="form-group" style="margin-top: 30px;">
                <asp:Button runat="server" OnClick="btnEnregistrer_Click" 
                    Text="Enregistrer" CssClass="btn-custom btn-success" />
                <asp:Button runat="server" OnClick="btnAnnuler_Click" 
                    Text="Annuler" CssClass="btn-custom btn-secondary" 
                    CausesValidation="false" style="margin-left: 10px;" />
            </div>
        </div>
    </div>
</asp:Content>