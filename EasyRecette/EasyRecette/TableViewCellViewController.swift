//
//  TableViewCellViewController.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 19/01/2021.
//

import UIKit

class TableViewCellViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let recet = data{
            titre.text = recet.getNom()
            Description.text=recet.getComposition()
            image.image = UIImage(named:recet.getImgPath())
        }else{
            titre.text = "error"
        }
    }
    
    @IBOutlet weak var titre: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var Description: UITextView!
    
    var data: Recette?
}
