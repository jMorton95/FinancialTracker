using FinancialTracker.Repositories.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace FinancialTracker.Pages
{
	public class IndexModel : PageModel
	{
		private readonly ILogger<IndexModel> _logger;
		private readonly IUserAccountRepository _loginRepository;
		public string username { get; set; }

		public IndexModel(ILogger<IndexModel> logger, IUserAccountRepository loginRepository)
		{
			_logger = logger;
			_loginRepository = loginRepository;
			username = "default";
		}

		public void OnGet()
		{
            var user = _loginRepository.GetByLoginAsync("Klavelon", "5DDD9C00-8105-4BF1-A951-2A1BC653C679");
            if (user != null)
            {
                username = user.Result.Username;
            }
        }

		public void OnPost(string username, string password)
		{
			var user = _loginRepository.GetByLoginAsync(username, password);
			if (user != null) { 
				username =  user.Result.Username;
			}
		}
	}
}