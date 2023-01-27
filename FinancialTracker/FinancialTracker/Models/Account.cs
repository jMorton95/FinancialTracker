using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace FinancialTracker.Models
{
    public class Account
    {
        [Required, Key]
        public int Id { get; set; }
        [MaxLength(50)]
        public string? Name { get; set; }
        [Required, Precision(11, 2)]
        public double Balance { get; set; }
        public List<Transaction>? TransactionHistory { get; set; }

      
    }
}
