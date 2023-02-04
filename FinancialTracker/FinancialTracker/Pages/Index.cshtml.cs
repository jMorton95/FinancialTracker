using FinancialTracker.Models;
using FinancialTracker.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace FinancialTracker.Pages
{
	public class IndexModel : PageModel
	{
		private readonly ILogger<IndexModel> _logger;
		private readonly IUserService _userService;
		public List<User>? Users { get; set;  }
		

		public IndexModel(ILogger<IndexModel> logger, IUserService userService)
		{
			_logger = logger;
			_userService = userService;
		}

		public async Task<ActionResult> OnGet()
		{
			Users = await _userService.GetAllUsers();
			return Page();
		}

		public void OnPost(string username, string password)
		{
			
		}

      /*  public async void DEPRECATEDOnApiGet()
        {
            //This works, but fails at the authentication level due to the access an the app has
            var response = await _client.GetAsync("https://localhost:7285/api/users/");
            response.EnsureSuccessStatusCode();
            Console.WriteLine(await response.Content.ReadAsStringAsync());
            var content = await response.Content.ReadAsStringAsync();
            Users = JsonSerializer.Deserialize<List<User>>(content);
        }*/
    }
}