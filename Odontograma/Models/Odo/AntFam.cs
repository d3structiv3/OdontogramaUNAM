//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Odontograma.Models.Odo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class AntFam
    {
        public string AntFamId { get; set; }
        public string NombreCompleto { get; set; }
        public string ParentescoId { get; set; }
        public string EnfermedadId { get; set; }
        public string PacienteId { get; set; }
    
        public virtual Enfermedad Enfermedad { get; set; }
        public virtual Paciente Paciente { get; set; }
        public virtual Parentesco Parentesco { get; set; }
    }

    public class AntFamViewModel
    {
        [Required]
        [Display(Name ="Nombre completo")]
        public string NombreCompleto { get; set; }
        [Required]
        [Display(Name = "Esa persona es tu:")]
        public string ParentescoId { get; set; }
        [Required]
        [Display(Name = "Selecciona una enfermedad")]
        public string EnfermedadId { get; set; }
    }
}
