#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-BY-VGI"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'(Ingolstadt|Landkreis Eichstätt|Landkreis Pfaffenhofen an der Ilm|Landkreis Neuburg-Schrobenhausen)'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Zweckverband Verkehrsverbund Großraum Ingolstadt|Verkehrsverbund Großraum Ingolstadt|Bayerische Eisenbahngesellschaft"
NETWORK_SHORT="VGI|BEG"

ANALYSIS_PAGE="Ingolstadt/Transportation/Analyse"
ANALYSIS_TALK="Talk:Ingolstadt/Transportation/Analyse"
WIKI_ROUTES_PAGE="Ingolstadt/Transportation/VGI-Linien-gesamt"

ANALYSIS_OPTIONS="--language=de --check-bus-stop --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --check-roundabouts --expect-network-long --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Großraum Ingolstadt"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[boundary%3Dadministrative][admin_level%3D6][name~%27(Ingolstadt|Landkreis%20Eichst%C3%A4tt|Landkreis%20Pfaffenhofen%20an%20der%20Ilm|Landkreis%20Neuburg-Schrobenhausen)%27]%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Verkehrsverbund Großraum Ingolstadt"
PTNA_WWW_NETWORK_LINK="https://www.invg.de/start_vgi_de"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="VGI Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
