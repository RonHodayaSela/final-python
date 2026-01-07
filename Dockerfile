# Using a basic Python image
FROM python:3.9-slim

# Setting the working folder inside the container
WORKDIR /app

# Copying and installing the requirements file
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copying all other code files into the container
COPY . .

# Exposing the port on which the application ran (usually 5000 in Python)
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]