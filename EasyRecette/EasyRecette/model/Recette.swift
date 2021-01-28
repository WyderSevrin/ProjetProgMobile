//
//  recette.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 13/01/2021.
//

import Foundation
import UIKit
/*
class Recettes: Codable{
    let recettes: [Recette]
    
    init(recettes : [Recette]){
        self.recettes = recettes
    }
}*/

class Recette: Codable{
    let composition: String
    let nom: String
    let pathimg: String
    //let img :
    
    
    init(){
        self.pathimg = "recette_img.jpg"
        self.composition = "La composition est .."
        self.nom = "Nom de la recette"
        //self.img = UIImage(named:pathimg)!
        
    }
    
    init(composition:String, nom:String, img:String, path:String){
        self.composition = composition
        self.nom = nom
        //self.img = UIImage(named:img)!
        self.pathimg = "recette_img.jpg"
    }
    
    func getComposition()->String{
        return self.composition
    }
    
    func getNom()->String{
        return self.nom
    }
    
  
    
    func getImgPath()->String{
        return self.pathimg
    }
    
    
}
