using M1glWebform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M1glWebform.Memoire
{
    public partial class ModifierMemoire : System.Web.UI.Page
    {
        BdGestionMemoireContext db = new BdGestionMemoireContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int idMemoire = Convert.ToInt32(Request.QueryString["id"]);
                    ChargerMemoire(idMemoire);
                }
                else
                {
                    Response.Redirect("ListeMemoires.aspx");
                }
            }
        }

        private void ChargerMemoire(int id)
        {
            var memoire = db.Memoires.Find(id);

            if (memoire != null)
            {
                hfIdMemoire.Value = memoire.IdM.ToString();
                txtTitre.Text = memoire.LibelleM;
                txtDescription.Text = memoire.Description;
                txtDate.Text = memoire.DateM.ToString("yyyy-MM-dd");
            }
            else
            {
                Response.Redirect("ListeMemoires.aspx");
            }
        }

        protected void btnModifier_Click(object sender, EventArgs e)
        {
            try
            {
                int idMemoire = Convert.ToInt32(hfIdMemoire.Value);
                var memoire = db.Memoires.Find(idMemoire);

                if (memoire != null)
                {
                    memoire.LibelleM = txtTitre.Text;
                    memoire.Description = txtDescription.Text;
                    memoire.DateM = DateTime.Parse(txtDate.Text);

                    db.SaveChanges();
                    Response.Redirect("ListeMemoires.aspx");
                }
            }
            catch (Exception ex)
            {
                ErrorMessage.Text = "Erreur lors de la modification : " + ex.Message;
            }
        }

        protected void btnAnnuler_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListeMemoires.aspx");
        }
    }
}