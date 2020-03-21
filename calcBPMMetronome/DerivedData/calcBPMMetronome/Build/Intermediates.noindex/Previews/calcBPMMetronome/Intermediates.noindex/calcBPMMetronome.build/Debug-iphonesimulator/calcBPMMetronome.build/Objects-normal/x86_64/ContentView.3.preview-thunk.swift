@_private(sourceFile: "ContentView.swift") import calcBPMMetronome
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 108)
        AnyView(__designTimeSelection(ContentView(), "#9607.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: calcQuarterNotes(BPM:Notes:)) private func __preview__calcQuarterNotes(BPM: String, Notes: String)-> String {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 86)
        guard var bpm = Int(BPM) else { return "false" }
        guard var notes = Int(Notes) else { return "false" }
        if notes % 12 == 0{
            notes = notes / 3 * 4
            bpm = bpm / 4 * 3
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return __designTimeSelection(String(__designTimeSelection(bpm, "#9607.[2].[10].[2].[0].[3].arg[0].value")), "#9607.[2].[10].[2].[0].[3]")
        }else{
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return __designTimeSelection(String(__designTimeSelection(bpm, "#9607.[2].[10].[2].[1].[1].arg[0].value")), "#9607.[2].[10].[2].[1].[1]")
        }
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: BPMIntCheck(BPM:)) private func __preview__BPMIntCheck(BPM: String)-> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 79)
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(__designTimeSelection(bpm, "#9607.[2].[9].[1].modifier[0].arg[0].value"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 30)
        AnyView(__designTimeSelection(ZStack {
            __designTimeSelection(Color.white.onTapGesture {
                __designTimeSelection(UIApplication.shared.endEditting(), "#9607.[2].[8].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }, "#9607.[2].[8].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(VStack{
                __designTimeSelection(Text(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM変換ツール"))
                    .font(.largeTitle), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "4分音符に換算したときのBPMを計算します"))
                    .font(.title), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                __designTimeSelection(TextField(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:__designTimeSelection($BPM, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value"))
                    .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[0].arg[0].value"))
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[2].arg[0].value", fallback: 250)), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2]")
                if BPMIntCheck(BPM: BPM){
                    __designTimeSelection(Picker(selection: __designTimeSelection($Note, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[1].value.arg[0].value.[0].value", fallback: "何分音符ですか？")), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[1].value")) {
                        __designTimeSelection(ForEach(0..<NotesList.count){
                                __designTimeSelection(Text(__designTimeSelection(self.NotesList[__designTimeSelection($0, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value")], "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0].arg[0].value")), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0]")
                        }, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[2].value.[0]")
                    }, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0]")
                    __designTimeSelection(Text("\(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(calcQuarterNotes(BPM: __designTimeSelection(BPM, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[0].value"), Notes: __designTimeSelection(NotesList[__designTimeSelection(Note, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[1].value.[0].value")], "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[1].value")), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[2].value", fallback: "の４分"))")
                            .font(.headline)
                            .foregroundColor(.green), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1]")
                    
                    __designTimeSelection(TextField(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].arg[0].value.[0].value", fallback: "何回鳴らしますか？"), text:__designTimeSelection($PlayCount, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].arg[1].value"))
                    .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].modifier[0].arg[0].value"))
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].modifier[2].arg[0].value", fallback: 250)), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2]")
                    
                    __designTimeSelection(Button(action: {
                        __designTimeSelection(self.audioPlayer.metronome(BPM:__designTimeSelection(self.calcQuarterNotes(BPM: __designTimeSelection(self.BPM, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), Notes: __designTimeSelection(self.NotesList[__designTimeSelection(self.Note, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[1].value.[0].value")], "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[1].value")), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[0].value"),PlayCount: __designTimeSelection(self.PlayCount, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0].modifier[0].arg[1].value")), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[0].value.[0]")
                        
                    }) {
                        __designTimeSelection(Text(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "換算後のBPMを再生")), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[1].value.[0]")
                    }, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3]")
                        __designTimeSelection(MultilineTextView(text: __designTimeSelection($text, "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[4].arg[0].value"))
                            .frame(height:__designTimeInteger("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[4].modifier[0].arg[0].value", fallback: 250))
                            .keyboardType(.numberPad), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[4]")
                }
                else{
                    __designTimeSelection(Text(__designTimeString("#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
                        .foregroundColor(.red)
                        .font(.headline), "#9607.[2].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[1].[0]")
                }
    
            }, "#9607.[2].[8].property.[0].[0].arg[0].value.[1]")
        }, "#9607.[2].[8].property.[0].[0]"))
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditting()) private func __preview__endEditting() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 13)
        __designTimeSelection(sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        ), "#9607.[1].[0].[0]")
#sourceLocation()
    }
}

typealias ContentView = calcBPMMetronome.ContentView
typealias ContentView_Previews = calcBPMMetronome.ContentView_Previews