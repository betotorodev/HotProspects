//
//  ContextMenusView.swift
//  HotProspects
//
//  Created by Beto Toro on 15/09/22.
//

import SwiftUI

struct ContextMenusView: View {
  @State private var backgroundColor = Color.red
  
  var body: some View {
    VStack {
      Text("Hello, World!")
        .padding()
        .background(backgroundColor)
      
      Text("Change Color")
        .padding()
        .contextMenu {
          Button(role: .destructive) {
            backgroundColor = .red
          } label: {
            Label("Red", systemImage: "checkmark.circle.fill")
              .foregroundColor(.red)
          }
          
          Button("Green") {
            backgroundColor = .green
          }
          
          Button("Blue") {
            backgroundColor = .blue
          }
        }
    }
  }
}

struct ContextMenusView_Previews: PreviewProvider {
  static var previews: some View {
    ContextMenusView()
  }
}
