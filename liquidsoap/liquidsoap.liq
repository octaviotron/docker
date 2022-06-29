#!/usr/bin/liquidsoap
# Log dir
log.file.path.set("/tmp/basic-radio.log")

# Music
#myplaylist = playlist("/var/liquidsoap/music/playlist.m3u")
# Some jingles
#jingles = playlist("/var/liquidsoap/music/jingles.m3u")
# If something goes wrong, we'll play this
security = mksafe(single("/var/liquidsoap/music/default.ogg"))

# Start building the feed with music
#radio = myplaylist
# Now add some jingles
#radio = random(weights = [1, 4],[jingles, radio])
# And finally the security
#radio = fallback(track_sensitive = false, [radio, security])



# Stream it out
output.icecast(%vorbis,
  host = "localhost", 
  port = 8000,
  user = "envivo",
  password = "pass", 
  mount = "envivo.ogg",
  security)

