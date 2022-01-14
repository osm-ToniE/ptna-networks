#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="EU-Eurolines"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=[timeout:1800];(rel(poly:'66.6569762 -23.0736582 36.7092056 -8.9953345 35.9404351 -5.6214121 35.6139346 14.4332346 34.7008006 24.1315366 34.4389993 32.7441537 35.8614952 34.7724255 36.5499339 28.2827078 38.4530304 26.3152919 40.3714182 26.0499145 41.3793698 29.5730723 46.9807515 38.3381215 68.5976645 41.3125962 71.2893993 28.3897039')[~'route'~'(bus|train|coach)'][~'network|operator'~'(Eurolines)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Eurolines"
NETWORK_SHORT=""

ANALYSIS_PAGE="Europa/Transportation/Analyse/Eurolines"
ANALYSIS_TALK="Talk:Europa/Transportation/Analyse/Eurolines"
WIKI_ROUTES_PAGE= # "Europa/Transportation/Analyse/Eurolines_Linien"

ANALYSIS_OPTIONS="--allow-coach --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --relaxed-begin-end-for=train --max-error=10 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

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
PTNA_WWW_REGION_NAME="Europe"
PTNA_WWW_REGION_LINK="https://umap.openstreetmap.de/de/map/ptna-search-area-europe_1636"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Eurolines"
PTNA_WWW_NETWORK_LINK="https://www.eurolines.com/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Eurolines Lines"
PTNA_WWW_ROUTES_LINK= #"https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
