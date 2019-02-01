//
//  LineUpTableViewController.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 31/01/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import UIKit

class LineUpTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {

    cclass ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let dao = DAO.init()
    
    @IBOutlet weak var frituurTableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
    return dao.catLijst!.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dao.catLijst![section].prodLijst!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    //aanmaken cell, verwijst naar de cell in storyboard
    let cell:FrietTableViewCellController = tableView.dequeueReusableCell(withIdentifier: "cell") as! FrietTableViewCellController
    
    //FrietTableViewCellController is een subklasse van UITableViewCell, dus moet in hoofding methode niet aangepast worden
    
    
    //haal uit datasource het zoveelste product voor de zoveelste categorie
    let product = dao.catLijst![indexPath.section].prodLijst![indexPath.row]
    
    //we gebruiken nu eigen cell
    cell.naam.text = product.naam
    cell.prijs.text = "\(product.prijs!)"
    cell.aantal.text = "\(product.aantal!)"
    
    /*
     //cell opvullen met object voor indexpath
     cell?.textLabel!.text = product.naam
     cell?.detailTextLabel!.text = "\(product.prijs!)"
     */
    
    //cell is getekend, opgevuld
    return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return dao.catLijst![section].naam
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    //naar welk scherm?
    let destination:DetailViewController = segue.destination as! DetailViewController
    //wat naar scherm doorsturen
    let plaatsWaarGeklikt = frituurTableView.indexPathForSelectedRow
    let product = dao.catLijst![plaatsWaarGeklikt!.section].prodLijst![plaatsWaarGeklikt!.row]
    //effectief doorgeven
    destination.doorgegevenProduct = product
    
    }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
