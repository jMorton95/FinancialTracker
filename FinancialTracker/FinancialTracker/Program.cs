using FinancialTracker.Models;
using FinancialTracker.Services;
using FinancialTracker.Services.Interfaces;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Negotiate;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

///<summary>Sets up our machine name & environment name based configuration files for development</summary>
var environmentName = Environment.GetEnvironmentVariable("ENVIRONMENT_NAME");
builder.Configuration.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);
builder.Configuration.AddJsonFile($"appsettings.{Environment.MachineName}.json", optional: true, reloadOnChange: true);
if (!string.IsNullOrEmpty(environmentName))
{
    builder.Configuration.AddJsonFile($"appsettings.{environmentName}.json");
}

///<summary>Register our database connection based on environment specific connsection string</summary>
var connString = builder.Configuration.GetConnectionString("userConnectionString");
builder.Services.AddDbContext<FinanceDbContext>(options => options.UseSqlServer(connString));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

///<summary>Register all dependencies</summary>
builder.Services.AddScoped<IClaimsTransformation, FinanceAuthenticationService>();
builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddHttpClient();

///<summary>Set our claims based authentication & authorization</summary>
builder.Services.AddAuthentication(NegotiateDefaults.AuthenticationScheme).AddNegotiate();
builder.Services.AddAuthorization(options =>
{
    options.FallbackPolicy = new AuthorizationPolicyBuilder()
            .RequireClaim("IsAHuman")
            .Build();
});

// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddMvc(options =>
{
    options.EnableEndpointRouting = false;
});

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
app.UseMvc();

app.Run();
