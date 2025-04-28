//
//  CreateAccountViewController.swift
//  testandoUiKit
//
//  Created by Vítor Bruno on 26/04/25.
//
import UIKit

class CreateAccountViewController:UIViewController {
    @IBOutlet weak var textFieldFullname: UITextField!
    @IBOutlet weak var optionPolicy: UISwitch!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var labelCreateAccount: UILabel!
    @IBOutlet weak var btnCreateAccount: UIButton!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var labelFullName: UILabel!
    @IBOutlet var createAccountView: UIView!
    
    @IBOutlet weak var labelDate: UILabel!
    
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    @IBOutlet weak var datePickerBirth: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubViewCrateAccount()
        
    }
    
    func setSubViewCrateAccount(){
        btnCreateAccount.layer.cornerRadius = 12
        
        labelCreateAccount.font = (UIFont(name: "SFProRounded-Bold", size: 34))
        
        labelFullName.font = (UIFont(name: "SFProText-Semibold", size: 17))
        labelEmail.font = (UIFont(name: "SFProText-Semibold", size: 17))
        labelPassword.font = (UIFont(name: "SFProText-Semibold", size: 17))
        labelDate.font = (UIFont(name: "SFProText-Semibold", size: 17))
    }
    
    
    @IBAction func buttonCreateAccountTapped(_ sender: UIButton) {
        
        if(optionPolicy.isOn){
            guard let fullname = textFieldFullname.text, !fullname.isEmpty else {
                
                showErrorAlert(alertMessage: "Please enter your full name")
                return
            }
            
            guard let email = textFieldEmail.text, !email.isEmpty else {
                
                showErrorAlert(alertMessage: "Please enter your email")
                return
            }
            
            guard let password = textFieldPassword.text, !password.isEmpty else {
                showErrorAlert(alertMessage: "Please enter your password")
                return
            }
            
            guard let dateOfBirth = datePickerBirth.date as Date? else {
                showErrorAlert(alertMessage: "Please enter your Birth day")
                return
            }
            
            addAccountCreated(fullName: fullname, email: email, password: password, dateOfBirth: dateOfBirth)
            
        
            if let accountsList = getAccounts() {
                for account in accountsList.Accounts {
                    print("Fullname: \(account.fullname), Email: \(account.email), Date of Birth: \(account.dateOfBirth),  Password: \(account.password)\n")
                }
            } else {
                print("No accounts Found")
            }
            
        } else {
            showErrorAlert(alertMessage: "Please accept the policy therms")
        }
    }

    func showErrorAlert(alertMessage: String){
        let errorAlert = UIAlertController(title: "Error", message: alertMessage, preferredStyle: .alert)
        
        errorAlert.addAction(UIAlertAction(title: "OK", style: .default))
        
        present(errorAlert, animated: true , completion: nil)
    }
}
