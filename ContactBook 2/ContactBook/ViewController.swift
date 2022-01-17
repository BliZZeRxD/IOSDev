//
//  ViewController.swift
//  ContactBook
//
//  Created by Ayan on 2/18/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    public var alarms = [Alarm.init("12:00","Eat"),
                  Alarm.init("13:00","Code"),
                  Alarm.init("14:00","Sleep"),
                  Alarm.init("15:00","Repeat")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return alarms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? CustomTableViewCell
        cell?.time.text = alarms[indexPath.row].time
        
        cell?.action.text = alarms[indexPath.row].action
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var myTableView: UITableView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let index = (myTableView.indexPathForSelectedRow?.row)
        {
        let destination = segue.destination as! DetailViewController
            destination.time = alarms[index].time;
            destination.action = alarms[index].action
        }
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tableView.beginUpdates()
            alarms.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    

}

