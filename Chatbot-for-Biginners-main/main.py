import mysql.connector

hostname = 'localhost'
username = 'root'
password = '123456'
database = 'kbs'
myConnection = mysql.connector.connect(host=hostname, user=username, passwd=password, db=database)

def main(conn):
    #khởi tạo
    benh = [] #lưu tên bệnh
    s = [] #lưu giá trị S của mỗi bệnh
    trieuchung = [] #lưu tên triệu chứng
    istrieuchung = [] #lưu triệu chứng của bệnh nhân 
    cur = myConnection.cursor()

    cur.execute("SELECT mabenh, tenbenh FROM benh")
    for mabenh, tenbenh in cur.fetchall():
        benh.append(tenbenh)
    
    for i in benh:
        s.append(0)    

    cur.execute("SELECT matc, tentc FROM trieuchung")
    for matc, tentc in cur.fetchall():
        trieuchung.append(tentc)
    
    for i in trieuchung:
        istrieuchung.append(0)  

    #hỏi 5 triệu chứng đầu tiên
    for i in range(0, 5):
        print('Bé có bị ' + trieuchung[i] + ' không? Bấm 1 nếu có, bấm phím khác nếu không: ', end='')
        if(int(input())==1):
            istrieuchung[i] = 1

    #tính toán S của mỗi bệnh
    for i in range(0, len(benh)):
        trongso = [] #lưu trọng số của bệnh
        tongTS = 0
        for j in trieuchung:
            trongso.append(0)

        cur.execute("SELECT btc.matc, btc.trongso FROM benh_tc btc, benh b WHERE b.mabenh = btc.mabenh and b.tenbenh = %s", (benh[i],))
        for matc, tso in cur.fetchall():
            trongso[matc-1] = tso
            tongTS += tso

        sum = 0
        for j in range(0, len(trieuchung)):
            sum += istrieuchung[j]*trongso[j]
        s[i] = sum/tongTS

    for i in range(0, len(benh)-1):
        for j in range(i+1, len(benh)):
            if s[i]<s[j]:
                s[i], s[j] = s[j], s[i]
                benh[i], benh[j] = benh[j], benh[i]

    while 1: 
        cur.execute("SELECT btc.matc, btc.trongso FROM benh_tc btc, benh b WHERE b.mabenh = btc.mabenh and b.tenbenh = %s", (benh[0],))
        for matc, tso in cur.fetchall():
            if istrieuchung[matc-1] == 1:
                continue
            print('Bé có bị ' + trieuchung[matc-1] + ' không? Bấm 1 nếu có, bấm phím khác nếu không: ', end='')
            if(int(input())==1):
                istrieuchung[matc-1] = 1

        for i in range(0, len(benh)):
            trongso = [] #lưu trọng số của bệnh
            tongTS = 0
            for j in trieuchung:
                trongso.append(0)

            cur.execute("SELECT btc.matc, btc.trongso FROM benh_tc btc, benh b WHERE b.mabenh = btc.mabenh and b.tenbenh = %s", (benh[i],))
            for matc, tso in cur.fetchall():
                trongso[matc-1] = tso
                tongTS += tso

            sum = 0
            for j in range(0, len(trieuchung)):
                sum += istrieuchung[j]*trongso[j]
            s[i] = sum/tongTS

        if s[0]>=0.8:
            break
        else:
            del s[0]
            del benh[0]

        for i in range(0, len(benh)-1):
            for j in range(i+1, len(benh)):
                if s[i]<s[j]:
                    s[i], s[j] = s[j], s[i]
                    benh[i], benh[j] = benh[j], benh[i]

    print("Bé đã bị " + benh[0])
    cur.execute("SELECT mabenh, cachxl FROM benh WHERE tenbenh = %s", (benh[0],))
    for mabenh, cachxl in cur.fetchall():
        print("Cách xử lí: " + cachxl)

while 1:
    print('----------Hệ thống chatbot tư vấn bệnh trẻ em----------')
    print('Bấm 1 để được tư vấn, bấm phím khác nêu muốn thoát: ', end='')
    if(int(input())==1):
        main(myConnection)
    else:
        print('Bye')
        break

myConnection.close()
