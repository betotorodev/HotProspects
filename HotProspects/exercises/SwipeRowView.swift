//
//  SwipeRowView.swift
//  HotProspects
//
//  Created by Beto Toro on 15/09/22.
//

import SwiftUI

struct SwipeRowView: View {
  var body: some View {
    List {
      Text("Taylor Swift")
        .swipeActions {
          Button(role: .destructive) {
            print("Hi")
          } label: {
            Label("Delete", systemImage: "minus.circle")
          }
        }
        .swipeActions(edge: .leading) {
          Button {
            print("Hi")
          } label: {
            Label("Pin", systemImage: "pin")
          }
          .tint(.orange)
        }
    }
  }
}

struct SwipeRowView_Previews: PreviewProvider {
  static var previews: some View {
    SwipeRowView()
  }
}
