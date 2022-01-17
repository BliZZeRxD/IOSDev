//
//  InfoVC.swift
//  Assignment4Portrait
//
//  Created by Ayan on 2/26/21.
//

import UIKit
import WebKit
import SafariServices
class InfoVC: UIViewController {

/*    @IBOutlet weak var my_image: UIImageView!
    var image: UIImage?{
        didSet{
            if my_image != nil{
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI(){
        my_image.image = image
    }

}
extension UIImageView{
    func circle()-> UIImageView{
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.bounds.width/2
        return self
    }
}
 */
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    let vc = SFSafariViewController(url: URL(string: "https://www.apple.com")!)
}
