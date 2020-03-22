@_private(sourceFile: "ContentView.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/ContentView.swift", line: 39)
        AnyView(__designTimeSelection(ContentView(), "#19904.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/ContentView.swift", line: 15)
        AnyView(__designTimeSelection(TabView(selection: __designTimeSelection($selection, "#19904.[1].[1].property.[0].[0].arg[0].value")){
            __designTimeSelection(CalcMetronome()
                .tabItem {
                    __designTimeSelection(VStack {
                        __designTimeSelection(Image(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "first")), "#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "First")), "#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[1]")
                    }, "#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0]")
                }
                .tag(__designTimeInteger("#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 0)), "#19904.[1].[1].property.[0].[0].arg[1].value.[0]")
            __designTimeSelection(Text(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value.[0].value", fallback: "Second View"))
                .font(.title)
                .tabItem {
                    __designTimeSelection(VStack {
                        __designTimeSelection(Image(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "second")), "#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "Second")), "#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.[0].arg[0].value.[1]")
                    }, "#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.[0]")
                }
                .tag(__designTimeInteger("#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 1)), "#19904.[1].[1].property.[0].[0].arg[1].value.[1]")
        }, "#19904.[1].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = TabCalcBPMmetronome.ContentView
typealias ContentView_Previews = TabCalcBPMmetronome.ContentView_Previews