//
//  PushingManualView.swift
//  HotProspects
//
//  Created by Beto Toro on 14/09/22.
//

import SwiftUI

@MainActor class DelayedUpdater: ObservableObject {
  // no manual
  // @Published var value = 0
  
  // manual
  var value = 0 {
    willSet {
      objectWillChange.send()
    }
  }
  
  init() {
    for i in 1...10 {
      DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
        self.value += 1
      }
    }
  }
}

struct PushingManualView: View {
  @StateObject var updater = DelayedUpdater()
  
  var body: some View {
    Text("Value is: \(updater.value)")
  }
}

struct PushingManualView_Previews: PreviewProvider {
  static var previews: some View {
    PushingManualView()
  }
}
