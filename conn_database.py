#!/usr/bin/python3

import mysql.connector

#create connection

conn=mysql.connector.connect(
        host="localhost",user="anjali",password="12345",database="mydatabase"
        )
#check connection
if conn.is_connected():
    print("connected to mysql successfully")

#create cursor 

cursor=conn.cursor()

s=['anjali','thakur',21,'agra']
query="insert into student(first_name,last_name,age,city) values(%s,%s,%s,%s)"
#execute query
for i in range(1,10):
    cursor.execute(query,s)

#commit after loop
conn.commit();
#fetch data
cursor.execute("select * from student")
record=cursor.fetchall()
for j in record:
    print(j)
#close connection
cursor.close();
conn.close();

