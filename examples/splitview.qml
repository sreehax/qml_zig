/****************************************************************************
**
** Copyright (C) 2013 Digia Plc and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/legal
**
** This file is part of the Qt Quick Controls module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of Digia Plc and its Subsidiary(-ies) nor the names
**     of its contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 600
    height: 400

    SplitView {
        anchors.fill: parent

        Rectangle {
            id: column
            width: 200
            Layout.minimumWidth: 100
            Layout.maximumWidth: 300
            color: "lightsteelblue"
            Text {
                text: "Left"
                Component.onCompleted: {
                    x = parent.width/2
                    y = parent.height/2
                }
                color: "red"
                font.bold: true
                font.pointSize: 20
                MouseArea {
                    id: mouseArea_left
                    anchors.fill: parent
                    drag.target: parent
                }
            }
        }

        SplitView {
            orientation: Qt.Vertical
            Layout.fillWidth: true

            Rectangle {
                id: row1
                height: 200
                color: "lightblue"
                Layout.minimumHeight: 1
                Text {
                    text: "Top"
                    Component.onCompleted: {
                        x = parent.width/2
                        y = parent.height/2
                    }
                    color: "green"
                    font.bold: true
                    font.pointSize: 20
                    MouseArea {
                        id: mouseArea_top
                        anchors.fill: parent
                        drag.target: parent
                    }
                }
            }

            Rectangle {
                id: row2
                color: "lightgray"
                Text {
                    text: "End"
                    Component.onCompleted: {
                        x = parent.width/2
                        y = parent.height/2 
                    }
                    color: "darkblue"
                    font.bold: true
                    font.pointSize: 20
                    MouseArea {
                        id: mouseArea_end
                        anchors.fill: parent
                        drag.target: parent
                    }
                }
            }
        }
    }
}
