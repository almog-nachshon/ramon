FROM python:slim

# path of application
WORKDIR /app  


#Copy all files in root path of repository to my container (computer)
COPY . /app

# 1-. מיקום  של הקבצים בREPO 
#2. מיקום בתוך הקונטיינר 

# Copy only requirements.txt to my container (computer)
COPY requirements.txt /app  


# RUN COMMANDS to install dependencies
RUN pip install --no-cache-dir -r requirements.txt    

# הרצת הקוד
CMD ["python", "-c",  "from app.math_utils import add; print(add(2, 3))"]