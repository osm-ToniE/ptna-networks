#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="GB-GLG-SPT"

PTNA_TIMEZONE="Europe/London"

# PTNA extract source is an alternative to using Overpass API: use planet extracts. This file has been filtered for relevant data (similar to '[~'route'~'(bus|tram|train|...') during planet handling
PTNA_EXTRACT_SOURCE="$PREFIX.osm.pbf"
# Relations as members of route_master/route relations cannot be extracted ("osmium extract") if they are outside the search area.
# ptna-routes.pl will report their IDs to STDERR (*.log), they can be retrieved from a larger file using "osmium getid"
PTNA_EXTRACT_GETIDS="united-kingdom"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:900];area[wikidata~'^(Q55934339|Q208121|Q211889|Q207111|Q209142|Q211925|Q211091)$'];(rel(area)[~'route'~'(bus|coach|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Strathclyde Partnership for Transport"
NETWORK_SHORT="SPT"

ANALYSIS_PAGE="Glasgow/PublicTransport/PTNA/Analysis"
ANALYSIS_TALK="Talk:Glasgow/PublicTransport/PTNA/Analysis"
WIKI_ROUTES_PAGE="Glasgow/PublicTransport/PTNA/SPT_Routes"

ANALYSIS_OPTIONS="--check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --allow-coach --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --max-error=20 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --check-bus-stop --check-roundabouts"

# --check-motorway-link
# --check-platform
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-ford
# --relaxed-begin-end-for=bus

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="City of Glasgow, Scotland, including (as search area) East Dunbartonshire, East Renfrewshire, North Lanarkshire, Renfrewshire, South Lanarkshire, West Dunbartonshire"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5Bwikidata~'^(Q55934339|Q208121|Q211889|Q207111|Q209142|Q211925|Q211091)$'%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Strathclyde Partnership for Transport (SPT)"
PTNA_WWW_NETWORK_LINK="https://www.spt.co.uk/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="SPT Routes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
