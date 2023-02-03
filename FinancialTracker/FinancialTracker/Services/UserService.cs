using FinancialTracker.Models;
using FinancialTracker.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace FinancialTracker.Services
{
    public class UserService : IUserService
    {
        private readonly FinanceDbContext _context;
        public UserService(FinanceDbContext context)
        {
            _context = context;
        }

        public async Task<List<User>> GetAllUsers()
        {
            return await _context.Users.ToListAsync();
        }

        public User GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
