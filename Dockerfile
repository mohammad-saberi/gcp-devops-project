FROM python:3.9.17-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Command to run the application
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]