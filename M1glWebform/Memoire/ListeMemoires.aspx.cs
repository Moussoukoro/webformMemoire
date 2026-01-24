using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using M1glWebform.Models;

namespace M1glWebform.Memoire
{
    public partial class ListeMemoires : System.Web.UI.Page
    {
        BdGestionMemoireContext db = new BdGestionMemoireContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ChargerMemoires();
            }
        }

        private void ChargerMemoires()
        {
            gvMemoire.DataSource = db.Memoires.ToList();
            gvMemoire.DataBind();
        }

        protected void btnNouveau_Click(object sender, EventArgs e)
        {
            Response.Redirect("NouveauMemoire.aspx");
        }

        protected void gvMemoire_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int idMemoire = Convert.ToInt32(gvMemoire.DataKeys[e.NewEditIndex].Value);
            Response.Redirect("ModifierMemoire.aspx?id=" + idMemoire);
        }

        protected void gvMemoire_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int idMemoire = Convert.ToInt32(gvMemoire.DataKeys[e.RowIndex].Value);
                var memoire = db.Memoires.Find(idMemoire);

                if (memoire != null)
                {
                    db.Memoires.Remove(memoire);
                    db.SaveChanges();
                    ChargerMemoires();
                }
            }
            catch (Exception ex)
            {
                // Gérer l'erreur
                Response.Write("<script>alert('Erreur lors de la suppression : " + ex.Message + "');</script>");
            }
        }
    }
}