//
//  Bundle-Decode.swift
//  UnsplashFavoritesTest
//
//  Created by Мак on 24.01.2022.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T { guard let url = self.url(forResource: file, withExtension: nil) else { fatalError("Failed to locate \(file) in Bundle")}
    
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in Bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {fatalError("faild to decode")}
    return loaded
    }
}
