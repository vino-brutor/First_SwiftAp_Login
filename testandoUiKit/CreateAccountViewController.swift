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
        print("Button tapped")
        
        if(optionPolicy.isOn){
            guard let fullname = textFieldFullname.text, !fullname.isEmpty else {
                print("Please enter your full name")
                return
            }
            
            guard let email = textFieldEmail.text, !email.isEmpty else {
                print("Please enter your email")
                return
            }
            
            guard let password = textFieldPassword.text, !password.isEmpty else {
                print("Please enter your password")
                return
            }
            
            addAccountCreated(fullName: fullname, email: email, password: password)
            
        
            if let accountsList = getAccounts() {
                for account in accountsList.Accounts {
                    print("Fullname: \(account.fullname), Email: \(account.email), Password: \(account.password)")
                }
            } else {
                print("Nenhuma conta encontrada")
            }
            
        } else {
            print("Please mark the policy option")
        }
    }
    
}
