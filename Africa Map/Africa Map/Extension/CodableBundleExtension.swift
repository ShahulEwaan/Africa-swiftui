//
//  CodableBundleExtension.swift
//  Africa Map
//
//  Created by SHAHUL HAMEED on 19/03/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1.Locate Json
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // 2.Locate Json
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to create data from \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode from \(file) in bundle")
        }
                
        return loaded
    }
}
