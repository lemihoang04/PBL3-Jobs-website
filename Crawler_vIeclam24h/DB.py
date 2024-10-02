import mysql.connector
from venv import logger

def save_data_into_DB(data):
    try:
        connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="website"
    )
        cursor = connection.cursor()
        query = """
        INSERT IGNORE INTO job_data (
            Company,
            JobTitle,
            Job,
            Sexual,
            Salary,
            Level,
            StartTime,
            EndTime,
            Location,
            City,
            Requirement,
            Qualification,
            Age,
            Experience,
            Work_way,
            number_recruits,
            Description,
            Benefit,
            pic_link,
            status
        )
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""
        for i in data:
            cursor.execute(query, i)
        connection.commit()
        connection.close()
    except Exception as e:
        logger.error(f"Error occured while saving data to DB: {e}")

def get_data_from_DB():
    try:
        connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="website"
    )
        cursor = connection.cursor()
        cursor.execute("SELECT * FROM job_data")
        data = cursor.fetchall()
        connection.close()
        return data
    except Exception as e:
        print(f"Error occurred while retrieving data from database: {e}")
        return []