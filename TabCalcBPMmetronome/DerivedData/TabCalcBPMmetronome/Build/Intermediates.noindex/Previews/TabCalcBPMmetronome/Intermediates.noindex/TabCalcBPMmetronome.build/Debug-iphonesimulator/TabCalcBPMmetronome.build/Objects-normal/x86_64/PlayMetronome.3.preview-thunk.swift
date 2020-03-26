@_private(sourceFile: "PlayMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension PlayMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 139)
        AnyView(__designTimeSelection(PlayMetronome(), "#20642.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: NoteCheck(Note:)) private func __preview__NoteCheck(Note: String) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 134)
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 39)
        AnyView(__designTimeSelection(ZStack{
                __designTimeSelection(Color.white.onTapGesture {
                    __designTimeSelection(UIApplication.shared.endEditting1(), "#20642.[2].[15].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }, "#20642.[2].[15].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(VStack{
                __designTimeSelection(Text(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "再生")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                
                __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "BPM"), text:__designTimeSelection($BPMText, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value"))
                .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value"))
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                if self.library.BPMIntCheck(BPM: self.BPMText){
                    __designTimeSelection(HStack{
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:__designTimeSelection($Note, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[0].arg[1].value"))
                            .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[0].modifier[0].arg[0].value"))
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[0]")
                        
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:__designTimeSelection($Count, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[1].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[1].modifier[0].arg[0].value"))
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[0].value.[1]")
                    }, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0]")
                    __designTimeSelection(HStack{
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:__designTimeSelection($Note2, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].arg[1].value"))
                            .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].modifier[0].arg[0].value"))
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0]")
                        
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:__designTimeSelection($Count2, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].modifier[0].arg[0].value"))
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1]")
                    }, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1]")
                    
                    __designTimeSelection(HStack{
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:__designTimeSelection($Note3, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].arg[1].value"))
                            .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].modifier[0].arg[0].value"))
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0]")
                        
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:__designTimeSelection($Count3, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].modifier[0].arg[0].value"))
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1]")
                    }, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2]")
                    
                    __designTimeSelection(HStack{
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:__designTimeSelection($Note4, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].arg[1].value"))
                            .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].modifier[0].arg[0].value"))
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0]")
                        
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:__designTimeSelection($Count4, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].modifier[0].arg[0].value"))
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1]")
                    }, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3]")
                    
                    __designTimeSelection(HStack{
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:__designTimeSelection($Note5, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].arg[1].value"))
                            .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].modifier[0].arg[0].value"))
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0]")
                        
                        __designTimeSelection(TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:__designTimeSelection($Count5, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].modifier[0].arg[0].value"))
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100)), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1]")
                    }, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4]")
                    
                    __designTimeSelection(Button(action: {
                        if self.library.NoteIntCheck(Note: self.Note){ __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.library.calcQuarterNotes(BPM: __designTimeSelection(self.BPMText, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), Notes: __designTimeSelection(self.Note, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[0].[0].[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.Count, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[0].[0].[0].modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[0].[0].[0]")
                        }
                        if self.library.NoteIntCheck(Note: self.Note2){ __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.library.calcQuarterNotes(BPM: __designTimeSelection(self.BPMText, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[1].[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), Notes: __designTimeSelection(self.Note2, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[1].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[1].[0].[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.Count2, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[1].[0].[0].modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[1].[0].[0]")
                        }
                        if self.library.NoteIntCheck(Note: self.Note3){ __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.library.calcQuarterNotes(BPM: __designTimeSelection(self.BPMText, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[2].[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), Notes: __designTimeSelection(self.Note3, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[2].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[2].[0].[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.Count3, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[2].[0].[0].modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[2].[0].[0]")
                        }
                        if self.library.NoteIntCheck(Note: self.Note4){ __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.library.calcQuarterNotes(BPM: __designTimeSelection(self.BPMText, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[3].[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), Notes: __designTimeSelection(self.Note4, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[3].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[3].[0].[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.Count4, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[3].[0].[0].modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[3].[0].[0]")
                        }
                        if self.library.NoteIntCheck(Note: self.Note5){ __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.library.calcQuarterNotes(BPM: __designTimeSelection(self.BPMText, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[4].[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), Notes: __designTimeSelection(self.Note5, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[4].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[4].[0].[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.Count5, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[4].[0].[0].modifier[0].arg[1].value")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[4].[0].[0]")
                        }
                    }) {
                        __designTimeSelection(Text(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[1].value.[0].arg[0].value.[0].value", fallback: "再生")), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[1].value.[0]")
                    }, "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5]")
                }else{
                    __designTimeSelection(Text(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[1].[0].arg[0].value.[0].value", fallback: "10~1000を入力してください"))
                    .foregroundColor(.red)
                    .font(.headline), "#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[1].[0]")
                }
            }, "#20642.[2].[15].property.[0].[0].arg[0].value.[1]")
        }, "#20642.[2].[15].property.[0].[0]"))
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