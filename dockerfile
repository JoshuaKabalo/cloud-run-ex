FROM python:3.11-slim

#Set working directory
WORKDIR /app

#Copy requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy rest of the app
COPY . .

#Expose port 8080 for Cloud Run
EXPOSE 8080

#Set the entrypoint
CMD ["python", "main.py"]
