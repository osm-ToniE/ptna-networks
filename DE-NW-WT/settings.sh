#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-NW-WT"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name~'WestfalenTarif.'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);<<;rel[type='route'](r);)->.routes;(.routes;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="WestfalenTarif"
NETWORK_SHORT="WT"

ANALYSIS_PAGE="DE:WestfalenTarif/Analyse"
WIKI_ROUTES_PAGE="DE:WestfalenTarif/Analyse/WestfalenTarif-Linien"

ANALYSIS_OPTIONS="--language=de --relaxed-begin-end-for=train,light_rail,tram,bus,share_taxi --positive-notes --max-error=10 --check-access --check-name --check-stop-position --check-sequence --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --coloured-sketchline"

# --relaxed-begin-end-for=train,light_rail,tram 
# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-long-for=
# --expect-network-short-for=

