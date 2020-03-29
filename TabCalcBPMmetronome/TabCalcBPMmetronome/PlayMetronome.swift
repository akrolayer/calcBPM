//
//  PlayMetronome.swift
//  TabCalcBPMmetronome
//
//  Created by akrolayer on 2020/03/23.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import SwiftUI

extension UIApplication{
    func endEditting1(){
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        )
    }
}

struct PlayMetronome: View {
    @State var BPMText: String = ""
    @State var Note: String = ""
    @State var Note2: String = ""
    @State var Note3: String = ""
    @State var Note4: String = ""
    @State var Note5: String = ""
    @State var Count: String = ""
    @State var Count2: String = ""
    @State var Count3: String = ""
    @State var Count4: String = ""
    @State var Count5: String = ""
    @State var line: String = ""
    @State var isRest1: Bool = false
    @State var isRest2: Bool = false
    @State var isRest3: Bool = false
    @State var isRest4: Bool = false
    @State var isRest5: Bool = false
    
    let NotesList = ["4", "8", "12", "16", "24", "32", "48", "64"]
    
    @ObservedObject var audioPlayer = AudioPlayer()
    @ObservedObject var library = Library()

    var body: some View {
        ZStack{
                Color.white.onTapGesture {
                    UIApplication.shared.endEditting1()
            }
            VStack{
                Text("再生")
                
                TextField("BPM", text:$BPMText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: 100)
                if  self.library.BPMIntCheck(BPM: self.BPMText){
                    Text("音符は４〜６４分です。三連符は12,24,48分です。存在しない音符は再生されません。")
                    HStack{
                        Text("何分音符")
                            .frame(width: 100)
                        Text("回数")
                            .frame(width: 100)
                        Text("休符")
                            .frame(width: 100)
                    }
                    HStack{
                        TextField("何分音符", text:$Note)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        
                        TextField("回数", text:$Count)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: 100)
                        
                        Toggle(isOn: $isRest1) {
                            Text("休符")
                        }
                        .frame(width: 100)
                    }

                    HStack{
                        TextField("何分音符", text:$Note2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        
                        TextField("回数", text:$Count2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: 100)
                        
                        Toggle(isOn: $isRest2) {
                            Text("休符")
                        }
                        .frame(width: 100)
                    }

                    HStack{
                        TextField("何分音符", text:$Note3)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        
                        TextField("回数", text:$Count3) .textFieldStyle(RoundedBorderTextFieldStyle()) .keyboardType(.numberPad)
                            .frame(width: 100)
                        Toggle(isOn: $isRest3) {
                            Text("休符")
                        }
                        .frame(width: 100)
                    }

                    HStack{
                        TextField("何分音符", text:$Note4)
                            .textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.numberPad)
                                .frame(width: 100)
                        TextField("回数", text:$Count4).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.numberPad)
                            .frame(width: 100)
                        Toggle(isOn: $isRest4) {
                            Text("休符")
                        }
                        .frame(width: 100)
                    }

                    HStack{
                        TextField("何分音符", text:$Note5)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        TextField("回数", text:$Count5).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.numberPad)
                            .frame(width: 100)
                        Toggle(isOn: $isRest5) {
                            Text("休符")
                        }
                        .frame(width: 100)
                    }
                    
                    Button(action: {
                        self.PlayMetronomeSound(Note: self.Note, BPMText: self.BPMText, PlayCount: self.Count,isRest: self.isRest1)
                        self.PlayMetronomeSound(Note: self.Note2, BPMText: self.BPMText, PlayCount: self.Count2,isRest: self.isRest2)
                        
                        self.PlayMetronomeSound(Note: self.Note3, BPMText: self.BPMText, PlayCount: self.Count3,isRest: self.isRest3)
                        
                        self.PlayMetronomeSound(Note: self.Note4, BPMText: self.BPMText, PlayCount: self.Count4,isRest: self.isRest4)
                        
                        self.PlayMetronomeSound(Note: self.Note5, BPMText: self.BPMText, PlayCount: self.Count5,isRest: self.isRest5)
                    }) {
                        Text("再生")
                    }
                }else{                    Text("10~1000を入力してください")
                    .foregroundColor(.red)
                    .font(.headline)
                }
            }
        }
    }
    func PlayMetronomeSound(Note: String, BPMText:String, PlayCount: String,isRest:Bool){
        if library.NoteIntCheck(Note: Note){
            if isRest{ audioPlayer.notSoundMetronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: PlayCount)
            }else{                audioPlayer.metronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: PlayCount)
            }
        }
    }
}

struct PlayMetronome_Previews: PreviewProvider {
    static var previews: some View {
        PlayMetronome()
    }
}
