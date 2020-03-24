@_private(sourceFile: "PlayMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension PlayMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 99)
        AnyView(PlayMetronome())
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: NoteCheck(Note:)) private func __preview__NoteCheck(Note: String) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 94)
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 39)
        AnyView(ZStack{
                Color.white.onTapGesture {
                    UIApplication.shared.endEditting1()
            }
            VStack{
                Text(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "再生"))
                
                TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "BPM"), text:$BPMText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                if self.library.BPMIntCheck(BPM: self.BPMText){
                    HStack{
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                    }
                    HStack{
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                    }
                    
                    Button(action: {
                        if self.library.NoteIntCheck(Note: self.Note){ self.audioPlayer.metronome(BPM:self.library.calcQuarterNotes(BPM: self.BPMText, Notes: self.Note),PlayCount: self.Count)
                        }
                        if self.library.NoteIntCheck(Note: self.Note2){ self.audioPlayer.metronome(BPM:self.library.calcQuarterNotes(BPM: self.BPMText, Notes: self.Note2),PlayCount: self.Count2)
                        }
                        if self.library.NoteIntCheck(Note: self.Note3){ self.audioPlayer.metronome(BPM:self.library.calcQuarterNotes(BPM: self.BPMText, Notes: self.Note3),PlayCount: self.Count3)
                        }
                    }) {
                        Text(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[1].value.[0].arg[0].value.[0].value", fallback: "再生"))
                    }
                }else{
                    Text(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[1].[0].arg[0].value.[0].value", fallback: "10~1000を入力してください"))
                    .foregroundColor(.red)
                    .font(.headline)
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