using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace M1glWebform.Models
{
    public class BdGestionMemoireContext:DbContext
    {
        public BdGestionMemoireContext() : base("ConnGestionMemoire") { }
        public DbSet<Memoire> Memoires { get; set; }
    }
}