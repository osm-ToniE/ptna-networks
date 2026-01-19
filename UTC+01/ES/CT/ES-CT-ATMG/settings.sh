#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="ES-CT-ATMG"

PTNA_TIMEZONE="Europe/Madrid"

# PTNA extract source is an alternative to using Overpass API: use planet extracts. This file has been filtered for relevant data (similar to '[~'route'~'(bus|tram|train|...') during planet handling
PTNA_EXTRACT_SOURCE="$PREFIX.osm.pbf"
# Relations as members of route_master/route relations cannot be extracted ("osmium extract") if they are outside the search area.
# ptna-routes.pl will report their IDs to STDERR (*.log), they can be retrieved from a larger file using "osmium getid"
PTNA_EXTRACT_GETIDS="catalonia"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata=Q7194][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Autoritat del Transport Metropolità de l’Àrea de Girona"
NETWORK_SHORT="ATM Girona"

ANALYSIS_PAGE="Ca:Catalunya/Transport_públic/PTNA"
ANALYSIS_TALK="Talk:Ca:Catalunya/Transport_públic/PTNA"
WIKI_ROUTES_PAGE="Ca:Catalunya/Transport_públic/PTNA/Rutes_de_ATM_Girona"

ANALYSIS_OPTIONS="--timezone=$PTNA_TIMEZONE --language=ca --table-show-also=from,via,to --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --check-bus-stop
# --check-roundabouts

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Província de Girona, Catalunya"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A[out%3Ajson][timeout%3A25]%3B%0A%0A(%0A%0A%20%20relation[%22wikidata%22%3D%22Q7194%22]%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Autoritat del Transport Metropolità de l’Àrea de Girona"
PTNA_WWW_NETWORK_LINK="https://www.atmgirona.cat/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="ATMG Rutes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
