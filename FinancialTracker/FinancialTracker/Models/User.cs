using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FinancialTracker.Models
{
    public class User : BaseModel
    {
        [Required, Column(TypeName = "DateTime2")]
        public DateTime DateOfBirth { get; }
        [Required, MaxLength(50)]
        public string Username { get; } = string.Empty;
        [Required]
        public Guid Password { get; }
    }
}
