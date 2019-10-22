#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-RP-VRM"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Rhein-Mosel'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Rhein-Mosel|Verkehrsverbund Rhein-Mosel GmbH"
NETWORK_SHORT="VRM"

ANALYSIS_PAGE="Verkehrsverbund_Rhein-Mosel/Analyse"
ANALYSIS_TALK="Talk:Verkehrsverbund_Rhein-Mosel/Analyse"
WIKI_ROUTES_PAGE="Verkehrsverbund_Rhein-Mosel/Analyse/DE-RP-VRM-Routes"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --multiple-ref-type-entries=analyze --coloured-sketchline  --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

