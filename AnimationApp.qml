//
// Animation! v1.0.0 by Oepi-Loepi
//

import QtQuick 2.1
import qb.components 1.0
import qb.base 1.0;

App {
	id: animationApp

	property url tileUrl : "AnimationTile.qml"
	property url thumbnailIcon: "qrc:/tsc/BalloonIcon.png"

	function init() {
		registry.registerWidget("tile", tileUrl, this, null, {thumbLabel: qsTr("Animation!"), thumbIcon: thumbnailIcon, thumbCategory: "general", thumbWeight: 30, baseTileWeight: 10, thumbIconVAlignment: "center"});
	}

}
