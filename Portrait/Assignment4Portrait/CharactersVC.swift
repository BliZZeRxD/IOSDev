//
//  CharactersVC.swift
//  Assignment4Portrait
//
//  Created by Ayan on 2/26/21.
//

import UIKit

class CharactersVC: UITableViewController {
    private var characters: [Characters] =
    [
        Characters(name: "Naruto", image: UIImage.init(named: "Naruto")),
        Characters(name: "Saske", image: UIImage.init(named: "Saske")),
        Characters(name: "Obito", image: UIImage.init(named: "Obito")),
        Characters(name: "Jiraiya", image: UIImage.init(named: "Jiraiya")),
        Characters(name: "Itachi", image: UIImage.init(named: "Itachi")),
        Characters(name: "Shikamaru", image: UIImage.init(named: "Shikamaru"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Characters"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
        return characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = characters[indexPath.row].name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showDetail"
        {
            if let navcon = segue.destination as? UINavigationController
            {
                if let destination = navcon.visibleViewController as? InfoVC
                {
                
                    if let row = tableView.indexPathForSelectedRow?.row
                    {
                    destination.image = characters[row].image
                    destination.navigationItem.title = characters[row].name
                    }
                }
            }
        }
    }
}
