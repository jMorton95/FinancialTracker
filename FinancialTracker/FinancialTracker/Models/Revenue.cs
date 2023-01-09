namespace FinancialTracker.Models
{
	public class Revenue : Transaction
	{
		public Revenue(RevenueCategory _revenueCategory)
		{
			Category = _revenueCategory.ToString();
		}
	}
}
