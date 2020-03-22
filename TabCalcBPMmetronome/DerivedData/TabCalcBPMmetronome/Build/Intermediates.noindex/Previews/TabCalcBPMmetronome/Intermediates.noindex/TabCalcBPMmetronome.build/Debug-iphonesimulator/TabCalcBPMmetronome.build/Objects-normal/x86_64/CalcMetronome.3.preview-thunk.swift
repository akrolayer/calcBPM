@_private(sourceFile: "CalcMetronome.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension CalcMetronome_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 117)
        AnyView(__designTimeSelection(CalcMetronome(), "#20075.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension CalcMetronome {
    @_dynamicReplacement(for: calcQuarterNotes(BPM:Notes:)) private func __preview__calcQuarterNotes(BPM: String, Notes: String)-> String {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 95)
            guard var bpm = Int(BPM) else { return "false" }
            guard var notes = Int(Notes) else { return "false" }
            if notes % 12 == 0{
                notes = notes / 3 * 4
                bpm = bpm / 4 * 3
                while(notes > 4){
                    notes /= 2
                    bpm *= 2
                }
                return __designTimeSelection(String(__designTimeSelection(bpm, "#20075.[2].[10].[2].[0].[3].arg[0].value")), "#20075.[2].[10].[2].[0].[3]")
            }else{
                while(notes > 4){
                    notes /= 2
                    bpm *= 2
                }
                return __designTimeSelection(String(__designTimeSelection(bpm, "#20075.[2].[10].[2].[1].[1].arg[0].value")), "#20075.[2].[10].[2].[1].[1]")
            }
#sourceLocation()
    }
}

extension CalcMetronome {
    @_dynamicReplacement(for: BPMIntCheck(BPM:)) private func __preview__BPMIntCheck(BPM: String)-> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 88)
            guard let bpm = Int(BPM) else{
                return false
            }
            return (10...1000).contains(__designTimeSelection(bpm, "#20075.[2].[9].[1].modifier[0].arg[0].value"))
#sourceLocation()
    }
}

extension CalcMetronome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 31)
        AnyView(__designTimeSelection(ZStack {
                __designTimeSelection(Color.white.onTapGesture {
                    __designTimeSelection(UIApplication.shared.endEditting(), "#20075.[2].[8].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
                }, "#20075.[2].[8].property.[0].[0].arg[0].value.[0]")
                
                __designTimeSelection(VStack{
                    __designTimeSelection(Text(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM変換ツール"))
                        .font(.largeTitle), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                    __designTimeSelection(Text(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "4分音符に換算したときのBPMを計算します"))
                        .font(.title), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                    __designTimeSelection(TextField(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:__designTimeSelection($BPM, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[0].arg[0].value"))
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[2].arg[0].value", fallback: 250)), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2]")
                    if BPMIntCheck(BPM: BPM){
                        __designTimeSelection(Picker(selection: __designTimeSelection($Note, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[1].value.arg[0].value.[0].value", fallback: "何分音符ですか？")), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[1].value")) {
                            __designTimeSelection(ForEach(0..<NotesList.count){
                                    __designTimeSelection(Text(__designTimeSelection(self.NotesList[__designTimeSelection($0, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value")], "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0].arg[0].value")), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0]")
                            }, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0]")
                        }, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0]")
                        __designTimeSelection(Text("\(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(calcQuarterNotes(BPM: __designTimeSelection(BPM, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[0].value"), Notes: __designTimeSelection(NotesList[__designTimeSelection(Note, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[1].value.[0].value")], "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[1].value")), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[2].value", fallback: "の４分"))")
                                .font(.headline)
                                .foregroundColor(.green), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1]")
                        
                        __designTimeSelection(TextField(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].arg[0].value.[0].value", fallback: "何回鳴らしますか？"), text:__designTimeSelection($PlayCount, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].arg[1].value"))
                        .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].modifier[0].arg[0].value"))
                        .keyboardType(.numberPad)
                        .frame(width: __designTimeInteger("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].modifier[2].arg[0].value", fallback: 250)), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2]")
                        
                        __designTimeSelection(Button(action: {
                            __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.calcQuarterNotes(BPM: __designTimeSelection(self.BPM, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), Notes: __designTimeSelection(self.NotesList[__designTimeSelection(self.Note, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[1].value.[0].value")], "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[1].value")), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.PlayCount, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[1].value")), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0]")
                            
                        }) {
                            __designTimeSelection(Text(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "換算後のBPMを再生")), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[1].value.[0]")
                        }, "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3]")
                            
                    }
                    else{
                        __designTimeSelection(Text(__designTimeString("#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
                            .foregroundColor(.red)
                            .font(.headline), "#20075.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[1].[0]")
                        
                        /*
                        MultilineTextView(text: $text)
                            .keyboardType(.phonePad)
                            .frame(width:250, height:200)
                        
                        Button(action: {print(self.text)}) {
                            Text("text")
                        }
                        */
                    }
        
                }, "#20075.[2].[8].property.[0].[0].arg[0].value.[1]")
            }, "#20075.[2].[8].property.[0].[0]"))
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditting()) private func __preview__endEditting() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/CalcMetronome.swift", line: 13)
        __designTimeSelection(sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        ), "#20075.[1].[0].[0]")
#sourceLocation()
    }
}

typealias CalcMetronome = TabCalcBPMmetronome.CalcMetronome
typealias CalcMetronome_Previews = TabCalcBPMmetronome.CalcMetronome_Previews