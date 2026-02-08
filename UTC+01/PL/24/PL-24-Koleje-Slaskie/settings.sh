#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="PL-24-Koleje-Slaskie"

PTNA_TIMEZONE="Europe/Warsaw"

# PTNA extract source is an alternative to using Overpass API: use planet extracts. This file has been filtered for relevant data (similar to '[~'route'~'(bus|tram|train|...') during planet handling
PTNA_EXTRACT_SOURCE="$PREFIX.osm.pbf"
# Relations as members of route_master/route relations cannot be extracted ("osmium extract") if they are outside the search area.
# ptna-routes.pl will report their IDs to STDERR (*.log), they can be retrieved from a larger file using "osmium getid"
PTNA_EXTRACT_GETIDS="xx-region-south"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:300];area[boundary=administrative][admin_level=4][wikidata='Q54181'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Koleje Śląskie"
NETWORK_SHORT="KŚ"

ANALYSIS_PAGE="Śląskie/Komunikacja_miejska/Analysis/Koleje_Śląskie"
ANALYSIS_TALK="Talk:Śląskie/Komunikacja_miejska/Analysis/Koleje_Śląskie"
WIKI_ROUTES_PAGE="Śląskie/Komunikacja_miejska/Analysis/Koleje_Śląskie/Koleje_Śląskie_Linie"

ANALYSIS_OPTIONS="--timezone=$PTNA_TIMEZONE --language=pl_PL --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --expect-network-long-for=KŚ --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --language=de
# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Województwo Śląskie"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[boundary%3Dadministrative][admin_level%3D4][wikidata='Q54181']%3B)%3Bout body%3B>%3Bout skel qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Koleje Śląskie"
PTNA_WWW_NETWORK_LINK="http://kolejeslaskie.com"

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Koleje Śląskie Linie"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
