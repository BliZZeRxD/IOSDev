import UIKit

class DetailViewController: UIViewController {
    var time: String?
    var action: String?
    public var completionHandler: ((String?) -> Void)?
    @IBOutlet var field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didTapButton()
    {
        completionHandler?(field.text)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func deleteAlarm(){
        
    }

}
