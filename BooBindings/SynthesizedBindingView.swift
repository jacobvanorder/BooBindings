//
//  SynthesizedBindingView.swift
//  BooBindings
//
//  Created by Jacob Van Order on 3/22/25.
//

import SwiftUI

struct ThingYouMightWantToShowAnAlertFor {
    let name: String
    let description: String
}

struct SynthesizedBindingView: View {

    @State private var thingYouMightWantToShowAnAlertFor: ThingYouMightWantToShowAnAlertFor?

    var body: some View {
        VStack {
            Button {
                thingYouMightWantToShowAnAlertFor = .init(name: "You know!", description: "That thing you might want to show an sheet for")
            } label: {
                Text("Show that sheet")
            }
        }
        .padding()
        .alert("Huzzah",
               isPresented: .init(get: {
            return thingYouMightWantToShowAnAlertFor != nil
        },
                                  set: { newValue in
            if newValue {
                thingYouMightWantToShowAnAlertFor = nil
            }
        }), actions: {
            Button("Okay") {
                thingYouMightWantToShowAnAlertFor = nil
            }
        })
    }
}

#Preview {
    SynthesizedBindingView()
}
