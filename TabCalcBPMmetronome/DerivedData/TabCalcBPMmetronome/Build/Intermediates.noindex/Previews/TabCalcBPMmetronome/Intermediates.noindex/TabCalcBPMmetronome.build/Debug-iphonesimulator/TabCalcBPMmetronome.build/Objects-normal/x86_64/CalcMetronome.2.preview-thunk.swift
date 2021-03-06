@_private(sourceFile: "CalcMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension CalcMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 92)
        AnyView(CalcMetronome())
#sourceLocation()
    }
}

extension CalcMetronome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 32)
        AnyView(ZStack {
                Color.white.onTapGesture {
                    UIApplication.shared.endEditting()
                }
                
                VStack{
                    Text(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM変換ツール"))
                        .font(.largeTitle)
                    Text(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "4分音符に換算したときのBPMを計算します"))
                        .font(.title)
                    TextField(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:$BPM)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[2].arg[0].value", fallback: 250))
                    if library.BPMIntCheck(BPM: BPM){
                        Picker(selection: $Note, label: Text(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[1].value.arg[0].value.[0].value", fallback: "何分音符ですか？"))) {
                            ForEach(0..<NotesList.count){
                                    Text(self.NotesList[$0])
                            }
                        }
                        Text("\(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[0].value", fallback: ""))\(library.calcQuarterNotes(BPM: BPM, Notes: NotesList[Note]))\(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[2].value", fallback: "の４分"))")
                                .font(.headline)
                                .foregroundColor(.green)
                        
                        TextField(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].arg[0].value.[0].value", fallback: "何回鳴らしますか？"), text:$PlayCount)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].modifier[2].arg[0].value", fallback: 250))
                        
                        Button(action: {
                            self.audioPlayer.metronome(BPM:self.library.calcQuarterNotes(BPM: self.BPM, Notes: self.NotesList[self.Note]),PlayCount: self.PlayCount)
                            
                        }) {
                            Text(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "換算後のBPMを再生"))
                        }
                            
                    }
                    else{
                        Text(__designTimeString("#20075.[2].[9].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
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
            })
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditting()) private func __preview__endEditting() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 13)
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        )
#sourceLocation()
    }
}

typealias CalcMetronome = TabCalcBPMmetronome.CalcMetronome
typealias CalcMetronome_Previews = TabCalcBPMmetronome.CalcMetronome_Previews