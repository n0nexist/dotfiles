import getpass
import socket


print(f"{getpass.getuser()}@{socket.gethostname()}")
