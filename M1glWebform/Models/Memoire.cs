using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace M1glWebform.Models
{
    public class Memoire
    {
        [Key]
        public int IdM { get; set; }

        [Required]
        [MaxLength(200)]
        public string LibelleM { get; set; } = string.Empty;

        [MaxLength(1000)]
        public string Description { get; set; }

        public DateTime DateM { get; set; }

        [Range(0, 20)]
        public double? Note { get; set; }

        [MaxLength(50)]
        public string Verdict { get; set; }
    }
}