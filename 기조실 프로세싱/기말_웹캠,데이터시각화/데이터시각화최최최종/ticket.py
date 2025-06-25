import requests
import json
import time
from datetime import datetime
from email.utils import parsedate_to_datetime
import pytz

def get_server_time(url):
    try:
        response = requests.head(url)
        server_time = response.headers['Date']
        server_time_utc = parsedate_to_datetime(server_time)
        
        # 한국 시간대로 변환
        kst = pytz.timezone('Asia/Seoul')
        server_time_kst = server_time_utc.astimezone(kst).strftime('%Y-%m-%d %H:%M:%S.%f')
        
        return server_time_kst
    except Exception as e:
        print("Error fetching server time from {}: {}".format(url, e))
        return None

def save_times_to_json():
    urls = {
        'interpark': 'http://ticket.interpark.com/',
        'yes24': 'http://ticket.yes24.com/'
    }
    
    times = {}
    for key, url in urls.items():
        times[key] = get_server_time(url)
    
    kst = pytz.timezone('Asia/Seoul')
    current_time = datetime.now(kst).strftime('%Y-%m-%d %H:%M:%S.%f')
    
    data = {
        'interpark': times['interpark'],
        'yes24': times['yes24'],
        'current_time': current_time
    }
    
    with open('times.json', 'w') as json_file:
        json.dump(data, json_file)

while True:
    save_times_to_json()
    time.sleep(1)  # 1초마다 갱신
