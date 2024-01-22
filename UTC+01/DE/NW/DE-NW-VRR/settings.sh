#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-NW-VRR"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Rhein-Ruhr'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);<<;rel[~'type'~'route'](r);)->.routes;(.routes;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Rhein-Ruhr|NRW Regionalverkehr"
NETWORK_SHORT="VRR"

#EXPECT_NETWORK_SHORT_FOR="Verkehrsverbund Rhein-Ruhr"
#EXPECT_NETWORK_SHORT_AS="VRR"

ANALYSIS_PAGE="VRR/Analyse"
ANALYSIS_TALK="Talk:VRR/Analyse"
WIKI_ROUTES_PAGE="VRR/Analyse/VRR-Linien"

ANALYSIS_OPTIONS="--language=de --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --positive-notes --max-error=10 --check-version --check-access --check-way-type --check-service-type --check-name-relaxed --check-sequence --check-osm-separator --check-motorway-link --ptv1-compatibility=allow --multiple-ref-type-entries=analyze --relaxed-begin-end-for=train,light_rail,subway,monorail,tram,bus --coloured-sketchline"

# --check-stop-position
# --expect-network-long
# --check-bus-stop
# --expect-network-short
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Region Rhein-Ruhr"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dpublic_transport%5D%5Bname%3D%27Verkehrsverbund%20Rhein-Ruhr%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Verkehrsverbund Rhein-Ruhr;NRW Regionalverkehr"
PTNA_WWW_NETWORK_LINK="http://www.vrr.de/;"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="VRR Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
