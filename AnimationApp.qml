//
// Animation! by Oepi-Loepi
//

import QtQuick 2.1
import qb.components 1.0
import qb.base 1.0
import FileIO 1.0

App {
	id: animationApp

	property url tileUrl : "AnimationTile.qml"
	property url thumbnailIcon: "qrc:/tsc/BalloonIcon.png"
	property AnimationConfigScreen animationConfigScreen
	property url animationConfigScreenUrl : "AnimationConfigScreen.qml"
	property bool optIN : false
	property string tmpOPTIN : "No"
	property string appURLString : "https://raw.githubusercontent.com/oepi-loepi/animation"

	property variant animationSettingsJson : {
		'tmpOPTIN': ""
	}

	property string githubMode : ""


	FileIO {
		id: animationSettingsFile
		source: "file:///mnt/data/tsc/animation_userSettings.json"
 	}

	function init() {
		registry.registerWidget("tile", tileUrl, this, null, {thumbLabel: qsTr("Animation!"), thumbIcon: thumbnailIcon, thumbCategory: "general", thumbWeight: 30, baseTileWeight: 10, thumbIconVAlignment: "center"});
		registry.registerWidget("screen", animationConfigScreenUrl, this, "animationConfigScreen");
	}

	Component.onCompleted: {
		getGithubMode()
		try {
			animationSettingsJson = JSON.parse(animationSettingsFile.read());
			if (animationSettingsJson['tmpOPTIN'] == "Yes") {
				optIN= true
			} else {
				optIN = false
			}
		} catch(e) {
		}
	}
	
	function getGithubMode() {
		if (githubMode.length <1){
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange=function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var resp = xmlhttp.responseText
					if (typeof resp != undefined) {
							githubMode = "master"
							console.log("Animation Data Githubmode (main/master) is : " + githubMode )
					}
				}
			}
		}
		xmlhttp.open("GET", appURLString + "/master/version.txt", true);
		xmlhttp.send();
		
		if (githubMode.length <1){
			var xmlhttp2 = new XMLHttpRequest();
			xmlhttp2.onreadystatechange=function() {
				if (xmlhttp2.readyState === 4 && xmlhttp2.status === 200) {
					var resp2 = xmlhttp2.responseText
					if (typeof resp2 != undefined) {
							githubMode = "main"
							console.log("Animation Data Githubmode (main/master) is : " + githubMode )
					}
				}
			}
			xmlhttp2.open("GET", appURLString + "/main/version.txt", true);
			xmlhttp2.send();
		}
	}

	
	


	function saveSettings() {
		if (optIN == true) {
			tmpOPTIN = "Yes";
		} else {
			tmpOPTIN = "No";
		}

 		var setJson = {
			"tmpOPTIN" : tmpOPTIN
		}
  		var doc3 = new XMLHttpRequest();
   		doc3.open("PUT", "file:///mnt/data/tsc/animation_userSettings.json");
   		doc3.send(JSON.stringify(setJson));
	}





}
