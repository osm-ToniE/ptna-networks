#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-NW-VRR"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Rhein-Ruhr'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);<<;rel[type='route'](r);)->.routes;(.routes;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Rhein-Ruhr|NRW Regionalverkehr"
NETWORK_SHORT="VRR"

#EXPECT_NETWORK_SHORT_FOR="Verkehrsverbund Rhein-Ruhr"
#EXPECT_NETWORK_SHORT_AS="VRR"

ANALYSIS_PAGE="VRR/Analyse"
WIKI_ROUTES_PAGE="VRR/Analyse/VRR-Linien"

ANALYSIS_OPTIONS="--language=de --positive-notes --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --relaxed-begin-end-for=train,light_rail,tram --coloured-sketchline"

# --expect-network-long
# --check-bus-stop 
# --expect-network-short
# --expect-network-long-for=

