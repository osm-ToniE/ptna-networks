#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-NI-VNN"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][wikidata~'^(Q5897|Q5907|Q5922|Q5913|Q5910|Q5923|Q5906|Q5915)$'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsgemeinschaft Nordost-Niedersachsen;BürgerBus Fredenbeck;BürgerBus Horneburg;BürgerBus Bad Bevensen;Bürgerbus Bad Fallingbostel;Bürgerbus Neuenkirchen;Bürgerbus Schneverdingen;Bürgerbus Walsrode"
NETWORK_SHORT="VNN"

ANALYSIS_PAGE="Verkehrsgemeinschaft_Nordost-Niedersachsen/Analyse"
ANALYSIS_TALK="Talk:Verkehrsgemeinschaft_Nordost-Niedersachsen/Analyse"
WIKI_ROUTES_PAGE="Verkehrsgemeinschaft_Nordost-Niedersachsen/Analyse/VNN-Linien"

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
PTNA_WWW_REGION_NAME="Landkreise Cuxhaven, Harburg, Heidekreis, Lüchow-Dannenberg, Lüneburg, Rotenburg (Wümme), Stade, Uelzen"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bwikidata~'^(Q5897|Q5907|Q5922|Q5913|Q5910|Q5923|Q5906|Q5915)$'%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Verkehrsgemeinschaft_Nordost-Niedersachsen; und andere"
PTNA_WWW_NETWORK_LINK="https://www.vnn.de/start;"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="VNN Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"