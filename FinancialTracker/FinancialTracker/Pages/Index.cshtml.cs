using FinancialTracker.Models;
using FinancialTracker.Repositories.Interfaces;
using FinancialTracker.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace FinancialTracker.Pages
{
	public class IndexModel : PageModel
	{
		private readonly ILogger<IndexModel> _logger;
		private readonly IUserService _userService;
		public List<User> Users { get; set; }
		

		public IndexModel(ILogger<IndexModel> logger, IUserService userService)
		{
			_logger = logger;
			_userService = userService;
		}

		public async void OnGet()
		{
			Users = await _userService.GetAllUsers();
		}

		public void OnPost(string username, string password)
		{
			
		}
	}
}