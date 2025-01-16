From python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

# Expose port 5000 for the Flask application
EXPOSE 5000
 
# Define the ENTRYPOINT to run the Flask app
ENTRYPOINT ["python", "app.py"]
 
# Define the CMD to set default arguments (e.g., Flask app runs on port 5000)
CMD ["--host=0.0.0.0", "--port=5000"]