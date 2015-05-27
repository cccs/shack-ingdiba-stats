#!/usr/bin/env python
import json
import requests
import time

json_obj = requests.get('https://verein.ing-diba.de/resource/club/details/10374').json()

votes = json_obj['votes']
rank = json_obj['rank']

if votes>0 and rank>0:
    print '%d %d %d' % (int(time.time()), votes, rank)

# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
