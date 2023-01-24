using System.ComponentModel.DataAnnotations;

namespace FinancialTracker.Models
{
	public class Transaction
	{
		[Required]
		private int _Id { get; set; }
        private int _Amount { get; set; } = 0;
        private string _Name { get; set; } = string.Empty;
        private DateTime _Date {get; set; } = DateTime.Now;
        protected string _Category { get; set; } = string.Empty;

		public Transaction(int id, int amount, string name, DateTime date)
		{
			_Id = id;
			_Amount = amount;
			_Name = name;
			_Date = date;
		}

	}
}
