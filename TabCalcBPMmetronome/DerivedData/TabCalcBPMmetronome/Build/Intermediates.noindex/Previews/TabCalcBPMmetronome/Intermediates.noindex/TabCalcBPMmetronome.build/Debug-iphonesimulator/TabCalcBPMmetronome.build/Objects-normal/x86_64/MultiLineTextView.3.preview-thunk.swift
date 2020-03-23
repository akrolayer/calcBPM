@_private(sourceFile: "MultiLineTextView.swift") import TabCalcBPMmetronome
import SwiftUI
import SwiftUI

extension MultilineTextView_Previews.PreviewWrapper {
typealias PreviewWrapper = MultilineTextView_Previews.PreviewWrapper
private var previews: some View { return MultilineTextView_Previews.previews }
private static var previews: some View { return MultilineTextView_Previews.previews }

    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/MultiLineTextView.swift", line: 56)
            AnyView(__designTimeSelection(MultilineTextView(text: __designTimeSelection($text, "#27049.[2].[1].[1].property.[0].[0].arg[0].value")), "#27049.[2].[1].[1].property.[0].[0]"))
#sourceLocation()
    }
}

extension MultilineTextView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/MultiLineTextView.swift", line: 50)
        AnyView(__designTimeSelection(PreviewWrapper(), "#27049.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension MultilineTextView {
    @_dynamicReplacement(for: updateUIView(_:context:)) private func __preview__updateUIView(_ uiView: UITextView, context: Context) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/MultiLineTextView.swift", line: 44)
        uiView.text = text
#sourceLocation()
    }
}

extension MultilineTextView {
    @_dynamicReplacement(for: makeUIView(context:)) private func __preview__makeUIView(context: Context) -> UITextView {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/MultiLineTextView.swift", line: 35)
        let textView = UITextView()
        textView.delegate = context.coordinator
        textView.isScrollEnabled = true
        textView.isEditable = true
        textView.isUserInteractionEnabled = true
        return __designTimeSelection(textView, "#27049.[1].[3].[5]")
#sourceLocation()
    }
}

extension MultilineTextView {
    @_dynamicReplacement(for: makeCoordinator()) private func __preview__makeCoordinator() -> Coordinator {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/MultiLineTextView.swift", line: 31)
        __designTimeSelection(Coordinator(__designTimeSelection(self, "#27049.[1].[2].[0].arg[0].value")), "#27049.[1].[2].[0]")
#sourceLocation()
    }
}

extension MultilineTextView.Coordinator {
typealias Coordinator = MultilineTextView.Coordinator

    @_dynamicReplacement(for: textViewDidChange(_:)) private func __preview__textViewDidChange(_ textView: UITextView) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/MultiLineTextView.swift", line: 26)
            self.textView.text = textView.text
#sourceLocation()
    }
}

extension MultilineTextView.Coordinator {
    @_dynamicReplacement(for: textView(_:shouldChangeTextIn:replacementText:)) private func __preview__textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/TabCalcBPMmetronome/TabCalcBPMmetronome/MultiLineTextView.swift", line: 22)
            return __designTimeBoolean("#27049.[1].[1].[2].[0]", fallback: true)
#sourceLocation()
    }
}

typealias MultilineTextView = TabCalcBPMmetronome.MultilineTextView
typealias MultilineTextView_Previews = TabCalcBPMmetronome.MultilineTextView_Previews