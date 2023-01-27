using FinancialTracker.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Configuration.Json;

var builder = WebApplication.CreateBuilder(args);

/*var configuration = new ConfigurationBuilder().AddJsonFile($"appsettings.{Environment.MachineName}.json", optional: false, reloadOnChange: true).Build();
var connectionString = configuration.GetConnectionString("userConnectionString");*/

builder.Configuration.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);
builder.Configuration.AddJsonFile($"appsettings.{Environment.MachineName}.json", optional: true, reloadOnChange: true);
Console.WriteLine($"appsettings.{Environment.MachineName}.json");

//builder.Configuration.AddJsonFile($"appsettings.{Environment.MachineName}.json", optional: false, reloadOnChange: true);

//Console.WriteLine($"{connectionString} test");
/*builder.WebHost.ConfigureServices(config =>
{
    config.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);
    config.AddJsonFile($"appsettings.{Environment.MachineName}.json", optional: true, reloadOnChange: true);

    var environmentName = Environment.GetEnvironmentVariable("ENVIRONMENT_NAME");

    if (!string.IsNullOrEmpty(environmentName)) builder.Configuration.AddJsonFile($"appsettings.{environmentName}.json");
});
*/

/*

builder.Configuration.AddEnvironmentVariables();*/

builder.Services.AddDbContext<FinanceDbContext>(options =>
{
    var connString = builder.Configuration.GetConnectionString("userConnectionString");
    options.UseSqlServer(connString);
});


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
