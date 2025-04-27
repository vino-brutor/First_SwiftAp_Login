//
//  ViewController.swift
//  testandoUiKit
//
//  Created by Vítor Bruno on 23/04/25.
//

import UIKit



class ViewController: UIViewController {

    //declarao dos elementos
    @IBOutlet weak var labelWelcome: UILabel!

    @IBOutlet weak var stackViewIconWelcome: UIStackView!

    @IBOutlet weak var appleInteligenceIcon: UIImageView!
    
    @IBOutlet weak var labelLogin: UILabel!
    
    @IBOutlet var viewLogin: UIView!
    
    @IBOutlet weak var labelEmail: UILabel!
    
    @IBOutlet weak var labelPassword: UILabel!
    
    @IBOutlet weak var textFieldEmail: UITextField!
 
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnCreateAccount: UIButton!
    
    @IBOutlet weak var stackViewLogin: UIStackView!
    
    
    
    //funcao didloadView
    override func viewDidLoad() {
        super.viewDidLoad()

        setSubView()

    }

    //funcao setSubView, pra modificar as coisas e colocar no ViewDidLoad
    func setSubView() {
        
        labelFormatation()
        
        textFieldFormatation()
        
        buttonFormatation()
        
        stackViewIconWelcome.gradientColor(
            colorOne: UIColor(
                red: 0/255, green: 66/255, blue: 132/255, alpha: 1.0
            ),
            colorTwo: UIColor(
                red: 79/255, green: 188/255, blue: 255/255, alpha: 1.0
            )
        )
        
        viewLogin.backgroundColor = UIColor(red: 28.0/255.0, green: 28.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        
    }
    
    func labelFormatation(){
        
        labelWelcome.textColor = .white  //welcome branco
        labelWelcome.font = UIFont(name: "SFProRounded-Bold", size: 34)  //fonte e tamanho do welcome
        
        labelLogin.textColor = .white
        labelLogin.font = UIFont(name: "SFProRounded-Bold", size: 28)
        
        labelEmail.textColor = .white
        labelEmail.font = UIFont(name: "SFPro", size: 16)
        
        labelPassword.textColor = .white
        labelPassword.font = UIFont(name: "SFPro", size: 16)
    }
    
    func textFieldFormatation(){
        
        textFieldEmail.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
        
        
        textFieldPassword.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
    }
    
    func buttonFormatation(){
        
        btnLogin.backgroundColor = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1.0)
        btnLogin.layer.cornerRadius = 12
        
        btnCreateAccount.backgroundColor = UIColor(red: 44/255, green: 44/255, blue: 46/255, alpha: 1.0)
        btnCreateAccount.layer.cornerRadius = 12
    }
    
}
