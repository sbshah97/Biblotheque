from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--input1", help="Correct Username and Correct Password")
parser.add_argument("--input2", help="Incorrect Username and Correct Password")
parser.add_argument("--input3", help="Correct Username and Incorrect Password")
parser.add_argument("--input4", help="Incorrect Username and Incorrect Password")
args = parser.parse_args()

if args.input1:
	name = "sbs.191197@gmail.com"
	pwd = "salman@123"
elif args.input2:
	name = "salman@gmail.com"
	pwd = "salman@123"
elif args.input3:
	name = "sbs.191197@gmail.com"
	pwd = "salman"
elif args.input4:
	name = "salman@gmail.com"
	pwd = "salman"
else:
	exit(0)

chromedriver = "./chromedriver"
browser = webdriver.Chrome(chromedriver)

browser.get('http://localhost:3000')

# Getting Username to be filled
username = browser.find_element_by_id("session_email")
username.send_keys(email)

# Getting Password to be filled
password = browser.find_element_by_id("session_password")
password.send_keys(password)

browser.find_element_by_name("commit").click()