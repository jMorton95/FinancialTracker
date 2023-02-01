/*using FinancialTracker.Repositories.Interfaces;
using FinancialTracker.Services.Interfaces;

namespace FinancialTracker.Services
{
    public class LoginService : ILoginService
    {
        private readonly IUserAccountRepository _userAccountRepository;
        public LoginService(IUserAccountRepository userAccountRepository)
        {
            _userAccountRepository = userAccountRepository;
        }

        public int GlobalUserId { get; set; }

        public async void SetGlobalUserId(string username, string password)
        {
            try
            {
                GlobalUserId = await _userAccountRepository.GetByLoginAsync(username, password);
            }
            catch
            {
                GlobalUserId = 0;
            }
        }
    }
}
*/