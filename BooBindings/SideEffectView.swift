//
//  SideEffectView.swift
//  BooBindings
//
//  Created by Jacob Van Order on 3/23/25.
//

import SwiftUI

struct SideEffectView: View {
    @State var thingYouMightWantToShowAnAlertFor: ThingYouMightWantToShowAnAlertFor? {
        willSet {
            shouldShowAlert = newValue != nil
        }
    }
    @State var shouldShowAlert: Bool = false

    var body: some View {
        VStack {
            Button {
                thingYouMightWantToShowAnAlertFor = .init(name: "You know!", description: "That thing you might want to show an sheet for")
            } label: {
                Text("Show that alert")
            }
        }
        .padding()
        .alert("Huzzah",
               isPresented: $shouldShowAlert,
               actions: {
            Button("Okay") {
                thingYouMightWantToShowAnAlertFor = nil
            }
        })
    }
}

#Preview {
    SideEffectView()
}
