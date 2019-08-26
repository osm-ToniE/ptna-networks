#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-SN-VMS"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Mittelsachsen'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Mittelsachsen|Verkehrsverbund Mittelsachsen GmbH"
NETWORK_SHORT="VMS"

ANALYSIS_PAGE="Saxony/Transportation/Verkehrsverbund_Mittelsachsen/Analyse"
ANALYSIS_TALK="Talk:Saxony/Transportation/Verkehrsverbund_Mittelsachsen/Analyse"
WIKI_ROUTES_PAGE="Saxony/Transportation/Verkehrsverbund_Mittelsachsen/Analyse/DE-SN-VMS-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --positive-notes --check-access --check-name-relaxed --check-stop-position --check-sequence --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

