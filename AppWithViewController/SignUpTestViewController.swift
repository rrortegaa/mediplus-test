//
//  SignUpTestViewController.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 30/06/23.
//

import UIKit

class SignUpTestViewController: UIViewController {
    var signUpformContainer: UIView?
    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    var titleLabel: UILabel?
    var nameTextField: UITextField?
    var emailTextField: UITextField?
    var passwordTextField: UITextField?
    var signUpButton: UIButton?
    var userIcon: UIImageView?
    var emailIcon: UIImageView?
    var passwordIcon: UIImageView?
    var brightBlue = UIColor(red: 66/255, green: 209/255, blue: 245/255, alpha: 1)
    var lightGrey = UIColor(red: 230/255, green: 232/255, blue: 233/255, alpha: 1)
    var darkNavy = UIColor(red: 17/255, green: 31/255, blue: 74/255, alpha: 1)
    var lightNavy = UIColor(red: 104/255, green: 110/255, blue: 142/255, alpha: 1)
    var paddingLeft: CGFloat = 30


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initUI()
    }
    
    func initUI() {
        // signUpformContainer = UIView(frame: CGRect(x: 50, y: 200, width: 300, height: 150))
        signUpformContainer = UIView()
        signUpformContainer?.backgroundColor = lightNavy
        view.addSubview(signUpformContainer!)
        
        signUpformContainer?.translatesAutoresizingMaskIntoConstraints = false
        
        signUpformContainer?.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        signUpformContainer?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeft).isActive = true
        signUpformContainer?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        signUpformContainer?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -220).isActive = true
        
        signUpformContainer?.layer.cornerRadius = 12
        
        
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: 100, width: width, height: 100))
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = darkNavy
        titleLabel?.font = UIFont(name: "Arial Bold", size: 24)
        titleLabel?.text = "Crear cuenta"
        view.addSubview(titleLabel!)
        
        
        // userIcon = UIImageView(frame: CGRect(x: 15, y: 40, width: 30, height: 30))
        userIcon = UIImageView()
        userIcon?.image = UIImage(named: "user-light")
        view.addSubview(userIcon!)
        
        userIcon?.translatesAutoresizingMaskIntoConstraints = false
        userIcon?.topAnchor.constraint(equalTo: signUpformContainer!.topAnchor, constant: 40).isActive = true
        userIcon?.leadingAnchor.constraint(equalTo: signUpformContainer!.leadingAnchor, constant: 15).isActive = true
        
        
        // nameTextField = UITextField(frame: CGRect(x: 50, y: 30, width:260, height: 50))
        nameTextField = UITextField()
        nameTextField?.placeholder = "John Doe"
        nameTextField?.backgroundColor = lightNavy
        nameTextField?.borderStyle = .roundedRect
        nameTextField?.clearsOnBeginEditing = true
        nameTextField?.textColor = lightGrey
        nameTextField?.font = UIFont(name: "Arial Bold", size: 18)
        nameTextField?.text = "Nombre"
        //signUpformContainer?.addSubview(nameTextField!)
        view.addSubview(nameTextField!)
        
        nameTextField?.translatesAutoresizingMaskIntoConstraints = false
        nameTextField?.topAnchor.constraint(equalTo: signUpformContainer!.topAnchor, constant: 30).isActive = true
        nameTextField?.leadingAnchor.constraint(equalTo: signUpformContainer!.leadingAnchor, constant: 50).isActive = true
        nameTextField?.trailingAnchor.constraint(equalTo: signUpformContainer!.trailingAnchor, constant: -30).isActive = true
        nameTextField?.bottomAnchor.constraint(equalTo: signUpformContainer!.bottomAnchor, constant: -280).isActive = true
        
        
        
        emailIcon = UIImageView(frame: CGRect(x: 15, y: 120, width: 30, height: 30))
        emailIcon?.image = UIImage(named: "email-light")
        signUpformContainer?.addSubview(emailIcon!)
        
        
        emailTextField = UITextField(frame: CGRect(x: 50, y: 110, width: 260, height: 50))
        emailTextField?.placeholder = "john@doe.com"
        emailTextField?.backgroundColor = lightNavy
        emailTextField?.borderStyle = .roundedRect
        emailTextField?.clearsOnBeginEditing = true
        emailTextField?.textColor = lightGrey
        emailTextField?.font = UIFont(name: "Arial Bold", size: 18)
        emailTextField?.text = "Correo electrónico"
        signUpformContainer?.addSubview(emailTextField!)
        
        
        passwordIcon = UIImageView(frame: CGRect(x: 15, y: 200, width: 30, height: 30))
        passwordIcon?.image = UIImage(named: "password-light")
        signUpformContainer?.addSubview(passwordIcon!)
        
        
        passwordTextField = UITextField(frame: CGRect(x: 50, y: 190, width: 260, height: 50))
        passwordTextField?.placeholder = "********"
        passwordTextField?.backgroundColor = lightNavy
        passwordTextField?.borderStyle = .roundedRect
        passwordTextField?.clearsOnBeginEditing = true
        passwordTextField?.textColor = lightGrey
        passwordTextField?.font = UIFont(name: "Arial Bold", size: 18)
        passwordTextField?.text = "Contraseña"
        signUpformContainer?.addSubview(passwordTextField!)
        
        signUpButton = UIButton(frame: CGRect(x: 15, y: 280, width: 295, height: 50))
        signUpButton?.backgroundColor = darkNavy
        signUpButton?.layer.cornerRadius = 12
        signUpButton?.setTitle("Registrarse", for: .normal)
        
        signUpformContainer?.addSubview(signUpButton!)
    }


}
