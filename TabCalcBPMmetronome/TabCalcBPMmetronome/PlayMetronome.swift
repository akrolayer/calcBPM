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
                if self.library.BPMIntCheck(BPM: self.BPMText){
                    HStack{
                        TextField("何分音符", text:$Note)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        
                        TextField("回数", text:$Count)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
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
                    }
                    
                    HStack{
                        TextField("何分音符", text:$Note3)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        
                        TextField("回数", text:$Count3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: 100)
                    }
                    
                    HStack{
                        TextField("何分音符", text:$Note4)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        
                        TextField("回数", text:$Count4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: 100)
                    }
                    
                    HStack{
                        TextField("何分音符", text:$Note5)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        
                        TextField("回数", text:$Count5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: 100)
                    }
                    
                    Button(action: {
                        self.PlayMetronomeSound(Note: self.Note, BPMText: self.BPMText, Playcount: self.Count)
                        
                        self.PlayMetronomeSound(Note: self.Note2, BPMText: self.BPMText, Playcount: self.Count2)
                        
                        self.PlayMetronomeSound(Note: self.Note3, BPMText: self.BPMText, Playcount: self.Count3)
                        
                        self.PlayMetronomeSound(Note: self.Note4, BPMText: self.BPMText, Playcount: self.Count4)
                        
                        self.PlayMetronomeSound(Note: self.Note5, BPMText: self.BPMText, Playcount: self.Count5)
                    }) {
                        Text("再生")
                    }
                }else{
                    Text("10~1000を入力してください")
                    .foregroundColor(.red)
                    .font(.headline)
                }
            }
        }
    }
    func PlayMetronomeSound(Note: String, BPMText:String, Playcount: String){
        if library.NoteIntCheck(Note: Note){
            if Note == "0"{ audioPlayer.notSoundMetronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: Count)
            }else{
                audioPlayer.metronome(BPM:library.calcQuarterNotes(BPM: BPMText, Notes: Note),PlayCount: Count)
            }
        }
    }
}

struct PlayMetronome_Previews: PreviewProvider {
    static var previews: some View {
        PlayMetronome()
    }
}
