@_private(sourceFile: "PlayMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension PlayMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 74)
        AnyView(__designTimeSelection(PlayMetronome(), "#20642.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 30)
        AnyView(__designTimeSelection(ZStack{
                __designTimeSelection(Color.white.onTapGesture {
                    __designTimeSelection(UIApplication.shared.endEditting1(), "#20642.[2].[6].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }, "#20642.[2].[6].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(VStack{
                __designTimeSelection(Text(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "再生")), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                __designTimeSelection(HStack{
                    __designTimeSelection(TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM"), text:__designTimeSelection($BPMText, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].arg[1].value"))
                    .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value"))
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0]")
                
                    __designTimeSelection(TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:__designTimeSelection($Count, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value"))
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1]")
                }, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                __designTimeSelection(HStack{
                    __designTimeSelection(TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM"), text:__designTimeSelection($BPMText2, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value"))
                    .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].modifier[0].arg[0].value"))
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0]")
                
                    __designTimeSelection(TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:__designTimeSelection($Count2, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[0].value"))
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1]")
                }, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.BPMText, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.Count, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[1].value")), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[0].value.[0]")
                    __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.BPMText2, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[0].value.[1].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.Count2, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[0].value.[1].modifier[0].arg[1].value")), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[0].value.[1]")
                    
                }) {
                __designTimeSelection(Text(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "再生")), "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[1].value.[0]")
                }, "#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3]")
            }, "#20642.[2].[6].property.[0].[0].arg[0].value.[1]")
        }, "#20642.[2].[6].property.[0].[0]"))
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditting1()) private func __preview__endEditting1() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 13)
        __designTimeSelection(sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        ), "#20642.[1].[0].[0]")
#sourceLocation()
    }
}

typealias PlayMetronome = TabCalcBPMmetronome.PlayMetronome
typealias PlayMetronome_Previews = TabCalcBPMmetronome.PlayMetronome_Previews