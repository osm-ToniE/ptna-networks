#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-PAC-Lignes-d-Azur"

PTNA_TIMEZONE="Europe/Paris"

# avoid downloading same area/data if the data has already been downloaded and is not older than 1 hour (start analysis with: "ptna-networks.sh -fo" to 'f'orce download via 'o'verpass api)
# OVERPASS_REUSE_ID="FR-PAC-Q3333866-train-bus"

# Use the Wikidata boundary of the departement Alpes-Maritimes
OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:600];area[wikidata=Q3333866][type=boundary];(rel(area)[~'route'~'(bus|tram)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Lignes d'Azur"
NETWORK_SHORT=""

ANALYSIS_PAGE="Nice/Transports_en_commun/Analyse"
ANALYSIS_TALK="Talk:Nice/Transports_en_commun/Analyse"
WIKI_ROUTES_PAGE="Nice/Transports_en_commun/Lignes_Nice"

ANALYSIS_OPTIONS="--language=fr --check-bus-stop --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --check-platform --check-roundabouts --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Métropole Nice Côte d'Azur"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[wikidata%3DQ3333866][type%3Dboundary]%3B)%3Bout+body%3B%3E%3Bout+skel+qt%3B{{data%3Aoverpass%2Cserver%3D%2F%2Foverpass.openstreetmap.fr%2Fapi%2F}}"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Lignes d'Azur"
PTNA_WWW_NETWORK_LINK="https://www.lignesdazur.com/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes Métropole Nice Côte d'Azur"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
