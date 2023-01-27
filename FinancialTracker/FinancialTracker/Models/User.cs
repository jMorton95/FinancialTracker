using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FinancialTracker.Models
{
    public class User
    {
        [Required, Key]
        public int Id { get; set; }
        [Required, Column(TypeName = "DateTime2")]
        public DateTime DateOfBirth { get; set; }
        [Required, MaxLength(50)]
        public string Username { get; set; } = string.Empty;
        [Required]
        public Guid Password { get; set; }
    }
}
