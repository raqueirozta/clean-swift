import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeInitialSetupView()
    }
      
    func makeInitialSetupView() {
        self.resultLabel.text = ""
        self.sendButton.setTitle("Enviar", for: .normal)
    }
    func makeFinalView() {
        self.sendButton.setTitle("Enviado", for: .normal)
        self.nameTextField.text = ""
    }
    		
    @IBAction func buttonAction(_ sender: Any) {
        name += nameTextField.text!
        self.resultLabel.text = name
        makeFinalView()
    }
}

