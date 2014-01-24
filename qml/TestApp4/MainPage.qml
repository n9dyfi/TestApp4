import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    tools: ToolBarLayout {
        id: tabTools
        ButtonRow {
            checkedButton: midButton
            TabButton {
                text: "LEFT"
                tab: leftPage
            }
            TabButton {
                id: midButton
                text: "MIDDLE"
                tab: midPage
            }
            TabButton {
                text: "RIGHT"
                tab: rightPage
            }
        }
    }
}
