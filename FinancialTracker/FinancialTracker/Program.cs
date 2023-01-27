namespace FinancialTracker
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
            
            builder.Configuration.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);
            builder.Configuration.AddJsonFile($"appsettings.{Environment.MachineName}.json", optional: true, reloadOnChange: true);

            var environmentName = Environment.GetEnvironmentVariable("ENVIRONMENT_NAME");
            if (!string.IsNullOrEmpty(environmentName))
            {
                builder.Configuration.AddJsonFile($"appsettings.{environmentName}.json");
            }
            builder.Configuration.AddEnvironmentVariables();
            
            
            // Add services to the container.
            builder.Services.AddRazorPages();

            var app = builder.Build();


            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }


            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapRazorPages();

            app.Run();
        }
    }
}