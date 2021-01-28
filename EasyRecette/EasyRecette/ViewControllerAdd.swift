//
//  ViewControllerAdd.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 19/01/2021.
//

import UIKit

class ViewControllerAdd: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func ClickAdd(_ sender: Any) {
        self.data.append(Recette())
        self.data.append(Recette())
        self.data.append(Recette())
        self.data.append(Recette())
        let pathJson = Bundle.main.path(forResource: "save", ofType: "json")
        //print(pathJson)
        StorageJson.writeJson(filename: pathJson!, allSiteKeys: self.data)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController{
            //let row = tableViewContent.indexPathForSelectedRow!.row
            vc.data = self.data
            
            
            
        }
    }
    
    var data: [Recette] = []
}
