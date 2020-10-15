import QtQuick 2.1
import qb.components 1.0
import BasicUIControls 1.0;

Screen {
	id: animationConfigScreen
	screenTitle: "Animation app Setup"


	onShown: {

		enableOPTINToggle.isSwitchedOn = app.optIN;
		addCustomTopRightButton("Save");
	}

	onCustomButtonClicked: {
		app.saveSettings();
		hide();
	}

	Text {
		id: myLabeluk
		font.pixelSize:  isNxt ? 20 : 16
		font.family: qfont.regular.name
		text: "Allow this app to trigger animations on special events."
		anchors {
			left: parent.left
			top: parent.top			
			leftMargin: 20
			topMargin: 10
		}
	}

	Text {
		id: myLabeldut
		font.pixelSize:  isNxt ? 20 : 16
		font.family: qfont.regular.name
		text: "Sta toe dat deze app animaties laat zien bij speciale gelegenheden."
		anchors {
			left: parent.left
			top: myLabeluk.top			
			leftMargin: 20
			topMargin: 30
		}
	}


	Text {
		id: optINText
		font.pixelSize:  isNxt ? 20 : 16
		font.family: qfont.regular.name
		width:  160
		text: "Allow/toestaan"
		anchors {
			left: parent.left
			top: myLabeldut.bottom
			leftMargin: 20
			topMargin: 30
		}
	}

	OnOffToggle {
		id: enableOPTINToggle
		height:  30
		anchors.left: optINText.right
		anchors.leftMargin: 10
		anchors.top: optINText.top
		leftIsSwitchedOn: false
		onSelectedChangedByUser: {
			if (isSwitchedOn) {
				app.optIN = true;
			} else {
				app.optIN = false;
			}
		}
	}


}

