#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-SH-NAH.SH"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=4][name~'Schleswig-Holstein'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Nahverkehrsverbund Schleswig-Holstein"
NETWORK_SHORT="NAH.SH"

ANALYSIS_PAGE="Schleswig-Holstein/NAH.SH/Analyse"
WIKI_ROUTES_PAGE="Schleswig-Holstein/NAH.SH/Analyse/DE-SH-NAH.SH-Linien"

ANALYSIS_OPTIONS="--language=de --positive-notes --max-error=10 --check-access --check-name-relaxed --check-sequence --check-osm-separator --check-motorway-link --check-stop-position --multiple-ref-type-entries=analyze --relaxed-begin-end-for=train,light_rail,tram,bus --coloured-sketchline"

# --expect-network-long
# --check-bus-stop 
# --expect-network-short

