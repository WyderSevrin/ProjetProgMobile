//
//  ViewControllerRecettes.swift
//  EasyRecette
//
//  Created by Sevrin Wyder on 07/01/2021.
//

import UIKit

class ViewControllerRecettes: UIViewController,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewContent.dequeueReusableCell(withIdentifier: "cell_Recette",for: indexPath) as! Recette_TableViewCell
        let row = indexPath.row
        if row%2 == 0{
            cell.backgroundColor = UIColor.systemGray6
        }else{
            cell.backgroundColor = UIColor.white
        }
        
        cell.cell_label.text = data[row].getNom()
        cell.cell_img.image = UIImage(named:data[row].getImgPath())
        //cell.cell_img
        return cell
    }
    

   
    
    //l'array est vide pourt l'instant
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewContent.dataSource = self
        
        /*
        self.data.append(Recette())
        self.data.append(Recette())
        self.data.append(Recette())
        self.data.append(Recette())*/
        
        // Do any additional setup after loading the view.
    }
    
    func getData()->[Recette]{
        return self.data
    }
    
    func addData(recette:Recette){
        self.data.append(recette)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TableViewCellViewController{
            let row = tableViewContent.indexPathForSelectedRow!.row
            vc.data = data[row]
            
        }
    }
    
    @IBOutlet weak var tableViewContent: UITableView!
    var data: [Recette] = []

}
