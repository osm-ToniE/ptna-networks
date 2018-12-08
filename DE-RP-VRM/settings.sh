#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-RP-VRM"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Rhein-Mosel'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Rhein-Mosel"
NETWORK_SHORT="VRM"

ANALYSIS_PAGE="Verkehrsverbund_Rhein-Mosel/Analyse"
WIKI_ROUTES_PAGE="Verkehrsverbund_Rhein-Mosel/Analyse/DE-RP-VRM-Routes"

ANALYSIS_OPTIONS="--language=de_DE.UTF-8 --check-access --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --multiple-ref-type-entries=analyze --coloured-sketchline --expect-network-short"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=
# --max-error=10 

