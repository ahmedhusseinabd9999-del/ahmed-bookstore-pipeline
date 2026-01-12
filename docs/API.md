# API Documentation

## Book Management
- **GET /api/books**: Fetches all books from MySQL database.
- **POST /api/books**: Adds a new book entry.
- **GET /api/health**: Returns service health status.

## Cache Layer
- **Redis**: Used for caching frequent queries to reduce DB load.
