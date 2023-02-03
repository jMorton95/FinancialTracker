using FinancialTracker.Models;
using Microsoft.AspNetCore.Authentication;
using System.Security.Claims;

namespace FinancialTracker.Services.Interfaces
{
    public class FinanceAuthenticationService : IClaimsTransformation
    {
        private readonly FinanceDbContext _context;
        public FinanceAuthenticationService(FinanceDbContext context)
        {
            _context = context;
        }

        public Task<ClaimsPrincipal> TransformAsync(ClaimsPrincipal principal)
        {
            ClaimsIdentity claimsIdentity = new();
            var validateApprovedUser = _context.Users.FirstOrDefault(x => x.Username == "Klavelon");
            if (validateApprovedUser != null)
            {
                claimsIdentity.AddClaim(new Claim("IsMyDefaultUser", "true"));
                principal.AddIdentity(claimsIdentity);
            }

            return Task.FromResult(principal);
        }
    }
}
