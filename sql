def sql(*args):
    k = []
    d = []
    b = database[0]
    print(' '.join(b))
    x = [b.index(i) if i in b else i for i in args]
    for i in x[1::2]:
        d.append(x[x.index(i)-1])
        d.append(i)
        k.append(d)
        d=[]
    c=[]
    for a in database:
        for i in range(len(k)):        
            if a[k[i][0]] == k[i][1]:
                c.append(a)
    z=0
    m=[]
    for a in c:
        for i in c:
            if a[0] == i[0]:
                z+=1
                if z == len(k):
                    m.append(a)
                    print(' '.join(m[0]))
                    m=[]
        z=0
