using System.ComponentModel.DataAnnotations;

namespace FinancialTracker.Models
{
    public class Account
    {
        [Required]
        private int Id { get; set; }
        [Required]
        private int OwnerId { get; set; }
        private string AccountName { get; set; }
        private double Balance { get; set; }
        private List<Transaction> Transactions { get; set; }

        public Account(int id, int ownerId, string accountName, double balance, List<Transaction> transactions)
        {
            Id = id;
            OwnerId = ownerId;
            AccountName = accountName;
            Balance = balance;
            Transactions = transactions;
        }
    }
}
