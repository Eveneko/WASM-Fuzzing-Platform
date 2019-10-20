import dns.resolver

tcp_query = dns.resolver.query("www.sina.com.cn", rdtype=dns.rdatatype.A, tcp=True)
udp_query = dns.resolver.query("www.sina.com.cn", rdtype=dns.rdatatype.A)

print("TCP query:")
for i in tcp_query.response.answer:
    for j in i.items:
        print(j)

print("\nUDP query:")
for i in udp_query.response.answer:
    for j in i.items:
        print(j)

