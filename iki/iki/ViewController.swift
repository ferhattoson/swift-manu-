//
//  ViewController.swift
//  iki
//
//  Created by Ferhat Toson on 25.06.2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var manlar=[String]()
    var manphotoname=[String]()

    var secilenisim=""
    var secilenphoto=""
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        manlar.append("batman")
        manlar.append("spiderman")
        manlar.append("iron man")
        
        manphotoname.append("batman")
        manphotoname.append("spider")
        manphotoname.append("iron")

        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manlar.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=manlar[indexPath.row]
         return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            manlar.remove(at: indexPath.row)
            manphotoname.remove(at: indexPath.row)
            tableView.deleteRows(at:[indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         secilenisim=manlar[indexPath.row]
         secilenphoto=manphotoname[indexPath.row]
        performSegue(withIdentifier: "todetavc", sender: nil)    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="todetavc"{
            let destinationvc=segue.destination as! detayViewController
            destinationvc.secilenman=secilenisim
            destinationvc.secilenresim=secilenphoto
        }
            
    }
}

