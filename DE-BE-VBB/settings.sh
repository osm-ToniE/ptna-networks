#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BE-VBB"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=4][name~'(Berlin|Brandenburg)'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Berlin-Brandenburg"
NETWORK_SHORT="VBB"

ANALYSIS_PAGE="Verkehrsverbund_Berlin-Brandenburg/Analyse"
WIKI_ROUTES_PAGE="Verkehrsverbund_Berlin-Brandenburg/Analyse/DE-BE-VBB-Routes"

ANALYSIS_OPTIONS="--language=de --check-access --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline"

# --expect-network-short
# --check-bus-stop 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

