using FinancialTracker.Models;

namespace FinancialTracker.Services.Interfaces
{
    public interface IUserService
    {
        List<User> GetAllUsers();
        User GetById(int id);
    }
}
