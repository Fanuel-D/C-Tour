//
//  LoginViewController.swift
//  C-Tour
//
//  Created by Maxwell Kumbong on 4/14/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var NoAccountLabel: UILabel!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var PasswordLabel: UILabel!
    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var UserNameLabel: UILabel!
    @IBOutlet weak var LogindescriptionLabel: UILabel!
    @IBOutlet weak var WelcomeLabel: UILabel!
    @IBOutlet weak var AppNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButton(_ sender: Any) {
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
