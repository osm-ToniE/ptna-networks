#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-RP-VRT"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Region Trier'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Region Trier"
NETWORK_SHORT="VRT"

ANALYSIS_PAGE="Verkehrsverbund_Region_Trier/Analyse"
WIKI_ROUTES_PAGE="Verkehrsverbund_Region_Trier/Analyse/DE-RP-VRT-Routes"

ANALYSIS_OPTIONS="--language=de_DE.UTF-8 --check-access --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --expect-network-short"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

