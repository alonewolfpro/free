import requests
from colorama import *
import os
init(autoreset=True)

GR = Fore.GREEN
RD = Fore.RED
session = requests.session()
try:
    os.system("cls")
except:
    os.system("clear")

print("""
Mailer Checker Coded By RDX
Version V1.0
""")

Email = str(input("Enter Your Email : ").strip())

File = open(input("List : ").strip(),"r").read().split("\n")


header = {
    'User-Agent':'Mozilla/5.0(WindowsNT6.3;Win64;x64)AppleWebKit/537.36(KHTML,likeGecko)Chrome/93.0.4577.63Safari/537.36',
    "Cookie": ""
}
def mailer(Url):
    data = {
            "action": "score",
            "senderEmail": "rdx@hackermail.com",
            "senderName": "RDX Mailer Results",  
            "attachment[]": "(binary)",
            "replyTo": "",
            "subject": "Mailer!",
            "messageLetter": f"<h1>Successful</h1><br><h4>Mailer : {Url}</h4>",
            "emailList": Email,
            "messageType": "1",
            "charset": "UTF-8",
            "encode": "8bit",
            "action": "send",
        }
    try:
        response = session.post(Url,data=data,headers=header)
        if "Ok" in response.text:
            print(GR + "[GOOD!] " +Fore.RESET + f"{Url}"+GR+ " Check Your Email :)")
            open("successmailer.txt", "a").write(url + "\n")
        else:
            print(RD +"[BAD!] " +Fore.RESET + f"{Url}")
    except:
        pass
for t in File:
    mailer(t)