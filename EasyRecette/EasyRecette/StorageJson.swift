//
//  StorageJson.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 19/01/2021.
//

import Foundation

 class StorageJson{
    
    static func loadJson(filename fileName: String) -> [Recette]? {
        if let url = Bundle.main.url(forAuxiliaryExecutable: fileName) {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let allRecette = try decoder.decode([Recette].self, from: data)
                return allRecette
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }

    static func writeJson(filename fileName: String, allSiteKeys : [Recette]){
        let Data = try? JSONEncoder().encode(allSiteKeys)

        let pathAsURL = URL(fileURLWithPath: fileName)
        do {
            try Data?.write(to: pathAsURL)
        }
        catch {
            print("Failed to write JSON data: \(error.localizedDescription)")
        }
    }
    
    
}
