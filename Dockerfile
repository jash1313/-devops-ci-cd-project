# Base image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first (layer caching)
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy rest of the code
COPY . .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]
