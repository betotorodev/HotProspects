//
//  Interpolatio9nView.swift
//  HotProspects
//
//  Created by Beto Toro on 15/09/22.
//

import SwiftUI

struct Interpolatio9nView: View {
  var body: some View {
    Image("example")
      .interpolation(.none)
      .resizable()
      .scaledToFit()
      .frame(maxHeight: .infinity)
      .background(.black)
      .ignoresSafeArea()
  }
}

struct Interpolatio9nView_Previews: PreviewProvider {
  static var previews: some View {
    Interpolatio9nView()
  }
}
