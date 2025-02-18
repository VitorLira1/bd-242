import mysql.connector
from mysql.connector import Error

def create_connection():
    connection = None
    try:
        connection = mysql.connector.connect(
            host='192.168.0.28',
            port='3306',
            user='root',
            password='root',
            database='BD_ATV8'
        )
        print("Conexão com o MySQL bem-sucedida")
    except Error as e:
        print(f"Erro '{e}' ocorreu")

    return connection


def create_office(connection, address):
    cursor = connection.cursor()
    query = "INSERT INTO TB_OFFICES (addressLine1) VALUES (%s)"
    cursor.execute(query, (address,))
    connection.commit()
    print("Office adicionado com sucesso")

def read_offices(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_OFFICES")
    offices = cursor.fetchall()
    for of in offices:
        print(of)

def update_offices(connection, address, officeId):
    cursor = connection.cursor()
    query = "UPDATE TB_OFFICES SET addressLine1 = %s WHERE officeId = %s"
    cursor.execute(query, (address, officeId))
    connection.commit()
    print("Offices atualizado com sucesso")

def delete_office(connection, officeId):
    cursor = connection.cursor()
    query = "DELETE FROM TB_OFFICES WHERE officeId = %s"
    cursor.execute(query, (officeId,))
    connection.commit()
    print("Office deletado com sucesso")
    

def create_productLine(connection, textDesc):
    cursor = connection.cursor()
    query = "INSERT INTO TB_PRODUCTLINES (textDesc) VALUES (%s)"
    cursor.execute(query, (textDesc,))
    connection.commit()
    print("ProductLine adicionado com sucesso")

def read_productLines(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_PRODUCTLINES")
    pls = cursor.fetchall()
    for pl in pls:
        print(pl)

def update_productlines(connection, productLineId, textDesc):
    cursor = connection.cursor()
    query = "UPDATE TB_PRODUCTLINES SET textDesc = %s WHERE productLineId = %s"
    cursor.execute(query, (textDesc, productLineId))
    connection.commit()
    print("ProductLines atualizado com sucesso")

def delete_productLine(connection, productLineId):
    cursor = connection.cursor()
    query = "DELETE FROM TB_PRODUCTLINES WHERE productLineId = %s"
    cursor.execute(query, (productLineId,))
    connection.commit()
    print("ProductLine deletado com sucesso")
    
    
def create_product(connection, name, productLine_id):
    cursor = connection.cursor()
    query = "INSERT INTO TB_PRODUCTS (name, productLine_id) VALUES (%s, %s)"
    cursor.execute(query, (name, productLine_id))
    connection.commit()
    print("Product adicionado com sucesso")

def read_products(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_PRODUCTS")
    pds = cursor.fetchall()
    for pd in pds:
        print(pd)

def update_products(connection, name, productId):
    cursor = connection.cursor()
    query = "UPDATE TB_PRODUCTS SET name = %s WHERE productId = %s"
    cursor.execute(query, (name, productId))
    connection.commit()
    print("Products atualizado com sucesso")

def delete_product(connection, productId):
    cursor = connection.cursor()
    query = "DELETE FROM TB_PRODUCTS WHERE productId = %s"
    cursor.execute(query, (productId,))
    connection.commit()
    print("Product deletado com sucesso")
    
    
def create_employee(connection, firstName, office_id):
    cursor = connection.cursor()
    query = "INSERT INTO TB_EMPLOYEES (firstName, office_id) VALUES (%s, %s)"
    cursor.execute(query, (firstName, office_id))
    connection.commit()
    print("Employee adicionado com sucesso")

def read_employees(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_EMPLOYEES")
    emps = cursor.fetchall()
    for emp in emps:
        print(emp)

def update_employees(connection, firstName, employeeId):
    cursor = connection.cursor()
    query = "UPDATE TB_EMPLOYEES SET firstName = %s WHERE employeeId = %s"
    cursor.execute(query, (firstName, employeeId))
    connection.commit()
    print("Employees atualizado com sucesso")

def delete_employee(connection, employeeId):
    cursor = connection.cursor()
    query = "DELETE FROM TB_EMPLOYEES WHERE employeeId = %s"
    cursor.execute(query, (employeeId,))
    connection.commit()
    print("Employee deletado com sucesso")
    

def create_customer(connection, name, employee_id):
    cursor = connection.cursor()
    query = "INSERT INTO TB_CUSTOMERS (name, employee_id) VALUES (%s, %s)"
    cursor.execute(query, (name, employee_id))
    connection.commit()
    print("Customer adicionado com sucesso")

def read_customers(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_CUSTOMERS")
    cts = cursor.fetchall()
    for ct in cts:
        print(ct)

def update_customers(connection, name, customerId):
    cursor = connection.cursor()
    query = "UPDATE TB_CUSTOMERS SET name = %s WHERE customerId = %s"
    cursor.execute(query, (name, customerId))
    connection.commit()
    print("Customers atualizado com sucesso")

def delete_customer(connection, customerId):
    cursor = connection.cursor()
    query = "DELETE FROM TB_CUSTOMERS WHERE customerId = %s"
    cursor.execute(query, (customerId,))
    connection.commit()
    print("Customer deletado com sucesso")
    
    
def create_order(connection, customer_id):
    cursor = connection.cursor()
    query = "INSERT INTO TB_ORDERS (customer_id) VALUES (%s)"
    cursor.execute(query, (customer_id,))
    connection.commit()
    print("Order adicionado com sucesso")

def read_orders(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_ORDERS")
    ords = cursor.fetchall()
    for od in ords:
        print(od)

def update_orders(connection, comments, orderId):
    cursor = connection.cursor()
    query = "UPDATE TB_ORDERS SET comments = %s WHERE orderId = %s"
    cursor.execute(query, (comments, orderId))
    connection.commit()
    print("Orders atualizado com sucesso")

def delete_order(connection, orderId):
    cursor = connection.cursor()
    query = "DELETE FROM TB_ORDERS WHERE orderId = %s"
    cursor.execute(query, (orderId,))
    connection.commit()
    print("Order deletado com sucesso")
    
    
def create_orderdetails(connection, order_id, product_id):
    cursor = connection.cursor()
    query = "INSERT INTO TB_ORDERDETAILS (order_id, product_id) VALUES (%s, %s)"
    cursor.execute(query, (order_id, product_id))
    connection.commit()
    print("OrderDetail adicionado com sucesso")

def read_orderdetails(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_ORDERDETAILS")
    ods = cursor.fetchall()
    for od in ods:
        print(od)

def update_orderdetails(connection, quantity, order_id):
    cursor = connection.cursor()
    query = "UPDATE TB_ORDERDETAILS SET quantity = %s WHERE order_id = %s"
    cursor.execute(query, (quantity, order_id))
    connection.commit()
    print("OrderDetail atualizado com sucesso")

def delete_orderdetail(connection, order_id):
    cursor = connection.cursor()
    query = "DELETE FROM TB_ORDERDETAILS WHERE order_id = %s"
    cursor.execute(query, (order_id,))
    connection.commit()
    print("OrderDetail deletado com sucesso")
    
    
def create_payment(connection, customer_id, checkNumber):
    cursor = connection.cursor()
    query = "INSERT INTO TB_PAYMENTS (customer_id, checkNumber) VALUES (%s, %s)"
    cursor.execute(query, (customer_id, checkNumber))
    connection.commit()
    print("Payment adicionado com sucesso")

def read_payments(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_PAYMENTS")
    pays = cursor.fetchall()
    for pay in pays:
        print(pay)

def update_payments(connection, paymentDate, customer_id):
    cursor = connection.cursor()
    query = "UPDATE TB_PAYMENTS SET paymentDate = %s WHERE customer_id = %s"
    cursor.execute(query, (paymentDate, customer_id))
    connection.commit()
    print("Payments atualizado com sucesso")

def delete_payment(connection, customer_id):
    cursor = connection.cursor()
    query = "DELETE FROM TB_PAYMENTS WHERE customer_id = %s"
    cursor.execute(query, (customer_id,))
    connection.commit()
    print("Payment deletado com sucesso")
    
    
def main():
    connection = create_connection()
    if connection is None:
        return
    
    create_office(connection, "Rua Mangueiras, 2125")
    create_productLine(connection,"Frutas tropicais")
    create_product(connection,"Manga espada", 1)
    create_employee(connection,"Dionísio", 1)
    create_customer(connection, "Hades", 1)
    create_order(connection, 1)
    create_orderdetails(connection, 1, 1)
    create_payment(connection, 1, 99)
    
    read_products(connection)
    read_productLines(connection)
    read_customers(connection)
    
    update_employees(connection, "Dionysus", 1)
    update_offices(connection, "Rua Mangueiras Doces, 2125", 1)
    
    read_employees(connection)
    read_offices(connection)
    
    create_product(connection, "Pineaple pen", 1)
    delete_product(connection, 2) 
    


if __name__ == "__main__":
    main()