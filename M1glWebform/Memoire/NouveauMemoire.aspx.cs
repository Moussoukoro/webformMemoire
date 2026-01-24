using M1glWebform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M1glWebform.Memoire
{
    public partial class NouveauMemoire : System.Web.UI.Page
    {
        BdGestionMemoireContext db = new BdGestionMemoireContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnregistrer_Click(object sender, EventArgs e)
        {
            Models.Memoire m = new Models.Memoire();
            //m.Verdict=txtVerdict.Text;
            m.Description = txtDescription.Text;
            m.DateM = DateTime.Parse(txtDate.Text);
            m.LibelleM = txtTitre.Text;
            //m.Note=int.Parse(txtNote.Text);
            db.Memoires.Add(m);
            db.SaveChanges();
            Server.Transfer("ListeMemoires.aspx");

        }
    }
}