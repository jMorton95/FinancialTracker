using Microsoft.EntityFrameworkCore;

namespace FinancialTracker.Models
{
    public class FinanceDbContext : DbContext
    {
        public FinanceDbContext(DbContextOptions<FinanceDbContext> options)
            : base(options) { }

        public DbSet<User> Users { get; set; }
    }
}
