//
//  ViewLogicBindingView.swift
//  BooBindings
//
//  Created by Jacob Van Order on 3/23/25.
//

import SwiftUI

struct ViewLogicBindingView: View {
    @State var thingYouMightWantToShowAnAlertFor: ThingYouMightWantToShowAnAlertFor?
    @State var shouldShowAlert: Bool = false

    var body: some View {
        VStack {
            Button {
                thingYouMightWantToShowAnAlertFor = .init(name: "You know!", description: "That thing you might want to show an sheet for")
                shouldShowAlert = true
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
    ViewLogicBindingView()
}
