
import socket
import time
M_SIZE = 1024

send_address = ('127.0.0.1', 20000)
send_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

recv_address = ('127.0.0.1', 20001)
recv_sock = socket.socket(socket.AF_INET, type=socket.SOCK_DGRAM)
recv_sock.bind(recv_address)


def send(msg):
    send_len = send_sock.sendto(msg.encode('utf-8'), send_address)
    print("send:{}:({})".format(msg, send_len))


def receive() -> (str):
    try:
        text, addr = recv_sock.recvfrom(M_SIZE)

        text = text.decode(encoding='utf-8')
        print("receive:{}:({})".format(text, addr))
        return text

    except KeyboardInterrupt as ke:
        print(ke)
        return None


if __name__ == '__main__':
    print("waiting message...")
    while(True):
        text = receive()
        if(text is None):
            break
        send(text)
