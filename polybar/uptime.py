import os

a = os.popen("uptime").read().split("up")[1].split(",")[0].strip()

print(a)
