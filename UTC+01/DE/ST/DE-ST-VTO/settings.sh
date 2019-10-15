#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-ST-VTO"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name='Landkreis Harz'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrs- und Tarifgemeinschaft Ostharz|Harzer Verkehrsbetriebe|Harzer Verkehrsbetriebe GmbH|Harzer Schmalspurbahnen"
NETWORK_SHORT="VTO|HVB|HSB"

ANALYSIS_PAGE="Landkreis_Harz/Transportation/Analyse"
ANALYSIS_TALK="Talk:Landkreis_Harz/Transportation/Analyse"
WIKI_ROUTES_PAGE="Landkreis_Harz/Transportation/Analyse/DE-ST-VTO-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

