import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes.Ambiance 1.3
import Ubuntu.Components.Popups 1.3
import Qt.labs.settings 1.0
import "../components"

ListPage {
    id: root

    pagemode: "talaan"
    favorite: false
    filter: "all"
    groupings: "name"
    order: "normal"
    searchFilter: "all"
    searchGroupings: "name"
    searchOrder: "normal"
    searchCondition: "="
    searchType: "default"
    searchText: ""

    searchingText: i18n.tr("Searching Lists")
    pageTitle: i18n.tr("Lists")
    searchPlaceHolderText: i18n.tr("Search Lists")
    emptyTitle: i18n.tr("No List Created Yet")
    emptySubTitle: root.intCurSectionIndex === 1 ? i18n.tr(
                                                       "Favorite a list by using the 'starred' action") : mainLayout.multiColumn ? i18n.tr("Tap/Click the '+' button to add a List") : i18n.tr("Swipe from the dome at the bottom edge to add a List")
    emptyIconName: "stock_note"
    loadingTitle: i18n.tr("Loading Lists")
    actions: [addRadialAction, mainView.bottomMenuActions[4], mainView.bottomMenuActions[1], mainView.bottomMenuActions[2], mainView.bottomMenuActions[3], mainView.bottomMenuActions[5]]
    searchActionIndex: 3

    Settings {
        property alias defaultTabGroup: root.groupings
        property alias defaultTabGroupOrder: root.order
        property alias defaultTabFilter: root.filter
        property alias currentTalaanSection: root.sectionSelectedIndex
    }
}
