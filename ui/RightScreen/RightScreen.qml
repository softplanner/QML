import QtQuick 2.0
import QtLocation 5.6
import QtPositioning 5.6



Rectangle {
    id: rightScreen
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.bottom: bottomBar.top

    Plugin {
        id: mapPlugin
//        name: "osm" // "mapboxgl", "esri", ...
        name: "osm"
        PluginParameter { name: "osm.useragent"; value: "My great Qt OSM application" }
        PluginParameter { name: "osm.mapping.host"; value: "http://osm.tile.server.address/" }
        PluginParameter { name: "osm.mapping.copyright"; value: "All mine" }
        PluginParameter { name: "osm.routing.host"; value: "http://osrm.server.address/viaroute" }
        PluginParameter { name: "osm.geocoding.host"; value: "http://geocoding.server.address" }

        // specify plugin parameters if necessary
        // PluginParameter {
        //     name:
        //     value:
        // }
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(37.46, -122.14) // Gujranwala, Paksitan
        zoomLevel: 14

        onErrorChanged: {
            console.log("Map error: " + map.error)
        }
    }

    width: parent.width * 2/3

}

