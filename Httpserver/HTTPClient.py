__author__ = 'Lester'
from socket import *
while 1:
    serverName =raw_input('input hostname\r\n')
    serverPort =int(raw_input('input port NO.\r\n'))
    Filepath=raw_input('input file path\r\n')
    print 'connecting'
    clientSocket = socket(AF_INET, SOCK_STREAM)
    clientSocket.connect((serverName,serverPort))
    print 'connected'
    #HTTP request (GET)
    request = 'GET /'+Filepath+' HTTP/1.1\r\n'
    clientSocket.send(request)
    response = clientSocket.recv(1024)
    print 'From Server:', response
    clientSocket.close()
