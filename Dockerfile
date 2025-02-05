# Use a minimal Python 3.7 image
FROM python:3.7-alpine

# Set working directory
WORKDIR /code

# Ensure environment variables are correctly set
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Copy the rest of the application files
COPY . .

# Expose port 5000 for Flask
EXPOSE 5000

# Run Flask server
CMD ["flask", "run"]
