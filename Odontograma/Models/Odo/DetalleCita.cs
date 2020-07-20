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

    public partial class DetalleCita
    {
        public string DetalleCitaId { get; set; }
        public string Descripcion { get; set; }
        public string Observacion { get; set; }
        public string CitaId { get; set; }
        public string EstudianteId { get; set; }
    
        public virtual Cita Cita { get; set; }
        public virtual Estudiante Estudiante { get; set; }
    }
    //detalle PAciente



    public class ObsDesViewModel
    {
        public string DetalleCitaId { get; set; }
        [Display (Name = "Descripción")]
        public string Descripcion { get; set; }
        [Display(Name = "Observación")]
        public string Observacion { get; set; }
    }

    public class ExpedienteViewModel
    {


        public string Fecha { get; set; }
        public string Hora { get; set; }
        public string ClinicaId { get; set; }
        public string PacienteId { get; set; }

    }
}
