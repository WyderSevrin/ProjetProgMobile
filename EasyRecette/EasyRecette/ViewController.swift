//
//  ViewController.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 07/01/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var b_Recette: UIButton!
    
    @IBOutlet weak var b_add: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCorners()
        
        let pathJson = Bundle.main.path(forResource: "save", ofType: "json")
        
        
        if StorageJson.loadJson(filename: pathJson!) != nil{
            let pathJson = Bundle.main.path(forResource: "save", ofType: "json")
            //let urlJson = URL(fileURLWithPath: pathJson!)
            
            self.data = StorageJson.loadJson(filename: pathJson!)!
            print("charge les donnees")
        }else{
            print("impossible de charge les donne")
        }
        
        //self.data.append(Recette())
        //self.data.append(Recette())
        //self.data.append(Recette())
        //self.data.append(Recette())
        
    }

    //On blocque la vue de l'application en porttrait
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
       get {
          return .portrait
       }
    }
    
    
    func setCorners() {
        self.b_Recette.layer.cornerRadius = 10
        self.b_add.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //StorageJson.saveToJsonFile(dataToSave: self.data)
        
        if let vc = segue.destination as? ViewControllerRecettes{
            //let row = tableViewContent.indexPathForSelectedRow!.row
            vc.data = self.data
            
            
            
        }
    }
    
    var data: [Recette] = []

}


