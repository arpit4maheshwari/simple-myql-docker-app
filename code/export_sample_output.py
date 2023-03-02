import json
import mysql.connector
import _json

try:
    connection = mysql.connector.connect(host='0.0.0.0',
                                         port='3306',
                                         database='terrascope',
                                         user='root',
                                         password='root1234')

    sql_select_Query = "select * from data_summary"
    cursor = connection.cursor()
    cursor.execute(sql_select_Query)
    # get all records
    records = cursor.fetchall()
    print("Total number of rows in table: ", cursor.rowcount)

    data_output={}

    print("\nPrinting each row")
    for row in records:
        print("country = ", row[0], )
        print("count = ", row[1])
        data_output[row[0]] = row[1]

    output_string = str(data_output)
    print("Writing data output to directory data/summary_output.json..",output_string);
    fp = open("Terras/data-20230210T100640Z-001/data/summary_output.json", "w");
    fp.write(output_string)


except mysql.connector.Error as e:
    print("Error reading data from MySQL table", e)
finally:
    if connection.is_connected():
        connection.close()
        cursor.close()
        print("MySQL connection is closed")