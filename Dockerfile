# Use the official Python image as the base image
FROM python

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory
COPY . .

# Expose port 8080
EXPOSE 8080

# Set the entrypoint command to run the Flask application
CMD ["python", "app.py"]