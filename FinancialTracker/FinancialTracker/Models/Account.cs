using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace FinancialTracker.Models
{
    public class Account : BaseModel
    {
        [MaxLength(50)]
        public string Name { get; }
        [Required, Precision(11, 2)]
        public double Balance { get; }
        public List<Transaction>? TransactionHistory { get; }

      
    }
}
