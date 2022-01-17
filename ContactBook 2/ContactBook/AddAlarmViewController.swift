import UIKit
let data = ["11:00","12:00"]

class AddAlarmViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var NewAction: UITextField!
    @IBOutlet weak var NewTime: UIDatePicker!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
        {
            self.view.endEditing(true)

        }
    @IBAction func saveContact(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    /*@IBOutlet weak var picker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
    }*/
    
}



