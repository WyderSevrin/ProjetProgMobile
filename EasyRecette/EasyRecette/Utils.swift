//
//  Utils.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 13/01/2021.
//

import Foundation
import UIKit

extension UIImageView{
    func load(urlString: String){
        if let url = URL(string: urlString){
            if let rawData = try? Data(contentsOf: url){
                if let image = UIImage(data: rawData){
                    self.image = image
                }
            }
        }
    }
}
