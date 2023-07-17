import pandas as pd
import mysql.connector

# Connect to MySQL
mysql_connection = mysql.connector.connect(
    host='localhost',
    user='mauro',
    password='bananas',
    database='distribuidora'
)

# Create a cursor object to execute SQL queries
cursor = mysql_connection.cursor()

# Read the Excel spreadsheet using pandas
excel_data = pd.read_excel('inventario.xls')

# Iterate through each row of the spreadsheet
for index, row in excel_data.iterrows():
    # Extract the data from the row
    codigo_value = row['codigo']
    barras_value = row['barras']
    categoria_value = row['categoria']
    subcategoria_value = row['subcategoria']
    tipo_value = row['tipo']
    marca_value = row['marca']
    modelo_value = row['modelo']
    quantidade_value = row['quantidade']
    custo_value = row['custo']
    preco_value = row['preco']

    # Prepare the SQL query to insert the data into the MySQL table
    sql_query = "INSERT INTO produtos (codigo,barras,categoria,subcategoria,tipo,marca,modelo,quantidade,custo,preco) VALUES (%s, %s)"
    values = (codigo_value,barras_value,categoria_value,subcategoria_value,tipo_value,marca_value,modelo_value,quantidade_value,custo_value,preco_value)

    # Execute the query
    cursor.execute(sql_query, values)

# Commit the changes to the database
mysql_connection.commit()

# Close the cursor and database connection
cursor.close()
mysql_connection.close()
