<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifierMemoire.aspx.cs" Inherits="M1glWebform.Memoire.ModifierMemoire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <main aria-labelledby="title">
     <h2 id="title">Modifier Mémoire</h2>
     <p class="text-danger">
         <asp:Literal runat="server" ID="ErrorMessage" />
     </p>
     <hr />
     <asp:ValidationSummary runat="server" CssClass="text-danger" />
     
     <asp:HiddenField ID="hfIdMemoire" runat="server" />
     
     <div class="row mb-3">
         <asp:Label runat="server" AssociatedControlID="txtTitre" CssClass="col-md-2 col-form-label">Titre</asp:Label>
         <div class="col-md-10">
             <asp:TextBox runat="server" ID="txtTitre" CssClass="form-control" />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitre"
                 CssClass="text-danger" ErrorMessage="Le titre du mémoire est obligatoire" />
         </div>
     </div>
     
     <div class="row mb-3">
         <asp:Label runat="server" AssociatedControlID="txtDescription" CssClass="col-md-2 col-form-label">Description</asp:Label>
         <div class="col-md-10">
             <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" Rows="4" CssClass="form-control" />
         </div>
     </div>
     
     <div class="row mb-3">
         <asp:Label runat="server" AssociatedControlID="txtDate" CssClass="col-md-2 col-form-label">Date</asp:Label>
         <div class="col-md-10">
             <asp:TextBox runat="server" ID="txtDate" TextMode="Date" CssClass="form-control" />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate"
                 CssClass="text-danger" ErrorMessage="La date est obligatoire" />
         </div>
     </div>
     
     <div class="row">
         <div class="offset-md-2 col-md-10">
             <asp:Button runat="server" OnClick="btnModifier_Click" Text="Modifier" CssClass="btn btn-primary" />
             <asp:Button runat="server" OnClick="btnAnnuler_Click" Text="Annuler" CssClass="btn btn-secondary" CausesValidation="false" />
         </div>
     </div>
 </main>
</asp:Content>
