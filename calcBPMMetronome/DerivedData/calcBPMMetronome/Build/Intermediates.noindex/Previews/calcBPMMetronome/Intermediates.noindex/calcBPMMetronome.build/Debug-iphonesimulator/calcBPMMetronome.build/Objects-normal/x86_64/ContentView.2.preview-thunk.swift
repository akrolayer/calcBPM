@_private(sourceFile: "ContentView.swift") import calcBPMMetronome
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 104)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: calcQuarterNotes(BPM:Notes:)) private func __preview__calcQuarterNotes(BPM: String, Notes: String)-> String {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 82)
        guard var bpm = Int(BPM) else { return "false" }
        guard var notes = Int(Notes) else { return "false" }
        if notes % 12 == 0{
            notes = notes / 3 * 4
            bpm = bpm / 4 * 3
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return String(bpm)
        }else{
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return String(bpm)
        }
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: BPMIntCheck(BPM:)) private func __preview__BPMIntCheck(BPM: String)-> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 75)
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(bpm)
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 29)
        AnyView(ZStack {
            Color.white.onTapGesture {
                UIApplication.shared.endEditting()
            }
            
            VStack{
                Text(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM変換ツール"))
                    .font(.largeTitle)
                Text(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "4分音符に換算したときのBPMを計算します"))
                    .font(.title)
                TextField(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:$BPM)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[2].arg[0].value", fallback: 250))
                if BPMIntCheck(BPM: BPM){
                    Picker(selection: $Note, label: Text(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[0].arg[1].value.arg[0].value.[0].value", fallback: "何分音符ですか？"))) {
                        ForEach(0..<NotesList.count){
                                Text(self.NotesList[$0])
                        }
                    }
                    Text("\(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[0].value", fallback: ""))\(calcQuarterNotes(BPM: BPM, Notes: NotesList[Note]))\(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[1].arg[0].value.[2].value", fallback: "の４分"))")
                            .font(.headline)
                            .foregroundColor(.green)
                    
                    TextField(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].arg[0].value.[0].value", fallback: "何回鳴らしますか？"), text:$PlayCount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[2].modifier[2].arg[0].value", fallback: 250))
                    
                    Button(action: {
                        self.audioPlayer.metronome(BPM:self.calcQuarterNotes(BPM: self.BPM, Notes: self.NotesList[self.Note]),PlayCount: self.PlayCount)
                        
                    }) {
                        Text(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[0].[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "換算後のBPMを再生"))
                    }
 
                }
                else{
                    Text(__designTimeString("#9607.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value.[3].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
                        .foregroundColor(.red)
                        .font(.headline)
                }
            }
        })
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditting()) private func __preview__endEditting() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/ContentView.swift", line: 13)
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to:nil, from: nil, for: nil
        )
#sourceLocation()
    }
}

typealias ContentView = calcBPMMetronome.ContentView
typealias ContentView_Previews = calcBPMMetronome.ContentView_Previews