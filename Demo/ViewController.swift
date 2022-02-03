//
//  ViewController.swift
//  Demo
//
//  Created by Malar on 02/02/2022.
//

import UIKit

class ViewController: UIViewController {

    var lblLogin         : UILabel!
    var txtFldUsername   : UITextField!
    var txtFldPassword   : UITextField!
    var BtnLogin         : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSubViews()
        self.view.backgroundColor = UIColor.systemPink
    }

    func createSubViews(){
    
        lblLogin = UILabel()
        lblLogin.translatesAutoresizingMaskIntoConstraints = false
        lblLogin.text = "Login"
        lblLogin.font = UIFont.systemFont(ofSize: 40.0)
        lblLogin.textColor = UIColor.white
        lblLogin.textAlignment = .center
        self.view.addSubview(lblLogin)
        
        lblLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
        lblLogin.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
        lblLogin.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive =  true
        lblLogin.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        txtFldUsername = UITextField()
        txtFldUsername.translatesAutoresizingMaskIntoConstraints = false
        txtFldUsername.borderStyle = .roundedRect
        txtFldUsername.placeholder = "UserName"
        self.view.addSubview(txtFldUsername)

        txtFldUsername.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        txtFldUsername.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        txtFldUsername.topAnchor.constraint(equalTo: lblLogin.bottomAnchor, constant: 40).isActive =  true
        txtFldUsername.heightAnchor.constraint(equalToConstant: 50).isActive = true

        txtFldPassword = UITextField()
        txtFldPassword.translatesAutoresizingMaskIntoConstraints = false
        txtFldPassword.borderStyle = .roundedRect
        txtFldPassword.placeholder = "Password"
        self.view.addSubview(txtFldPassword)

        txtFldPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        txtFldPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        txtFldPassword.topAnchor.constraint(equalTo: txtFldUsername.bottomAnchor, constant: 50).isActive =  true
        txtFldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        BtnLogin = UIButton()
        BtnLogin.translatesAutoresizingMaskIntoConstraints = false
        BtnLogin.addTarget(self, action: #selector(loginBtnAction), for: .touchUpInside)
        BtnLogin.setTitle("Login", for: .normal)
        BtnLogin.setTitleColor(UIColor.systemPink, for: .normal)
        BtnLogin.layer.cornerRadius = 20
        BtnLogin.backgroundColor = UIColor.white
        self.view.addSubview(BtnLogin)
        
        BtnLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70).isActive = true
        BtnLogin.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70).isActive = true
        BtnLogin.topAnchor.constraint(equalTo: txtFldPassword.bottomAnchor, constant: 70).isActive =  true
        BtnLogin.heightAnchor.constraint(equalToConstant: 50).isActive = true

    }
    
    @objc func loginBtnAction(){
        
        if  txtFldUsername.text!.count < 5 {
            let alert = UIAlertController(title: "Error", message: "username must be more than 5 character", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "ok", style: .cancel, handler: nil)
            alert.addAction(defaultAction)
            self.present(alert,animated: true, completion: nil)
            
        }
        else if txtFldPassword.text!.count < 6 {
            let alert = UIAlertController(title: "Error", message: "password must be 6 character", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "ok", style: .cancel, handler: nil)
            alert.addAction(defaultAction)
            self.present(alert,animated: true, completion: nil)
        }
       
             let vc = SecondViewController()
             self.navigationController?.pushViewController(vc, animated: true)

        
    }
    

}

