# Dockerfile
# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy our files into the container
COPY . .

# Install the necessary Python library (Flask)
RUN pip install Flask

# Tell the container to listen on port 8080
EXPOSE 8080

# The command to run when the container starts
CMD ["python", "main.py"]
