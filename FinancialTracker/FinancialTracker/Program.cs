using FinancialTracker.Models;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Configuration.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);
builder.Configuration.AddJsonFile($"appsettings.{Environment.MachineName}.json", optional: true, reloadOnChange: true);

var environmentName = Environment.GetEnvironmentVariable("ENVIRONMENT_NAME");
if (!string.IsNullOrEmpty(environmentName)) builder.Configuration.AddJsonFile($"appsettings.{environmentName}.json");


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
