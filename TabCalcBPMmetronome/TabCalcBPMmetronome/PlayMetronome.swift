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
    @State var BPMText2: String = ""
    @State var Count: String = ""
    @State var Count2: String = ""
    @State var line: String = ""
    
    @ObservedObject var audioPlayer = AudioPlayer()
    

    var body: some View {
        ZStack{
                Color.white.onTapGesture {
                    UIApplication.shared.endEditting1()
            }
            VStack{
                Text("再生")
                HStack{
                    TextField("BPM", text:$BPMText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 100)
                
                    TextField("回数", text:$Count)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: 100)
                }
                HStack{
                    TextField("BPM", text:$BPMText2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 100)
                
                    TextField("回数", text:$Count2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                            .frame(width: 100)
                }
                Button(action: {
                    self.audioPlayer.metronome(BPM:self.BPMText,PlayCount: self.Count)
                    self.audioPlayer.metronome(BPM:self.BPMText2,PlayCount: self.Count2)
                    
                }) {
                Text("再生")
                }
            }
        }

    }

}

struct PlayMetronome_Previews: PreviewProvider {
    static var previews: some View {
        PlayMetronome()
    }
}
