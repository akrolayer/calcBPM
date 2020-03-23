@_private(sourceFile: "PlayMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension PlayMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 74)
        AnyView(PlayMetronome())
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 30)
        AnyView(ZStack{
                Color.white.onTapGesture {
                    UIApplication.shared.endEditting1()
            }
            VStack{
                Text(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "再生"))
                HStack{
                    TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM"), text:$BPMText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                
                    TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                }
                HStack{
                    TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM"), text:$BPMText2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                
                    TextField(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                }
                Button(action: {
                    self.audioPlayer.metronome(BPM:self.BPMText,PlayCount: self.Count)
                    self.audioPlayer.metronome(BPM:self.BPMText2,PlayCount: self.Count2)
                    
                }) {
                Text(__designTimeString("#20642.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "再生"))
                }
            }
        })
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditting1()) private func __preview__endEditting1() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 13)
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        )
#sourceLocation()
    }
}

typealias PlayMetronome = TabCalcBPMmetronome.PlayMetronome
typealias PlayMetronome_Previews = TabCalcBPMmetronome.PlayMetronome_Previews