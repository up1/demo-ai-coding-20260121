# ASP.NET REST API Development Standards

## Project Structure
- Use a clean architecture or Onion architecture pattern.
- The solution must include separate projects for: `Api`, `Application`, `Domain`, and `Infrastructure`.
- API controllers should be placed in the `Api/Controllers` directory.
- Domain models should be in the `Domain/Entities` directory.
- Application services should be in the `Application/Services` directory.
- Infrastructure implementations (e.g., data access) should be in the `Infrastructure/Data` directory
- Data transfer objects (DTOs) should be in the `Application/DTOs` directory.
- Database context and migrations should be in the `Infrastructure/Database` directory.
- Use `Entity Framework Core` for data access.
- Use `AutoMapper` for mapping between domain models and DTOs.
- Database with postgreSQL for production.
- Configuration settings should be managed using `appsettings.json` and environment variables.
- Use dependency injection to manage service lifetimes and dependencies.
- Always include Test projects with xUnit for each layer and mocking with Moq.
- Use `dotnet new webapi` as the base template for the API project.
- Finally, include a `README.md` file with clear instructions on how to set up, run, and test the application.

## Coding Standards
- **Target Framework:** All projects target .NET 9.0.
- **Language:** Use C# for all code.
- **API Design:** Follow REST architectural principles, using meaningful, resource-oriented URLs and appropriate HTTP verbs (GET, POST, PUT, DELETE).
- **Error Handling:** Implement structured exception handling and return appropriate HTTP status codes (e.g., 200 OK, 201 Created, 400 Bad Request, 404 Not Found).
- **Dependency Injection:** Favor constructor injection for dependencies.

## Naming Conventions
- Class names should be in `PascalCase`.
- Interface names should start with `I`, e.g., `IRepository`.


## Validation rule og OWASP.NET REST API Development Standards
- Validate all incoming data using data annotations or FluentValidation.
- Sanitize inputs to prevent SQL injection and cross-site scripting (XSS) attacks.
- Implement authentication and authorization using ASP.NET Core Identity or JWT tokens.
- Use HTTPS for all API endpoints.
- Implement rate limiting to protect against DDoS attacks.
- Log all significant events and errors using a logging framework like Serilog or NLog.
- Regularly update dependencies to patch known vulnerabilities.

