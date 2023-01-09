using System.ComponentModel.DataAnnotations;

namespace FinancialTracker.Models
{
	public class Transaction
	{
		[Required]
		public int Id { get; set; }
		public int Amount { get; set; } = 0;
		public string Name { get; set; } = string.Empty;
		public DateTime date;
		public string Category { get; set; } = string.Empty;

	}
}
