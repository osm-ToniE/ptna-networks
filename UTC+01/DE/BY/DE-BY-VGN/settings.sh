#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BY-VGN"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Großraum Nürnberg GmbH'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Großraum Nürnberg|Verkehrsverbund Großraum Nürnberg GmbH"
NETWORK_SHORT="VGN"

ANALYSIS_PAGE="Nürnberg/Transportation/Analyse"
ANALYSIS_TALK="Talk:Nürnberg/Transportation/Analyse"
WIKI_ROUTES_PAGE="Nürnberg/Transportation/Analyse/DE-BY-VGN-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-sequence --check-access --check-name-relaxed --check-stop-position --check-version --check-osm-separator --check-motorway-link --ptv1-compatibility=allow --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

