#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-MV-MVVG"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name='Mecklenburgische Seenplatte'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Mecklenburg-Vorpommersche-Verkehrsgesellschaft"
NETWORK_SHORT="MVVG"

#ANALYSIS_PAGE="Mecklenburg-Vorpommern/ÖPNV/MVVG/Analyse"
#ANALYSIS_TALK="Talk:Mecklenburg-Vorpommern/ÖPNV/MVVG/Analyse"
#WIKI_ROUTES_PAGE="Mecklenburg-Vorpommern/ÖPNV/MVVG/Analyse/MVVG-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --multiple-ref-type-entries=analyze
# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

