﻿using FinancialTracker.Models;
using FinancialTracker.Repositories.Interfaces;

namespace FinancialTracker.Repositories
{
    public class UserAccountRepository : IUserAccountRepository
    {
        private readonly FinanceDbContext _context;
        public UserAccountRepository(FinanceDbContext context)
        {
            _context = context;
        }

        public Task<int> CheckLoginAsync(string username, string password)
        {
            var userId = _context.Users.FirstOrDefault(x => x.Username == username && x.Password == password).Id;
            return Task.FromResult(userId);
        }

        public async Task<User> GetByIdAsync(int id)
        {
            return await Task.FromResult(_context.Users.First(u => u.Id == id));
        }

        public async Task<User>? GetByLoginAsync(string username, string password)
        {
            int userId = await CheckLoginAsync(username, password);
            
            return await GetByIdAsync(userId);
        }
    }
}
