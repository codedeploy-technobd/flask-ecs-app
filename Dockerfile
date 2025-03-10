# Use the official Python 3.13.1 image
FROM python:3.13.1-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask port
EXPOSE 5000

# Run the application with Gunicorn
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "app:app"]
