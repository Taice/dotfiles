import socket, pyaudio

p = pyaudio.PyAudio()
stream = p.open(format=pyaudio.paInt16, channels=1, rate=44100, output=True)

s = socket.socket()
s.bind(("127.0.0.1", 2828))
s.listen(1)
conn, addr = s.accept()

while True:
    data = conn.recv(4096)
    if not data:
        break
    stream.write(data)

conn.close()
stream.stop_stream()
stream.close()
p.terminate()
