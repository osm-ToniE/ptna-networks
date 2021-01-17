#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-PAC-Vaucluse"

# avoid downloading same area/data if the data has already been downloaded and is not older than 1 hour (start analysis with: "ptna-networks.sh -fo" to 'f'orce download via 'o'verpass api)
OVERPASS_REUSE_ID="FR-PAC-Q12792-Q1458257-train-tram-bus"

# Use the Wikidata boundary of the Vaucluse département and a small political boundary to get the Orizo bus lines near Villeneuve-lès-Avignon
OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:300];area[wikidata~'^(Q12792|Q1458257)$'][type=boundary];(rel(area)[route~'(train|tram|bus)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="TER Provence - Alpes - Côte d'Azur|TUB Bollène|Trans'CoVe|TCVO|Sorg'en bus|C mon bus"
NETWORK_SHORT=""

ANALYSIS_PAGE="Vaucluse/Transports_en_commun/Analyse"
ANALYSIS_TALK="Talk:Vaucluse/Transports_en_commun/Analyse"
WIKI_ROUTES_PAGE="Vaucluse/Transports_en_commun/Lignes_Vaucluse"

ANALYSIS_OPTIONS="--language=fr --check-bus-stop --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-way-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --check-platform --check-roundabouts --expect-network-long --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-gtfs
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --positive-notes

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Vaucluse et Villeneuve-lès-Avignon"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation[wikidata~'^(Q12792|Q1458257)$'][type=boundary]%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="$NETWORK_LONG"
PTNA_WWW_NETWORK_LINK="http://www.transcove.com"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK=""

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes $NETWORK_LONG"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
