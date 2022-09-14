//
//  MenuTabView.swift
//  HotProspects
//
//  Created by Beto Toro on 14/09/22.
//

import SwiftUI

struct MenuTabView: View {
  @State private var selectedTab = "One"
  
  var body: some View {
    TabView(selection: $selectedTab) {
      Text("Tab 1")
        .onTapGesture {
            selectedTab = "Two"
        }
        .tabItem {
          Label("One", systemImage: "star")
        }
        .tag("One")
      
      Text("Tab 2")
        .tabItem {
          Label("Two", systemImage: "circle")
        }
        .tag("Two")
    }
  }
}

struct MenuTabView_Previews: PreviewProvider {
  static var previews: some View {
    MenuTabView()
  }
}
