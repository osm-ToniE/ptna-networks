#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="FR-IDF-Peps"

# avoid downloading same area/data if the data has already been downloaded and is not older than 1 hour (start analysis with: "ptna-networks.sh -fo" to 'f'orce download)
OVERPASS_REUSE_ID="FR-IDF-Q12753-bus"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata=Q12753][type=boundary];(rel(area)[route~'bus'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG=""
NETWORK_SHORT="Pep's"

ANALYSIS_PAGE="WikiProject_France/Bus_Pep's/Analysis"
ANALYSIS_TALK="Talk:WikiProject_France/Bus_Pep's/Analysis"
#
# Routes data is in GitHub only, not in OSM-Wiki
#
WIKI_ROUTES_PAGE=""

ANALYSIS_OPTIONS="--language=fr --check-access --check-bus-stop --check-name-relaxed --check-osm-separator --check-sequence --check-stop-position --check-version --coloured-sketchline --check-motorway-link --max-error=10 --multiple-ref-type-entries=analyze --positive-notes"

# --check-bus-stop 
# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

