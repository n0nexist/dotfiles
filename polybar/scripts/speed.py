import os
import socket

try:
	temp = os.popen("ping -c 1 "+socket.gethostbyname("www.google.com")).read()
	temp = temp.split("time=")[1].split("ms")[0]
	print(f"{temp}ms")
except:
	print("no internet")

