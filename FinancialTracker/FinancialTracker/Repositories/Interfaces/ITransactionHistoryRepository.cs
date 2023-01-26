using FinancialTracker.Models;

namespace FinancialTracker.Repositories.Interfaces
{
    public interface ITransactionHistoryRepository
    {
        Task<List<Transaction>> GetTransactionHistory(int accountId);
    }
}
