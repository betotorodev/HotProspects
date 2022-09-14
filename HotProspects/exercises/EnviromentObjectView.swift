//
//  EnviromentObjectView.swift
//  HotProspects
//
//  Created by Beto Toro on 14/09/22.
//

import SwiftUI

@MainActor class User: ObservableObject {
  @Published var name = "Taylor Swift"
}

struct EditView: View {
  @EnvironmentObject var user: User
  
  var body: some View {
    TextField("Name", text: $user.name)
  }
}

struct DisplayView: View {
  @EnvironmentObject var user: User
  
  var body: some View {
    Text(user.name)
  }
}

struct EnviromentObjectView: View {
  @StateObject private var user = User()
  
  var body: some View {
    VStack {
      EditView().environmentObject(user)
      DisplayView().environmentObject(user)
    }
    
//   también se puede sobre todo el contenedor
    
//    VStack {
//        EditView()
//        DisplayView()
//    }
//    .environmentObject(user)
  }
}

struct EnviromentObjectView_Previews: PreviewProvider {
  static var previews: some View {
    EnviromentObjectView()
  }
}
