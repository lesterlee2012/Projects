__author__ = 'Lester'
# Import socket module
from socket import *
import Counter
import threading

serverPort = 5678

class Client_Thread(threading.Thread):
    def __init__(self, connectionSocket, addr):
        threading.Thread.__init__(self)
        self.connectionSocket = connectionSocket
        self.addr = addr

    def run(self):
        request = connectionSocket.recv(1024)
        #log
        Counter.connection=Counter.connection+1
        print "The number of connection :"+str(Counter.connection)
        print "log of request:\r\n"
        print request
        request = request.splitlines()
        if request:
            HTTPheader = request[0]
            HTTPheader = HTTPheader.split(' ')
            filename = HTTPheader[1]
            try:
                if filename == '/':
                    file = open('Webpage/Welcome.html', 'rb')
                    data = file.read()
                else:
                    file = open('Webpage/'+filename[1:], 'rb')
                    data = file.read()
                #print 'file ready'
                # Send the HTTP response header line to the connection socket
                connectionSocket.send('HTTP/1.1 200 OK\r\n')
                connectionSocket.send('Date: Mon, 29 Sep 2013 21:29:04 GMT\r\n')
                connectionSocket.send('Server: Python\r\n')
                connectionSocket.send('Content-Type: text/html\r\n')
                connectionSocket.send('\r\n')
                # Send the content of the requested file to the connection socket
                connectionSocket.send(data)
                #print 'response sent'
                # Close the client connection socket
                connectionSocket.close()
            except IOError:
                # Send HTTP response message for file not found
                connectionSocket.send('HTTP/1.1 404 FILE NOT FOUND\r\n')
                # Close the client connection socket
                connectionSocket.close()

if __name__ == '__main__':
    serverSocket = socket(AF_INET, SOCK_STREAM)
    serverSocket.bind(('', serverPort))
    serverSocket.listen(1)

print "server waiting to be connected......" + '\r\n'
while True:
    connectionSocket, addr = serverSocket.accept()
    new_thread = Client_Thread(connectionSocket,addr)
    new_thread.start()