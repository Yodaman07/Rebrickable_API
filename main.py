from dotenv import load_dotenv
import os
import requests

load_dotenv()
url = "https://rebrickable.com/api/v3/lego/sets/10312-1/"
key = os.getenv("KEY")

headers = {
    "Accept": "application/json",
    "Authorization": "key " + key
}

r = requests.get(url, headers=headers)
print(r.json())
