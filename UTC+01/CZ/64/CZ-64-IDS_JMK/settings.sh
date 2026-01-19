#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="CZ-64-IDS_JMK"

PTNA_TIMEZONE="Europe/Prague"

# PTNA extract source is an alternative to using Overpass API: use planet extracts. This file has been filtered for relevant data (similar to '[~'route'~'(bus|tram|train|...') during planet handling
PTNA_EXTRACT_SOURCE="$PREFIX.osm.pbf"
# Relations as members of route_master/route relations cannot be extracted ("osmium extract") if they are outside the search area.
# ptna-routes.pl will report their IDs to STDERR (*.log), they can be retrieved from a larger file using "osmium getid"
PTNA_EXTRACT_GETIDS="xx-region-southeast"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata='Q192697'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Integrovaný dopravní systém Jihomoravského kraje"
NETWORK_SHORT="IDS JMK"

ANALYSIS_PAGE="Jihomoravský_kraj/Linky_veřejné_dopravy/PTNA"
ANALYSIS_TALK="Talk:Jihomoravský_kraj/Linky_veřejné_dopravy/PTNA"
WIKI_ROUTES_PAGE="Jihomoravský_kraj/Linky_veřejné_dopravy/PTNA/IMS_JMK-Linky"

ANALYSIS_OPTIONS="--timezone=$PTNA_TIMEZONE --language=cs --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --expect-network-short --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --relaxed-begin-end-for=train --max-error=10 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
#

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Jihomoravský kraj"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation[wikidata='Q192697'][type=boundary]%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Integrovaný dopravní systém Jihomoravského kraje (IDS JMK)"
PTNA_WWW_NETWORK_LINK="https://www.idsjmk.cz/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Konfigurace"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="IDS JMK Linky"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
