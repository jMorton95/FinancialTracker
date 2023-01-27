using FinancialTracker.Enumerables;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FinancialTracker.Models
{
    public class Transaction
	{
        [Required, Key]
        public int Id { get; set; }
        [Required, Precision(9, 2)]
        public double Amount { get; set; } = 0;
        [Required, Column(TypeName = "DateTime2")]
        public DateTime Date { get; set; } = DateTime.Now;
        [MaxLength(50)]
        public string Name { get; set; } = string.Empty;
        [MaxLength(50)]
        public TransactionCategory Category { get; set; }
	}
}
