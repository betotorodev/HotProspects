//
//  FileManager-DocumentsDirectory.swift
//  HotProspects
//
//  Created by Beto Toro on 26/09/22.
//

import Foundation

extension FileManager {
  static var documentsDirectory: URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
  }
}
