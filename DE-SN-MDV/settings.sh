#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-SN-MDV"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'(Leipzig|Nordsachsen|Halle .Saale.|Saalekreis|Burgenlandkreis|Altenburger Land)'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Mitteldeutscher Verkehrsverbund"
NETWORK_SHORT="MDV"

ANALYSIS_PAGE="Saxony/Transportation/Mitteldeutscher_Verkehrsverbund/Analyse"
WIKI_ROUTES_PAGE="Saxony/Transportation/Mitteldeutscher_Verkehrsverbund/Analyse/DE-SN-MDV-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --positive-notes --check-access --check-name --check-stop-position --check-sequence --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --coloured-sketchline"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=


# [http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bname~%27(Leipzig%7CNordsachsen%7CHalle%20.Saale.%7CSaalekreis%7CBurgenlandkreis%7CAltenburger%20Land)%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B Auf der OSM-Karte anzeigen].

