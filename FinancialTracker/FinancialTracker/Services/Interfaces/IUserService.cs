using FinancialTracker.Models;

namespace FinancialTracker.Services.Interfaces
{
    public interface IUserService
    {
        Task<List<User>> GetAllUsers();
        User GetById(int id);
    }
}
