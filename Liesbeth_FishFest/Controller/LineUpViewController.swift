//
//  LineUpViewController.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 31/01/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import UIKit

class LineUpViewController: UITableViewController{

    
    let dao = DAO.init()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return dao.dayList!.count
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dao.dayList![section].artistList!.count
        }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            //aanmaken cell, verwijst naar de cell in storyboard
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
            
            //haal uit datasource het zoveelste product voor de zoveelste categorie
            let artist = dao.dayList![indexPath.section].artistList![indexPath.row]
            
            //we gebruiken nu eigen cell
            cell!.textLabel!.text = artist.name
            cell!.detailTextLabel!.text = artist.time! + " " + artist.stage!
            //cell!.imageView!.image = UIImage.init(named: artist.picName
        
            //cell is getekend, opgevuld
        return cell!
        }
        
        
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return dao.dayList![section].name
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
    
    //segue naar details
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            //naar welk scherm?
            let destination:DetailsViewController = segue.destination as! DetailsViewController
            //wat naar scherm doorsturen
            let screenTouched = tableView.indexPathForSelectedRow
            let artist = dao.dayList![screenTouched!.section].artistList![screenTouched!.row]
            //effectief doorgeven
            destination.artistDetail = artist
            
        }
    
        
}

