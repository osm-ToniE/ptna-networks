#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-RP-VRN"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Rhein-Neckar'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Rhein-Neckar"
NETWORK_SHORT="VRN"

ANALYSIS_PAGE="Verkehrsverbund_Rhein-Neckar/Analyse"
ANALYSIS_TALK="Talk:Verkehrsverbund_Rhein-Neckar/Analyse"
WIKI_ROUTES_PAGE="Verkehrsverbund_Rhein-Neckar/Analyse/DE-RP-VRN-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-stop-position --check-sequence --check-osm-separator --check-osm-separator --check-motorway-link --positive-notes --check-name-relaxed --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

