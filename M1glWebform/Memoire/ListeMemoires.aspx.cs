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
            gvMemoire.DataSource = db.Memoires.ToList();
            gvMemoire.DataBind();

        }

        protected void btnNouveau_Click(object sender, EventArgs e)
        {
            Server.Transfer("NouveauMemoire.aspx");
        }

        protected void gvMemoire_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}