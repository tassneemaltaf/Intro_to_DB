import mysql.connector

my_db = mysql.connector.connect(
    host="localhost",
    user="tassneem",
    password="Tassneem:1",
    database="alx_book_store"
  )

my_cursor = my_db.cursor()
try:
  my_cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
  print("Database 'alx_book_store' created successfully!")
except:
  print("Database already exists")


my_cursor.close()
my_db.close()