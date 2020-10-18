from django.db import models
import cx_Oracle as ora
# Create your models here.
database = 'project1/123@192.168.0.75:1521/orcl'
def getLoginChk(**kwargs):
    conn = ora.connect(database)
    cursor = conn.cursor()
    sql = "select name, count(*) cnt from member_table where id=:id and pwd=:pwd group by name"
    cursor.execute(sql, id=kwargs['id'], pwd=kwargs['pwd'])
    result = cursor.fetchall()
    print(result)
    cursor.close()
    conn.close()
    return result