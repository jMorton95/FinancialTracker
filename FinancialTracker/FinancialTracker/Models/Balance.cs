using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace FinancialTracker.Models
{
    public class Balance
    {
        [Required, Key]
        public int Id { get; set; }
        [Required, Precision(9, 2)]
        public double BalanceFigure { get; set; }
    }
}