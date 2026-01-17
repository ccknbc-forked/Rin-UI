import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import RinUI
import "../../components"

ControlPage {
    title: qsTr("ColorPicker")

    // intro
    Text {
        Layout.fillWidth: true
        text: qsTr("A selectable color spectrum")
    }

    Column {
        Layout.fillWidth: true
        spacing: 4

        Text {
            typography: Typography.BodyStrong
            text: qsTr("ColorPicker Properties")
        }
        ControlShowcase {
            width: parent.width
            showcaseWidth: 300

            ColorPicker {
                id: picker
                isMoreVisible: moreBtnCheckBox.checked
                isColorSliderVisible: colorSliderCheckBox.checked
                isColorChannelInputVisible: colorChannelCheckBox.checked
                isHexInputVisible: hexCheckBox.checked
                isAlphaInputVisible: alphaInputCheckBox.checked
                alphaEnabled: alphaCheckBox.checked
                ringMode: rinCheckBox.checked

                color: "white"
            }

            showcase: [
                CheckBox {
                    id: moreBtnCheckBox
                    text: qsTr("isMoreButtonVisible")
                },
                CheckBox {
                    id: colorSliderCheckBox
                    text: qsTr("isColorSliderVisible")
                    checked: true
                },
                CheckBox {
                    id: colorChannelCheckBox
                    text: qsTr("isColorChannelInputVisible")
                    checked: true
                },
                CheckBox {
                    id: hexCheckBox
                    text: qsTr("isHexInputVisible")
                    checked: true
                },
                CheckBox {
                    id: alphaCheckBox
                    text: qsTr("alphaEnabled")
                },
                CheckBox {
                    id: alphaSliderCheckBox
                    text: qsTr("isAlphaSliderVisible")
                    checked: true
                },
                CheckBox {
                    id: alphaInputCheckBox
                    text: qsTr("isAlphaInputVisible")
                    checked: true
                },
                Text {
                    text: qsTr("Colorspectrum shape")
                },
                Column {
                    RadioButton {
                        text: qsTr("Box")
                        checked: true
                    }
                    RadioButton {
                        id: rinCheckBox  // rin (((
                        text: qsTr("Ring")
                    }
                },
                Text {
                    text: qsTr("ColorPicker applied on a Rectangle")
                },
                Rectangle {
                    width: 250
                    height: 100
                    color: picker.color
                }
            ]
        }
    }
}
