Originally found here: https://code.google.com/p/spotify-notify/

I recommend going there if you want to use this app. I have it here solely to provision my bin dir on new machines.

Spotify-notify is a notifier for currently playing song in Spotify on a linux system, using the notify-osd notifier (found in e.g. Ubuntu). It also includes support for media keys It is intended for use on Ubuntu systems - dependencies are notify-osd and python-indicate.

Requires python-indicate:

# sudo apt-get install python-indicate

Add to Startup Applications as:

# python /home/aolsen/bin/spotify-notify/spotify-notify.py -s &

