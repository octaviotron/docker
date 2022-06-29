#!/usr/bin/liquidsoap

security = mksafe(single("/var/liquidsoap/music/default.ogg"))

output.icecast(%vorbis,
  host = "10.0.0.122",
  port = 8000,
  user = "envivo",
  password = "envivo",
  mount = "/envivo.ogg",
  security)

