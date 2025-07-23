#!/usr/bin/env qml6

import QtQuick
import QtQuick.Controls

ScrollView {
    Column {
        Slider {
            id: weightSlider
            from: 100
            value: 400
            to: 700

            onMoved: {
                kumikoTriangular.font.variableAxes = { "wght": weightSlider.value }
                kumikoSquare.font.variableAxes = { "wght": weightSlider.value }
            }
        }

        Row {
            Text {
                id: kumikoTriangular
                font.family: "KumikoPunch"
                font.pixelSize: 100
                font.variableAxes: { "wght": 400 }
                lineHeightMode: Text.FixedHeight
                lineHeight: 50
                text:
                    "óÓóÓóÓ<br>" +
                    "BbBbBb<br>" +
                    "bBbBbB<br>" +
                    "BbBbBb<br>" +
                    "bBbBbB<br>" +
                    "BbBbBb<br>" +
                    "bBbBbB<br>" +
                    "BbBbBb<br>" +
                    "bBbBbB<br>" +
                    "BbBbBb<br>" +
                    "bBbBbB<br>" +
                    "BbBbBb<br>" +
                    "bBbBbB<br>" +
                    "BbBbBb<br>" +
                    "bBbBbB<br>" +
                    "ŰűŰűŰű<br>"
            }

            Text {
                id: kumikoSquare
                font.family: "KumikoPunch"
                font.pixelSize: 100
                font.variableAxes: { "wght": 400 }
                lineHeightMode: Text.FixedHeight
                lineHeight: 100
                text:
                    "ΟοΟοΟο<br>" +
                    "οΟοΟοΟ<br>" +
                    "ΟοΟοΟο<br>" +
                    "οΟοΟοΟ<br>" +
                    "ΟοΟοΟο<br>" +
                    "οΟοΟοΟ<br>" +
                    "ΟοΟοΟο<br>" +
                    "οΟοΟοΟ<br>" +
                    "ΟοΟοΟο<br>" +
                    "οΟοΟοΟ<br>" +
                    "ΟοΟοΟο<br>" +
                    "οΟοΟοΟ<br>" +
                    "ΟοΟοΟο<br>" +
                    "οΟοΟοΟ<br>"
            }
        }
    }
}

