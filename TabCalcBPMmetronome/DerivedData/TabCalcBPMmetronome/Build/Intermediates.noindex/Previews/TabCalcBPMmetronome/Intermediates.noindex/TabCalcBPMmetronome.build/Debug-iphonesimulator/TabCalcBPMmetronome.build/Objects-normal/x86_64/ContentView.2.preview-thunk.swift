@_private(sourceFile: "ContentView.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/ContentView.swift", line: 38)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/ContentView.swift", line: 15)
        AnyView(TabView(selection: $selection){
            CalcMetronome()
                .tabItem {
                    VStack {
                        Image(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "first"))
                        Text(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "First"))
                    }
                }
                .tag(__designTimeInteger("#19904.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 0))
            PlayMetronome()
                .tabItem {
                    VStack {
                        Image(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "second"))
                        Text(__designTimeString("#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "Second"))
                    }
                }
                .tag(__designTimeInteger("#19904.[1].[1].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 1))
        })
#sourceLocation()
    }
}

typealias ContentView = TabCalcBPMmetronome.ContentView
typealias ContentView_Previews = TabCalcBPMmetronome.ContentView_Previews