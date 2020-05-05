#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-BY-MVV"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=[timeout:300];area[boundary=administrative][admin_level=6][name~'(Dachau|München|Ebersberg|Erding|Starnberg|Freising|Tölz|Wolfratshausen|Fürstenfeldbruck)'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Münchner Verkehrs- und Tarifverbund|Münchner Linien|Linientaxi Grünwald|Bürgerbus Gauting|Bürgerbus Oberbiberg|Stadtbus Dorfen|Freisinger Parkhaus und Verkehrs-GmbH|Ortsverkehr Markt Glonn"
NETWORK_SHORT="MVV"

ANALYSIS_PAGE="München/Transportation/Analyse"
ANALYSIS_TALK="Talk:München/Transportation/Analyse"
WIKI_ROUTES_PAGE="München/Transportation/MVV-Linien-gesamt"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-way-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --check-route-ref --check-way-type --multiple-ref-type-entries=analyze --coloured-sketchline --expect-network-long --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop
# --positive-notes
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Region München"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bname~%27(Dachau%7CM%C3%BCnchen%7CEbersberg%7CErding%7CStarnberg%7CFreising%7CT%C3%B6lz%7CWolfratshausen%7CF%C3%BCrstenfeldbruck)%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Münchner Verkehrs- und Tarifverbund und weitere"
PTNA_WWW_NETWORK_LINK="https://www.mvv-muenchen.de/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="MVV Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
