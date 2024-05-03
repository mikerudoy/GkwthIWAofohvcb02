//
//  SwiftUIMarathon02App.swift
//  SwiftUIMarathon02
//
//  Created by Mike Rudoy on 03/05/2024.
//

import SwiftUI

@main
struct SwiftUIMarathon02App: App {
    var body: some Scene {
        WindowGroup {
            SecondView(text: Demo.text())
        }
    }
}
