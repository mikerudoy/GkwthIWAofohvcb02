//
//  ContentView.swift
//  SwiftUIMarathon02
//
//  Created by Mike Rudoy on 03/05/2024.
//

import SwiftUI

struct SecondView: View {
    private let text: AttributedString

    @State
    private var sliderValue: CGFloat = 300

    init(text: AttributedString) {
        self.text = text
    }

    var body: some View {
        VStack {
            VStack {
                Text(text)
            }
            .frame(maxWidth: sliderValue, minHeight: 200)
            .border(Color.red, width: 1)
            Slider(value: $sliderValue, in: 100...300)
        }
        .padding()
    }
}

#Preview {
    SecondView(text: Demo.text())
}

enum Demo {
    static func text() -> AttributedString {
        var text = AttributedString("Марафон по SwiftUI «Отцовский Пинок»")
        if let grayRange = text.range(of: "Марафон") {
            text[grayRange].foregroundColor = .gray
        }
        if let blackRange = text.range(of: "по SwiftUI") {
            text[blackRange].foregroundColor = .black
        }
        if let blueRange = text.range(of: "«Отцовский Пинок»") {
            text[blueRange].font = UIFont.boldSystemFont(ofSize: 28)
            text[blueRange].foregroundColor = .blue
        }
        return text
    }
}
