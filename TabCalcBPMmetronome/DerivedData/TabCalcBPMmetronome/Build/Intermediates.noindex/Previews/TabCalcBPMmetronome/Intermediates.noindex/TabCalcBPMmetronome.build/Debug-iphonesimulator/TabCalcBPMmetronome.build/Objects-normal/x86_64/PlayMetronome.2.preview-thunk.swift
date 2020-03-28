@_private(sourceFile: "PlayMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension PlayMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 143)
        AnyView(PlayMetronome())
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: PlayMetronomeSound(Note:BPMText:Playcount:)) private func __preview__PlayMetronomeSound(Note: String, BPMText:String, Playcount: String) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 132)
        if library.NoteIntCheck(Note: Note){
            if Note == "0"{ audioPlayer.notSoundMetronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: Count)
            }else{
                audioPlayer.metronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: Count)
            }
        }
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
                    
                    HStack{
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note3)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                    }
                    
                    HStack{
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note4)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                    }
                    
                    HStack{
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note5)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                    }
                    
                    Button(action: {
                        self.PlayMetronomeSound(Note: self.Note, BPMText: self.BPMText, Playcount: self.Count)
                        
                        self.PlayMetronomeSound(Note: self.Note2, BPMText: self.BPMText, Playcount: self.Count2)
                        
                        self.PlayMetronomeSound(Note: self.Note3, BPMText: self.BPMText, Playcount: self.Count3)
                        
                        self.PlayMetronomeSound(Note: self.Note4, BPMText: self.BPMText, Playcount: self.Count4)
                        
                        self.PlayMetronomeSound(Note: self.Note5, BPMText: self.BPMText, Playcount: self.Count5)
                    }) {
                        Text(__designTimeString("#20642.[2].[15].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[1].value.[0].arg[0].value.[0].value", fallback: "再生"))
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