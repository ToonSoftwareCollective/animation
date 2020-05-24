import QtQuick 2.1
import BasicUIControls 1.0
import qb.components 1.0


//	USAGE:
//		baseurl = "https://raw.githubusercontent.com/ToonSoftwareCollective/toonanimations/master/" + "Balloon.qml"
//		must be the raw url to the qml file. Inside the qml file the image must also be raw url (show picture in new tab....)				
//
//	AnimationScreen(animationRunning, animationtime, animationtype, visibleindimstate, animationDuration) {
//		animationscreen.animationInterval = interval between new sprites to show
//		animationscreen.qmlAnimationURL = animationtype by url ( like >>>>    "qrc:/qb/components/Balloon.qml"    <<<<)
//		animationscreen.animationRunning =true or false to start and stop the animation (current animation will be finished
//		animationscreen.visibleindimstate =true or falsewill choose if the animation is visible in the dimstate
//		animationscreen.animationDuration = maximum time for the animation will last after the start command has finished and no stop command is given (in ms)

//		true,1000,"qrc:/qb/components/Roach.qml",true,600000
//		true,2000,"qrc:/qb/components/Balloon.qml",true,600000
//		true,10000,"qrc:/qb/components/Santa.qml",false,600000
//		false,,1000,"qrc:/qb/components/Roach.qml","no",600000

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
		onClicked: {
			animationscreen.animationRunning= false;
			animationscreen.qmlAnimationURL= baseurl + "Balloon.qml";
			animationscreen.animationInterval= 1000;
			animationscreen.isVisibleinDimState= true
			}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Balloon.qml";
			animationscreen.animationInterval= 1000;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Roach.qml";
			animationscreen.animationInterval= 3000;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Santa.qml";
			animationscreen.animationInterval= 10000;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Snow.qml";
			animationscreen.animationInterval= 1500;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Whine.qml";
			animationscreen.animationInterval= 2000;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Confetti.qml";
			animationscreen.animationInterval= 1300;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Butterfly.qml";
			animationscreen.animationInterval= 3000;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Roach2.qml";
			animationscreen.animationInterval= 3000;
			animationscreen.isVisibleinDimState= false
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Balloon.qml";
			animationscreen.animationInterval= 1000;
			animationscreen.isVisibleinDimState= true
		}
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
		onClicked: {
			animationscreen.animationRunning= true;
			animationscreen.qmlAnimationURL= baseurl + "Balloon.qml";
			animationscreen.animationInterval= 1000;
			animationscreen.isVisibleinDimState= true
		}
		visible: !dimState
	}

}
