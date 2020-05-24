import QtQuick 2.1
import BasicUIControls 1.0
import qb.components 1.0


//	USAGE:
//		baseurl = "https://raw.githubusercontent.com/ToonSoftwareCollective/toonanimations/master/" + "Balloon.qml"
//		must be the raw url to the qml file. Inside the qml file the image must also be raw url (show picture in new tab....)				
//
//	function balloonMode(balloonmode, animationtime, animationtype, visibleindimstate, animationDuration) {
//		animationInterval = interval between new sprites to show
//		qmlAnimationURL = animationtype by url ( like >>>>    "qrc:/qb/components/Balloon.qml"    <<<<)
//		balloonmode ="Start" or "Stop" to start and stop the animation (current animation will be finished
//		visibleindimstate ="yes" or "no" will choose if the animation is visible in the dimstate
//		animationDuration = maximum time for the animation will last after the start command has finished and no stop command is given (in ms)

//		balloonMode("Start",1000,"qrc:/qb/components/Roach.qml","no",600000)
//		balloonMode("Start",2000,"qrc:/qb/components/Balloon.qml","yes",600000)
//		balloonMode("Start",10000,"qrc:/qb/components/Santa.qml","no",600000)

//		balloonMode("Stop")

Tile {
	id: balloonTile
	property bool dimState: screenStateController.dimmedColors
	property string baseurl : "https://raw.githubusercontent.com/ToonSoftwareCollective/toonanimations/master/"

	NewTextLabel {
		id: clickText
		width: isNxt ? 140 : 110;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Animation!"
		labelFontSize:12
		anchors {
			top: parent.top
			topMargin: 1
			left: parent.left
			leftMargin:2
			}
		visible: !dimState
	}

	NewTextLabel {
		id: stopText
		width: isNxt ? 140 : 110;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Stop!"
		labelFontSize:12
		anchors {
			top: parent.top
			topMargin: 1
			left: clickText.right
			leftMargin:2

			}
		onClicked: {balloonMode("Stop");}
		visible: !dimState
	}
//////////////////////////////////////////////////////////////////////////

	NewTextLabel {
		id: balloonText2
		width: (parent.width/5)-2 
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Balloon!"
		labelFontSize:12

		anchors {
			top: clickText.bottom
			topMargin: 1
			left: clickText.left
			}
		onClicked: {balloonMode("Start",1400, baseurl + "Balloon.qml","yes");}

		visible: !dimState
	}


	NewTextLabel {
		id: roachText2
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Roach!"
		labelFontSize:12

		anchors {
			top: clickText.bottom
			topMargin: 1
			left: balloonText2.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",3000, baseurl + "Roach.qml","no", 600000);}

		visible: !dimState
	}

	NewTextLabel {
		id: santaText2
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Santa!"
		labelFontSize:12

		anchors {
			top: clickText.bottom
			topMargin: 1
			left: roachText2.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",10000, baseurl + "Santa.qml","yes", 600000);}

		visible: !dimState
	}


	NewTextLabel {
		id: snow2
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Snow!"
		labelFontSize:12

		anchors {
			top: clickText.bottom
			topMargin: 1
			left: santaText2.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",10000, baseurl + "Snow.qml","yes", 600000);}

		visible: !dimState
	}

	NewTextLabel {
		id: whine2
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Whine!"
		labelFontSize:12

		anchors {
			top: clickText.bottom
			topMargin: 1
			left: snow2.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",3000, baseurl + "Whine.qml","yes", 600000);}

		visible: !dimState
	}

//////////////////////////////////////////////////////////////////
	NewTextLabel {
		id: confettiText2
		width: (parent.width/5)-2 
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "conf!"
		labelFontSize:12

		anchors {
			top: whine2.bottom
			topMargin: 1
			left: clickText.left
			}
		onClicked: {balloonMode("Start",1000, baseurl + "Confetti.qml","yes");}

		visible: !dimState
	}


	NewTextLabel {
		id: butterflyText2
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Buttfly"
		labelFontSize:12

		anchors {
			top: whine2.bottom
			topMargin: 1
			left: confettiText2.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",5000, baseurl + "Butterfly.qml","no", 600000);}

		visible: !dimState
	}

	NewTextLabel {
		id: newText2
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Roach2"
		labelFontSize:12

		anchors {
			top: whine2.bottom
			topMargin: 1
			left: butterflyText2.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",3000, baseurl + "Roach2.qml","no", 600000);}

		visible: !dimState
	}


	NewTextLabel {
		id: newText3
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "NA"
		labelFontSize:12

		anchors {
			top: whine2.bottom
			topMargin: 1
			left: newText2.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",10000, baseurl + "Snow.qml","yes", 600000);}

		visible: !dimState
	}

	NewTextLabel {
		id: newText4
		width: (parent.width/5)-2  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "NA"
		labelFontSize:12

		anchors {
			top: whine2.bottom
			topMargin: 1
			left: newText3.right
 			leftMargin:2
			}
		onClicked: {balloonMode("Start",3000, baseurl + "Whine.qml","yes", 600000);}

		visible: !dimState
	}

}
