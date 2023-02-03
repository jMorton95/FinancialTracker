using FinancialTracker.Models;
using FinancialTracker.Repositories.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using FinancialTracker.API;

namespace FinancialTracker.Pages
{
	public class IndexModel : PageModel
	{
		private readonly HttpClient _client;
		private readonly ILogger<IndexModel> _logger;
		public List<User> Users { get; set; }

		public IndexModel(ILogger<IndexModel> logger, HttpClient client)
		{
			_logger = logger;
			_client = client;
        }

		public void OnGet()
		{
			//var response = _client.GetAsync("api/users");
		}

		public void OnPost(string username, string password)
		{
			
		}
	}
}