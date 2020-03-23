//
//  CalcMetronome.swift
//  TabCalcBPMmetronome
//
//  Created by akrolayer on 2020/03/23.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import SwiftUI

extension UIApplication{
    func endEditting(){
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        )
    }
}

struct CalcMetronome: View {
    @State var BPM: String = ""
    @State var Notes: String = ""
    @State var Note: Int = 0
    @State var PlayCount: String = ""
    @State var text: String = ""
    
    let NotesList = ["4", "8", "12", "16", "24", "32", "48", "64"]
    var isError: Bool = true
    @ObservedObject var audioPlayer = AudioPlayer()
    @ObservedObject var library = Library()
    
    var body: some View {
        ZStack {
                Color.white.onTapGesture {
                    UIApplication.shared.endEditting()
                }
                
                VStack{
                    Text("BPM変換ツール")
                        .font(.largeTitle)
                    Text("4分音符に換算したときのBPMを計算します")
                        .font(.title)
                    TextField("BPMを入力してください", text:$BPM)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 250)
                    if library.BPMIntCheck(BPM: BPM){
                        Picker(selection: $Note, label: Text("何分音符ですか？")) {
                            ForEach(0..<NotesList.count){
                                    Text(self.NotesList[$0])
                            }
                        }
                        Text("\(library.calcQuarterNotes(BPM: BPM, Notes: NotesList[Note]))の４分")
                                .font(.headline)
                                .foregroundColor(.green)
                        
                        TextField("何回鳴らしますか？", text:$PlayCount)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 250)
                        
                        Button(action: {
                            self.audioPlayer.metronome(BPM:self.library.calcQuarterNotes(BPM: self.BPM, Notes: self.NotesList[self.Note]),PlayCount: self.PlayCount)
                            
                        }) {
                            Text("換算後のBPMを再生")
                        }
                            
                    }
                    else{
                        Text("BPMは10〜1000を入力してください")
                            .foregroundColor(.red)
                            .font(.headline)
                        
                        /*
                        MultilineTextView(text: $text)
                            .keyboardType(.phonePad)
                            .frame(width:250, height:200)
                        
                        Button(action: {print(self.text)}) {
                            Text("text")
                        }
                        */
                    }
        
                }
            }
        }
}

struct CalcMetronome_Previews: PreviewProvider {
    static var previews: some View {
        CalcMetronome()
    }
}
