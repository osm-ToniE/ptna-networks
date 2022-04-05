#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-BY-VBP-VLP"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name='Passau'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsbetriebsgesellschaft Passau|Verkehrsgemeinschaft Landkreis Passau"
NETWORK_SHORT="VBP|VLP"

ANALYSIS_PAGE="Passau/Transportation/Analyse"
ANALYSIS_TALK="Talk:Passau/Transportation/Analyse"
WIKI_ROUTES_PAGE="Passau/Transportation/Analyse/DE-BY-VBP-VLP-Linien"

ANALYSIS_OPTIONS="--language=de --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=allow --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Diese Analyse wird demnächst eingestellt, siehe DE-BY-VBP und DE-BY-VDW"
PTNA_WWW_REGION_LINK=""

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Verkehrsbetriebsgesellschaft Passau;Die Verkehrsgemeinschaft Landkreis Passau ist seit 01.09.2021 Teil des Verbundtarif DonauWald (VDW)"
PTNA_WWW_NETWORK_LINK="https://vbp.stadtwerke-passau.de/;https://vdw-mobil.de/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="VBP/VLP Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
