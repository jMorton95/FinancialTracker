using System.ComponentModel.DataAnnotations;

namespace FinancialTracker.Models
{
    public class BaseModel
    {
        [Required]
        public int Id { get; }
    }
}
