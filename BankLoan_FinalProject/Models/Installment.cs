//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BankLoan_FinalProject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Installment
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string LoanType { get; set; }
        public string Amount { get; set; }
        public string PaymentDate { get; set; }
    }
}