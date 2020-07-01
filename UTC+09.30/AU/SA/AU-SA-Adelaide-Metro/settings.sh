#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="AU-SA-Adelaide-Metro"

PTNA_TIMEZONE="Australia/Adelaide"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'^(Adelaide City Council|Adelaide Hills Council|City of Burnside|Campbelltown City Council|City of Charles Sturt|Town of Gawler|City of Holdfast Bay|City of Marion|City of Mitcham|The City of Norwood Payneham and St Peters|City of Onkaparinga|City of Playford|City of Port Adelaide Enfield|City of Prospect|City of Salisbury|City of Tea Tree Gully|City of Unley|The Corporation of the Town of Walkerville|City of West Torrens)$'][wikidata!='Q1030585'];(rel(area)[route~%27(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)%27];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Adelaide Metro"
NETWORK_SHORT=""

ANALYSIS_PAGE="Public_transport_in_Adelaide/Analysis"
ANALYSIS_TALK="Talk:Public_transport_in_Adelaide/Analysis"
WIKI_ROUTES_PAGE="Public_transport_in_Adelaide/Analysis/Adelaide_Metro_Routes"

ANALYSIS_OPTIONS="--check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-way-type --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --relaxed-begin-end-for=train --max-error=10 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

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
PTNA_WWW_REGION_NAME="South Australia / Adelaide Metropolitan Area"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bname~'^(Adelaide City Council|Adelaide Hills Council|City of Burnside|Campbelltown City Council|City of Charles Sturt|Town of Gawler|City of Holdfast Bay|City of Marion|City of Mitcham|The City of Norwood Payneham and St Peters|City of Onkaparinga|City of Playford|City of Port Adelaide Enfield|City of Prospect|City of Salisbury|City of Tea Tree Gully|City of Unley|The Corporation of the Town of Walkerville|City of West Torrens)$'%5D[wikidata!='Q1030585']%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Adelaide Metro"
PTNA_WWW_NETWORK_LINK="http://www.adelaidemetro.com.au/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Adelaide Metro Routes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
