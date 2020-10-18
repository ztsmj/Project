from django.db import models
import cx_Oracle as ora
# Create your models here.
database = 'project1/123@192.168.0.75:1521/orcl'
def getLoginChk(id, pwd):
    conn = ora.connect(database)
    cursor = conn.cursor()
    sql = "select client_name, count(*) cnt from client_info where client_id=:id and password=:pwd group by client_name"
    cursor.execute(sql, id=id, pwd=pwd)
    result = cursor.fetchall()
    print(result)
    cursor.close()
    conn.close()
    return result

def client_insert(addr_list):
    print(addr_list)
    conn = ora.connect(database)
    cursor = conn.cursor()
    sql = "insert into client_info values(:1,:2,:3,:4,:5,:6)"
    cursor.execute(sql,addr_list)
    cursor.close()
    conn.commit()
    conn.close()