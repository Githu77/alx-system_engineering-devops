#!/usr/bin/python3
""" recursive function to querie Reddit API"""
import requests
import sys
after = None
count_dic = []

def count_words(subreddit, word_list):
    """returns title of all hot articles and prints the top ten hot posts of the subreddit"""
    global after
    global count_dic
    headers = {'User-Agent': 'xica369'}
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    parameters = {'after': after}
    response = requests.get(url, headers=headers, allow_redirects=False,
                            params=parameters)
