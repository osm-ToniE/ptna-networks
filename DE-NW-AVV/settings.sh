#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-NW-AVV"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Aachener Verkehrsverbund'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);<<;rel[type='route'](r);)->.routes;(.routes;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Aachener Verkehrsverbund"
NETWORK_SHORT="AVV"

#EXPECT_NETWORK_SHORT_FOR="Aachener Verkehrsverbund"
#EXPECT_NETWORK_SHORT_AS="AVV"

ANALYSIS_PAGE="DE:Aachener_Verkehrsverbund/Analyse"
ANALYSIS_TALK="DE_talk:Aachener_Verkehrsverbund/Analyse"
WIKI_ROUTES_PAGE="DE:Aachener_Verkehrsverbund/Analyse/AVV-Linien"

ANALYSIS_OPTIONS="--language=de --positive-notes --max-error=10 --check-access --check-name-relaxed --check-sequence --check-osm-separator --check-motorway-link --check-stop-position --multiple-ref-type-entries=analyze --relaxed-begin-end-for=train,light_rail,subway,monorail,tram,bus --coloured-sketchline"

# --expect-network-long
# --check-bus-stop 
# --expect-network-short

