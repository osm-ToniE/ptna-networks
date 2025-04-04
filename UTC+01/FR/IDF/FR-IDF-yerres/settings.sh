
#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-IDF-yerres"

PTNA_TIMEZONE="Europe/Paris"

# avoid downloading same area/data if the data has already been downloaded and is not older than 1 hour (start analysis with: "ptna-networks.sh -fo" to 'f'orce download)
OVERPASS_REUSE_ID="FR-IDF-Q13917-bus"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata=Q13917][type=boundary];(rel(area)[~'route'~'bus'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG=""
NETWORK_SHORT="Yerres"

ANALYSIS_PAGE=""
ANALYSIS_TALK=""
#
# Routes data is in GitHub only, not in OSM-Wiki
#
WIKI_ROUTES_PAGE=""
GITHUB_ROUTES_PAGE="UTC+01/FR/IDF/$PREFIX/$PREFIX-Routes.txt"

ANALYSIS_OPTIONS="--language=fr --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-dates --check-way-type --check-service-type --check-bus-stop --check-name-relaxed --check-osm-separator --check-sequence --check-stop-position --check-version --coloured-sketchline --check-motorway-link --max-error=10 --multiple-ref-type-entries=analyze --positive-notes"

# --check-bus-stop
# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Île-de-France"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5B%22wikidata%22%3D%22Q13917%22%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B%7B%7Bdata%3Aoverpass%2Cserver%3D%2F%2Foverpass.openstreetmap.fr%2Fapi%2F%7D%7D"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="$NETWORK_SHORT"
PTNA_WWW_NETWORK_LINK=""

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK=""

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="$NETWORK_SHORT lignes"
PTNA_WWW_ROUTES_LINK="https://github.com/osm-ToniE/ptna-networks/raw/master/$GITHUB_ROUTES_PAGE"
