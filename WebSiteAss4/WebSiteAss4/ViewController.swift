//
//  ViewController.swift
//  WebSiteAss4
//
//  Created by Ayan on 2/26/21.
//

import UIKit
import SafariServices
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonTapped(){
    let vc = SFSafariViewController(url: URL(string: "https://www.google.com")!)
    present(vc,animated: true)
    }
}
