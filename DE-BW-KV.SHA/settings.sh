#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-KV.SHA"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'Landkreis Schwäbisch Hall'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="KreisVerkehr Schwäbisch Hall|KreisVerkehr Schwäbisch Hall"
NETWORK_SHORT="KV SHA"

ANALYSIS_PAGE="Landkreis_Schwäbisch_Hall/KV.SHA/Analyse"
ANALYSIS_TALK="Talk:Landkreis_Schwäbisch_Hall/KV.SHA/Analyse"
WIKI_ROUTES_PAGE="Landkreis_Schwäbisch_Hall/KV.SHA/Analyse/DE-BW-KV.SHA-Linien"

ANALYSIS_OPTIONS="--language=de --positive-notes --max-error=10 --check-access --check-name-relaxed --check-sequence --check-osm-separator --check-motorway-link --check-stop-position --multiple-ref-type-entries=analyze --relaxed-begin-end-for=train,light_rail,tram,bus --coloured-sketchline"

# --expect-network-long
# --check-bus-stop 
# --expect-network-short



