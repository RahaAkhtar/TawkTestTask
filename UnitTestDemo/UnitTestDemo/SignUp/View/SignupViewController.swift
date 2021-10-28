//
//  SignupViewController.swift
//  UnitTestDemo
//
//  Created by Muhammad Akhtar on 27/10/2021.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var firsName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repeatedPassword: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    var signupVM : SignUpViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    static func getVC(with signupVM: SignUpViewModel) -> SignupViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        vc.signupVM = signupVM
        return vc
    }
    
    @IBAction func signupAction(_ sender: UIButton) {
        if signupVM.isValidEntries {
            WebServiceHandler.sharedInstance.signup()
        } else {
            
        }
    }
    

}
