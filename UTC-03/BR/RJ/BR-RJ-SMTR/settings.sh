#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="BR-RJ-SMTR"

PTNA_TIMEZONE="America/Sao_Paulo"

# PTNA extract source is an alternative to using Overpass API: use planet extracts. This file has been filtered for relevant data (similar to '[~'route'~'(bus|tram|train|...') during planet handling
PTNA_EXTRACT_SOURCE="$PREFIX.osm.pbf"
# Relations as members of route_master/route relations cannot be extracted ("osmium extract") if they are outside the search area.
# ptna-routes.pl will report their IDs to STDERR (*.log), they can be retrieved from a larger file using "osmium getid"
PTNA_EXTRACT_GETIDS="level4-rio-de-janeiro"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata='Q8678'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="RioÔnibus|Metrô Rio|MOBI-Rio|Transcarioca|Santa Cruz|Intersul|Internorte"
NETWORK_SHORT=""

ANALYSIS_PAGE="Rio_de_Janeiro/Transporte_público/Análise"
ANALYSIS_TALK="Talk:Rio_de_Janeiro/Transporte_público/Análise"
WIKI_ROUTES_PAGE="Rio_de_Janeiro/Transporte_público/SMTR_Linhas"

ANALYSIS_OPTIONS="--timezone=$PTNA_TIMEZONE --language=pt_BR --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-dates --check-way-type --check-service-type --check-bus-stop --check-roundabouts --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=allow --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Cidade do Rio de Janeiro, Rio de Janeiro"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5Bwikidata='Q8678'%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Secretaria Municipal de Transportes - SMTR"
PTNA_WWW_NETWORK_LINK="http://transportes.prefeitura.rio"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussão"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="SMTR Linhas"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
