import QtQuick 2.1
import BasicUIControls 1.0
import qb.components 1.0


//	USAGE:
//		baseurl = "https://raw.githubusercontent.com/oepi-loepi/toonanimations/master/" + "Balloon.qml"
//		must be the raw url to the qml file. Inside the qml file the image must also be raw url (show picture in new tab....)				
//
//	function balloonMode(balloonmode, animationtime, animationtype, visibleindimstate) {
//		animationInterval = interval between new sprites to show
//		qmlAnimationURL = animationtype by url ( like >>>>    "qrc:/qb/components/Balloon.qml"    <<<<)
//		balloonmode ="Start" or "Stop" to start and stop the animation (current animation will be finished
//		visibleindimstate ="yes" or "no" will choose if the animation is visible in the dimstate

//		balloonMode("Start",1000,"qrc:/qb/components/Roach.qml","no")
//		balloonMode("Start",2000,"qrc:/qb/components/Balloon.qml","yes")
//		onClicked: {balloonMode("Start",10000,"qrc:/qb/components/Santa.qml","no");}

//		balloonMode("Stop")

Tile {
	id: balloonTile
	property bool dimState: screenStateController.dimmedColors
	property string baseurl : "https://raw.githubusercontent.com/oepi-loepi/toonanimations/master/"

	NewTextLabel {
		id: clickText
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Animation!"
		anchors {
			top: parent.top
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		visible: !dimState
	}

	NewTextLabel {
		id: balloonText2
		width: (parent.width/3)-2 
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Balloon!"
		anchors {
			top: clickText.bottom
			topMargin: 1
			left: clickText.left
			}
		//onClicked: {balloonMode("Start",1000,"qrc:/qb/components/Balloon.qml","yes");}
		onClicked: {balloonMode("Start",1000, baseurl + "Balloon.qml","yes");}

		visible: !dimState
	}


	NewTextLabel {
		id: roachText2
		width: (parent.width/3)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Roach!"
		anchors {
			top: clickText.bottom
			topMargin: 1
			right: clickText.right 
			}
		onClicked: {balloonMode("Start",2000, baseurl + "Roach.qml","no");}

		visible: !dimState
	}

	NewTextLabel {
		id: santaText2
		width: (parent.width/3)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Santa!"
		anchors {
			top: clickText.bottom
			topMargin: 1
			horizontalCenter: clickText.horizontalCenter 
			}
		onClicked: {balloonMode("Start",10000, baseurl + "Santa.qml","yes");}

		visible: !dimState
	}



	NewTextLabel {
		id: clickText3
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Stop!"
		anchors {
			top: balloonText2.bottom
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		onClicked: {balloonMode("Stop");}
		visible: !dimState
	}


}
