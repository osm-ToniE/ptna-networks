
#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="FR-IDF-transports-daniel-meyer"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata=Q13917][type=boundary];(rel(area)[route~'bus'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG=""
NETWORK_SHORT="TRANSPORTS DANIEL MEYER"

ANALYSIS_PAGE=""
ANALYSIS_TALK=""
#
# Routes data is in GitHub only, not in OSM-Wiki
#
WIKI_ROUTES_PAGE=""

ANALYSIS_OPTIONS="--check-access --check-bus-stop --check-name --check-osm-separator --check-sequence --check-stop-position --check-version --coloured-sketchline --check-motorway-link --max-error=10 --multiple-ref-type-entries=analyze --positive-notes"

# --language=en
# --check-bus-stop 
# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

    