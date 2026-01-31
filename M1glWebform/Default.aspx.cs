using System;
using System.Linq;
using System.Web.UI;
using M1glWebform.Models;

namespace M1glWebform
{
    public partial class _Default : Page
    {
        BdGestionMemoireContext db = new BdGestionMemoireContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ChargerStatistiques();
                ChargerDerniersMemoires();
            }
        }

        private void ChargerStatistiques()
        {
            try
            {
                // Compter le nombre total de mémoires
                int total = db.Memoires.Count();
                lblTotalMemoires.Text = total.ToString();
            }
            catch (Exception ex)
            {
                lblTotalMemoires.Text = "0";
            }
        }

        private void ChargerDerniersMemoires()
        {
            try
            {
                // Récupérer les 5 derniers mémoires
                var derniersMemoires = db.Memoires
                    .OrderByDescending(m => m.DateM)
                    .Take(5)
                    .ToList();

                gvDerniersMemoires.DataSource = derniersMemoires;
                gvDerniersMemoires.DataBind();
            }
            catch (Exception ex)
            {
                // En cas d'erreur, on laisse le tableau vide
            }
        }
    }
}