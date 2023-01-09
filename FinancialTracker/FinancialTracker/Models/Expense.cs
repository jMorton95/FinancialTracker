namespace FinancialTracker.Models
{
	public class Expense : Transaction
	{
		public Expense(ExpenseCategory _expenseCategory)
		{
			Category = _expenseCategory.ToString();
		}
	}
}
