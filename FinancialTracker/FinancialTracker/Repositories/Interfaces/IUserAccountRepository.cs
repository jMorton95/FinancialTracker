﻿using FinancialTracker.Models;

namespace FinancialTracker.Repositories.Interfaces
{
    public interface IUserAccountRepository
    {
        Task<User> GetByIdAsync(int id);
        Task<int> CheckLoginAsync(string username, string password);
        Task<User>? GetByLoginAsync(string username, string password);
    }
}
