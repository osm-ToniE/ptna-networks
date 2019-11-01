#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="US-Flixbus"

PTNA_TIMEZONE="America/Los_Angeles"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=[timeout:1800];area[wikidata=%27Q30%27];(rel(area)[route~%27(bus|coach)%27][~%27network|operator%27~%27(Fernb|fernb|Flix|flix)%27];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Flixbus"
NETWORK_SHORT=""

ANALYSIS_PAGE="United_States/Transportation/Bus_Routes/Flixbus/Analysis"
ANALYSIS_TALK="Talk:United_States/Transportation/Bus_Routes/Flixbus/Analysis"
WIKI_ROUTES_PAGE="United_States/Transportation/Bus_Routes/Flixbus/Flixbus_Lines"

ANALYSIS_OPTIONS="--allow-coach --check-access --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --relaxed-begin-end-for=train --max-error=10 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# 


