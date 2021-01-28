//
//  Recette_TableViewCell.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 13/01/2021.
//

import UIKit

class Recette_TableViewCell: UITableViewCell {

    @IBOutlet weak var cell_img: UIImageView!
    
    @IBOutlet weak var cell_label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
