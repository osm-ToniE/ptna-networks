#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-PAC-Bouches-du-Rhône"

PTNA_TIMEZONE="Europe/Paris"

# avoid downloading same area/data if the data has already been downloaded and is not older than 1 hour (start analysis with: "ptna-networks.sh -fo" to 'f'orce download)
# OVERPASS_REUSE_ID="FR-PAC-Q3240-train-bus"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata=Q3240][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="La Métropole Mobilité|L'Agglo en bus|La Métropole Mobilité - LeBus|La Métropole Mobilité - LeCar|Ulysse|Lignes de l'Agglo|Pays d'Aix mobilité|Ciotabus|Envia|Aix-en-Bus|Salon Etang Côte Bleue"
NETWORK_SHORT=""

ANALYSIS_PAGE="Bouches-du-Rhône/Transports_en_commun/Analyse"
ANALYSIS_TALK="Talk:Bouches-du-Rhône/Transports_en_commun/Analyse"
WIKI_ROUTES_PAGE="Bouches-du-Rhône/Transports_en_commun/Lignes_Bouches-du-Rhône"

ANALYSIS_OPTIONS="--language=fr --check-bus-stop --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-platform --check-roundabouts --expect-network-long --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Bouches-du-Rhône"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A[out%3Ajson][timeout%3A25]%3B%0A%0A(%0A%0A++relation[%22wikidata%22%3D%22Q3240%22]%3B%0A)%3B%0Aout+body%3B%0A%3E%3B%0Aout+skel+qt%3B{{data%3Aoverpass%2Cserver%3D%2F%2Foverpass.openstreetmap.fr%2Fapi%2F}}"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="La Métropole Mobilité"
PTNA_WWW_NETWORK_LINK="https://www.lepilote.com/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes Bouches-du-Rhône"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
