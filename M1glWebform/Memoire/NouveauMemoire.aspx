<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NouveauMemoire.aspx.cs" Inherits="M1glWebform.Memoire.NouveauMemoire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <main aria-labelledby="title">
     <h2 id="title"><%: Title %>.</h2>
     <p class="text-danger">
         <asp:Literal runat="server" ID="ErrorMessage" />
     </p>
     <h4>Nouveau Memoire</h4>
     <hr />
     <asp:ValidationSummary runat="server" CssClass="text-danger" />
     <div class="row">
         <asp:Label runat="server" AssociatedControlID="txtTitre" CssClass="col-md-2 col-form-label">Titre</asp:Label>
         <div class="col-md-10">
             <asp:TextBox runat="server" ID="txtTitre" CssClass="form-control" />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitre"
                 CssClass="text-danger" ErrorMessage="Le titre du memoire est obligatoire" />
         </div>
     </div>
     <div class="row">
         <asp:Label runat="server" AssociatedControlID="txtDescription" CssClass="col-md-2 col-form-label">Description</asp:Label>
         <div class="col-md-10">
             <asp:TextBox runat="server" ID="txtDescription"  CssClass="form-control" />
            
         </div>
     </div>
     <div class="row">
         <asp:Label runat="server" AssociatedControlID="txtDate" CssClass="col-md-2 col-form-label">Date</asp:Label>
         <div class="col-md-10">
             <asp:TextBox runat="server" ID="txtDate" TextMode="Date" CssClass="form-control" />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate"
    CssClass="text-danger" ErrorMessage="La date est obligatoire" />
         </div>
     </div>
     <div class="row">
         <div class="offset-md-2 col-md-10">
             <asp:Button runat="server" OnClick="btnEnregistrer_Click" Text="Enregiistrer" CssClass="btn btn-outline-dark" />
         </div>
     </div>
 </main>
</asp:Content>
