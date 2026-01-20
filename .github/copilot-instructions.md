# ASP.NET REST API Development Standards

## Project Structure
- Use a clean architecture or Onion architecture pattern.
- The solution must include separate projects for: `Api`, `Application`, `Domain`, and `Infrastructure`.
- API controllers should be placed in the `Api/Controllers` directory.
- Domain models should be in the `Domain/Entities` directory.
- Use `dotnet new webapi` as the base template for the API project.

## Coding Standards
- **Target Framework:** All projects target .NET 8.0.
- **Language:** Use C# for all code.
- **API Design:** Follow REST architectural principles, using meaningful, resource-oriented URLs and appropriate HTTP verbs (GET, POST, PUT, DELETE).
- **Error Handling:** Implement structured exception handling and return appropriate HTTP status codes (e.g., 200 OK, 201 Created, 400 Bad Request, 404 Not Found).
- **Dependency Injection:** Favor constructor injection for dependencies.

## Naming Conventions
- Class names should be in `PascalCase`.
- Interface names should start with `I`, e.g., `IRepository`.

## Documentation
- Generate Swagger/OpenAPI documentation for all endpoints.
