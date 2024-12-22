# Use Python official base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install required dependencies (replace requirements.txt if you have it)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
