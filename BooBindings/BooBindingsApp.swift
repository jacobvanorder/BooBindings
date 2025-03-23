//
//  BooBindingsApp.swift
//  BooBindings
//
//  Created by Jacob Van Order on 3/22/25.
//

import SwiftUI

@main
struct BooBindingsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab("View Logic Based", systemImage: "questionmark.bubble") {
                    ViewLogicBindingView()
                }
                Tab("Synthesized Binding", systemImage: "questionmark.square") {
                    SynthesizedBindingView()
                }
                Tab("View Model Based", systemImage: "questionmark.circle") {
                    ViewModelDrivingView()
                }
                Tab("Side Effect Based", systemImage: "questionmark.diamond") {
                    SideEffectView()
                }
            }
        }
    }
}
