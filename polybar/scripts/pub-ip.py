# script per mostrare
# l'ip pubblico
# modalità normale
# o censurata


import requests
import sys

r = requests.get("https://checkip.amazonaws.com").text

r = r.strip().split(".")

first = "*"*len(r[1])
second = "*"*len(r[2])
third = "*"*len(r[3])

if sys.argv[1] == "censored":
	r = f"{r[0]}.{first}.{second}.{third}"
elif sys.argv[1] == "normal":
	r = f"{r[0]}.{r[1]}.{r[2]}.{r[3]}"


print(r)

