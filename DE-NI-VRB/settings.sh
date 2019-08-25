#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-NI-VRB"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Region Braunschweig'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Region Braunschweig|Verbundtarif Region Braunschweig|Verbundtarif Region Braunschweig (VRB)"
NETWORK_SHORT="VRB"

ANALYSIS_PAGE="Verkehrsverbund_Region_Braunschweig/Analyse"
ANALYSIS_TALK="Talk:Verkehrsverbund_Region_Braunschweig/Analyse"
WIKI_ROUTES_PAGE="Verkehrsverbund_Region_Braunschweig/Analyse/DE-NI-VRB-Routes"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-route-ref --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=


