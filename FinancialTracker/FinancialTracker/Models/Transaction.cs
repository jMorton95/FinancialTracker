using FinancialTracker.Enumerables;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FinancialTracker.Models
{
    public class Transaction : BaseModel
	{
        [Required, Precision(9, 2)]
        public double Amount { get; } = 0;
        [Required, Column(TypeName = "DateTime2")]
        public DateTime Date { get; } = DateTime.Now;
        [MaxLength(50)]
        public string Name { get; } = string.Empty;
        [MaxLength(50)]
        public TransactionCategory Category { get; }
	}
}
