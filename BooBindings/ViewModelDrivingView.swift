//
//  ViewModelDrivingView.swift
//  BooBindings
//
//  Created by Jacob Van Order on 3/22/25.
//

import SwiftUI

struct ViewModelDrivingView: View {

    @State var viewModel: ViewModelDrivingViewModel = ViewModelDrivingViewModel()

    var body: some View {
        VStack {
            Button {
                viewModel.thingYouMightWantToShowAnAlertFor = .init(name: "You know!", description: "That thing you might want to show an sheet for")
            } label: {
                Text("Show that sheet")
            }
        }
        .padding()
        .alert("Huzzah",
               isPresented: $viewModel.shouldShowAlert,
               actions: {
            Button("Okay") {
                viewModel.thingYouMightWantToShowAnAlertFor = nil
            }
        })
    }
}

@Observable
final class ViewModelDrivingViewModel {
    var shouldShowAlert: Bool = false
    var thingYouMightWantToShowAnAlertFor: ThingYouMightWantToShowAnAlertFor? {
        willSet {
            shouldShowAlert = newValue != nil
        }
    }
}

#Preview {
    ViewModelDrivingView()
}
