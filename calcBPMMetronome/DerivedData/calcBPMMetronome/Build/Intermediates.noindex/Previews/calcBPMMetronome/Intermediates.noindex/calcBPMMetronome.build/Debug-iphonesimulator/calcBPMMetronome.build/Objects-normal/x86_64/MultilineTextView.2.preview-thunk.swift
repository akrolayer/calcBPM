@_private(sourceFile: "MultilineTextView.swift") import calcBPMMetronome
import SwiftUI
import SwiftUI

extension MultilineTextView_Previews.PreviewWrapper {
typealias PreviewWrapper = MultilineTextView_Previews.PreviewWrapper
private var previews: some View { return MultilineTextView_Previews.previews }
private static var previews: some View { return MultilineTextView_Previews.previews }

    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/MultilineTextView.swift", line: 56)
            AnyView(MultilineTextView(text: $text))
#sourceLocation()
    }
}

extension MultilineTextView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/MultilineTextView.swift", line: 50)
        AnyView(PreviewWrapper())
#sourceLocation()
    }
}

extension MultilineTextView {
    @_dynamicReplacement(for: updateUIView(_:context:)) private func __preview__updateUIView(_ uiView: UITextView, context: Context) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/MultilineTextView.swift", line: 44)
        uiView.text = text
#sourceLocation()
    }
}

extension MultilineTextView {
    @_dynamicReplacement(for: makeUIView(context:)) private func __preview__makeUIView(context: Context) -> UITextView {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/MultilineTextView.swift", line: 35)
        let textView = UITextView()
        textView.delegate = context.coordinator
        textView.isScrollEnabled = true
        textView.isEditable = true
        textView.isUserInteractionEnabled = true
        return textView
#sourceLocation()
    }
}

extension MultilineTextView {
    @_dynamicReplacement(for: makeCoordinator()) private func __preview__makeCoordinator() -> Coordinator {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/MultilineTextView.swift", line: 31)
        Coordinator(self)
#sourceLocation()
    }
}

extension MultilineTextView.Coordinator {
typealias Coordinator = MultilineTextView.Coordinator

    @_dynamicReplacement(for: textViewDidChange(_:)) private func __preview__textViewDidChange(_ textView: UITextView) {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/MultilineTextView.swift", line: 26)
            self.textView.text = textView.text
#sourceLocation()
    }
}

extension MultilineTextView.Coordinator {
    @_dynamicReplacement(for: textView(_:shouldChangeTextIn:replacementText:)) private func __preview__textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/CalcBPMMetronome/calcBPMMetronome/calcBPMMetronome/MultilineTextView.swift", line: 22)
            return __designTimeBoolean("#15242.[1].[1].[2].[0]", fallback: true)
#sourceLocation()
    }
}

typealias MultilineTextView = calcBPMMetronome.MultilineTextView
typealias MultilineTextView_Previews = calcBPMMetronome.MultilineTextView_Previews