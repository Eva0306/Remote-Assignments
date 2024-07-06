//
//  ViewController.swift
//  Simple log-in and sign-up page
//
//  Created by 楊芮瑊 on 2024/7/3.
//

import UIKit

enum signType: Int {
  case login, signup
}
var signtype = signType(rawValue: 0)

class ViewController: UIViewController {

    @IBOutlet weak var signSegmentedControl: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    let correctAccount = "appworks_school"
    let correctPassword = "1234"
    
    @IBAction func changeSign(_ sender: UISegmentedControl) {
      if sender.selectedSegmentIndex == 0 {
          signtype = .login
          loginCheckView()
      } else {
          signtype = .signup
          signupCheckView()
      }
    }
    
    @IBAction func showAlert() {
        var title = "Error"
        var message = ""
        if signtype == .login {
            if accountTextField.text == ""{
                message = "Account should not be empty."
            } else if passwordTextField.text == "" {
                message = "Password should not be empty."
            } else if accountTextField.text != correctAccount || passwordTextField.text != correctPassword {
                message = "Login fail"
            } else {
                title = "Success"
            }
        } else {
            if accountTextField.text == ""{
                message = "Account should not be empty."
            } else if passwordTextField.text == "" {
                message = "Password should not be empty."
            } else if checkTextField.text == "" {
                message = "Check Password should not be empty."
            } else if passwordTextField.text != checkTextField.text {
                message = "Signup fail"
            } else {
                title = "Success"
            }
        }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler:nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginCheckView()
        // 設定已選取狀態的文字顏色為黑色
        let selectedTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        signSegmentedControl.setTitleTextAttributes(selectedTextAttributes, for: .selected)

        // 設定未選取狀態的文字顏色為白色
        let normalTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        signSegmentedControl.setTitleTextAttributes(normalTextAttributes, for: .normal)
        
    }
    
    func loginCheckView() {
        checkLabel.textColor = UIColor.gray
        checkTextField.backgroundColor = UIColor.gray
        checkTextField.isEnabled = false
    }
    
    func signupCheckView() {
        checkLabel.textColor = UIColor.black
        checkTextField.backgroundColor = UIColor.white
        checkTextField.isEnabled = true
    }


}

