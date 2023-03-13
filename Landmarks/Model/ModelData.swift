//
//  ModelData.swift
//  Landmarks
//
//  Created by Hugo Peyron on 10/03/2023.
//

// In this file we are created a method to read my json file named landmarkData.json.
// The method is using the guard and catch keywords which I do not know.

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
        
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not load \(filename) as \(T.self):\n\(error)")
    }
}
