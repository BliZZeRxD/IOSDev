import UIKit

class ViewController: UIViewController {
    
    //var loginText = ""
    
    @IBOutlet var field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    @IBAction func Enter(_ sender: Any) {
        //loginText = field.text!
        performSegue(withIdentifier: "first_segue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondVC
        //vc.finalLogin = self.loginText
        vc.modalPresentationStyle = .fullScreen
    }
}
