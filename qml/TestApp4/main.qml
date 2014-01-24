import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {

    property int textSize: 32

    initialPage: mainPage

    TabGroup {
        currentTab: midPage
        LeftPage {
            id: leftPage
        }
        MidPage{
            id: midPage
        }
        RightPage {
            id: rightPage
        }
    }

    MainPage {
        id: mainPage
        Rectangle {
            id: wallpaper
            gradient: Gradient {
                GradientStop { position: 0.0; color: "lightsteelblue" }
                GradientStop { position: 1.0; color: "steelblue" }
            }
        }
    }

    onInPortraitChanged: {
        wallpaper.width = (inPortrait)?480:854
        wallpaper.height = (inPortrait)?854:480
    }

}
