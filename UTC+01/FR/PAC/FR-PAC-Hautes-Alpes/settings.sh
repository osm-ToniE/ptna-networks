#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-PAC-Hautes-Alpes"

PTNA_TIMEZONE="Europe/Paris"

# avoid downloading same area/data if the data has already been downloaded and is not older than 1 hour (start analysis with: "ptna-networks.sh -fo" to 'f'orce download)
# OVERPASS_REUSE_ID="FR-PAC-Q3125-train-bus"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:300];area[wikidata~'^(Q3125|Q871282|Q1018595)$'][type=boundary];(rel(area)[route~'(train|tram|bus)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="TER Provence-Alpes-Côte d'Azur|L'Agglo en bus|TUB Briançon"
NETWORK_SHORT=""

ANALYSIS_PAGE="Hautes-Alpes/Transports_en_commun/Analyse"
ANALYSIS_TALK="Talk:Hautes-Alpes/Transports_en_commun/Analyse"
WIKI_ROUTES_PAGE="Hautes-Alpes/Transports_en_commun/Lignes_Hautes-Alpes"

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
PTNA_WWW_REGION_NAME="Hautes-Alpes, Claret (04) et Curbans (04)"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[wikidata~%27^(Q3125|Q871282|Q1018595)%24%27][type%3Dboundary]%3B)%3Bout+body%3B%3E%3Bout+skel+qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="TER Provence-Alpes-Côte d'Azur;L'Agglo en bus;Bustub Briançon"
PTNA_WWW_NETWORK_LINK="https://www.ter.sncf.com/sud-provence-alpes-cote-d-azur;https://www.gap-tallard-durance.fr/fr/lagglo-au-quotidien/transports-lagglo-en-bus/reseau-lagglo-en-bus/;https://www.bustub.com/fr"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK=""

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes Hautes-Alpes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
