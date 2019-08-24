#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="LU-Luxtram"

# avoid downloading same area/data if the data has already been downloaded and is not older than 1 hour (start analysis with: "ptna-networks.sh -fo" to 'f'orce download)
OVERPASS_REUSE_ID="LU-All"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=2][int_name='Luxembourg'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG=""
NETWORK_SHORT="Luxtram"

ANALYSIS_PAGE="WikiProject_Luxembourg/Public_Transport/Analysis/Luxtram"
ANALYSIS_TALK="Talk:WikiProject_Luxembourg/Public_Transport/Analysis/Luxtram"
WIKI_ROUTES_PAGE="WikiProject_Luxembourg/Public_Transport/Analysis/LU-Luxtram-Routes"

ANALYSIS_OPTIONS="--check-access --check-bus-stop --check-platform --check-roundabouts --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --expect-network-short"

# --language=en
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

