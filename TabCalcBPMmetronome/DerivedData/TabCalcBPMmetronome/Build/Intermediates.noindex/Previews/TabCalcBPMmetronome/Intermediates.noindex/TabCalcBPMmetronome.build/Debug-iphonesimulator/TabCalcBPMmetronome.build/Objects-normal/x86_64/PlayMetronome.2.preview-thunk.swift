@_private(sourceFile: "PlayMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension PlayMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 172)
        AnyView(PlayMetronome())
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: PlayMetronomeSound(Note:BPMText:PlayCount:isRest:)) private func __preview__PlayMetronomeSound(Note: String, BPMText:String, PlayCount: String,isRest:Bool) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 162)
        if library.NoteIntCheck(Note: Note){
            if isRest{ audioPlayer.notSoundMetronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: PlayCount)
            }else{                audioPlayer.metronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: PlayCount)
            }
        }
#sourceLocation()
    }
}

extension PlayMetronome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/PlayMetronome.swift", line: 44)
        AnyView(ZStack{
                Color.white.onTapGesture {
                    UIApplication.shared.endEditting1()
            }
            VStack{
                Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "再生"))
                
                TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "BPM"), text:$BPMText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                if  self.library.BPMIntCheck(BPM: self.BPMText){
                    VStack(alignment: .leading){ Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "音符は4〜64分です。"))
                    Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[1].value.[1].arg[0].value.[0].value", fallback: "三連符は12,24,48分です。"))
                    Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].arg[1].value.[2].arg[0].value.[0].value", fallback: "存在しない音符は再生されません。"))
                    }.foregroundColor(.red)
                        .font(.system(size: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 25)))
                    HStack{
                        Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"))
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 100))
                        Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"))
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 100))
                        Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[2].arg[0].value.[0].value", fallback: "休符"))
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[1].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100))
                    }
                    HStack{
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                        
                        Toggle(isOn: $isRest1) {
                            Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].value", fallback: "休符"))
                        }
                        .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[2].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100))
                    }

                    HStack{
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                        
                        Toggle(isOn: $isRest2) {
                            Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].value", fallback: "休符"))
                        }
                        .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[3].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100))
                    }

                    HStack{
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note3)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count3) .textFieldStyle(RoundedBorderTextFieldStyle()) .keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                        Toggle(isOn: $isRest3) {
                            Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].value", fallback: "休符"))
                        }
                        .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[4].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100))
                    }

                    HStack{
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note4)
                            .textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count4).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                        Toggle(isOn: $isRest4) {
                            Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].value", fallback: "休符"))
                        }
                        .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[5].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100))
                    }

                    HStack{
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[6].arg[0].value.[0].arg[0].value.[0].value", fallback: "何分音符"), text:$Note5)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[6].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100))
                        TextField(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[6].arg[0].value.[1].arg[0].value.[0].value", fallback: "回数"), text:$Count5).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.numberPad)
                            .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[6].arg[0].value.[1].modifier[2].arg[0].value", fallback: 100))
                        Toggle(isOn: $isRest5) {
                            Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[6].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].value", fallback: "休符"))
                        }
                        .frame(width: __designTimeInteger("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[6].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100))
                    }
                    
                    Button(action: {
                        self.PlayMetronomeSound(Note: self.Note, BPMText: self.BPMText, PlayCount: self.Count,isRest: self.isRest1)
                        self.PlayMetronomeSound(Note: self.Note2, BPMText: self.BPMText, PlayCount: self.Count2,isRest: self.isRest2)
                        
                        self.PlayMetronomeSound(Note: self.Note3, BPMText: self.BPMText, PlayCount: self.Count3,isRest: self.isRest3)
                        
                        self.PlayMetronomeSound(Note: self.Note4, BPMText: self.BPMText, PlayCount: self.Count4,isRest: self.isRest4)
                        
                        self.PlayMetronomeSound(Note: self.Note5, BPMText: self.BPMText, PlayCount: self.Count5,isRest: self.isRest5)
                    }) {
                        Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[0].[7].arg[1].value.[0].arg[0].value.[0].value", fallback: "再生"))
                    }
                }else{                    Text(__designTimeString("#20642.[2].[20].property.[0].[0].arg[0].value.[1].arg[0].value.[2].[1].[0].arg[0].value.[0].value", fallback: "10~1000を入力してください"))
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