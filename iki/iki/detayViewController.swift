//
//  detayViewController.swift
//  iki
//
//  Created by Ferhat Toson on 25.06.2022.
//

import UIKit

class detayViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var secilenresim=""
    var secilenman=""
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image=UIImage(named: secilenresim)
        label.text=secilenman
        // Do any additional setup after loading the view.
    }
    


}
