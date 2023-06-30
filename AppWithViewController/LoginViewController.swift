//
//  LoginViewController.swift
//  AppWithViewController
//
//  Created by Rosa Ortega on 28/06/23.
//

import UIKit

class LoginViewController: UIViewController {
    var signInformContainer: UIView?
    var signInWithContainer: UIView?
    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    var titleLabel: UILabel?
    var emailTextField: UITextField?
    var passwordTextField: UITextField?
    var signInButton: UIButton?
    var facebookButton: UIButton?
    var googleButton: UIButton?
    var emailIcon: UIImageView?
    var passwordIcon: UIImageView?    
    var brightBlue = UIColor(red: 66/255, green: 209/255, blue: 245/255, alpha: 1)
    var lightGrey = UIColor(red: 230/255, green: 232/255, blue: 233/255, alpha: 1)
    var darkNavy = UIColor(red: 17/255, green: 31/255, blue: 74/255, alpha: 1)
    var lightNavy = UIColor(red: 104/255, green: 110/255, blue: 142/255, alpha: 1)
    var facebookColor = UIColor(red: 63/255, green: 81/255, blue: 181/255, alpha: 1)
    var googleColor = UIColor(red: 41/255, green: 121/255, blue: 255/255, alpha: 1)


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initElements()
    }
    
    func initElements() {
        //signInformContainer = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        signInformContainer = UIView()
        signInformContainer?.backgroundColor = lightNavy
        view.addSubview(signInformContainer!)
        
        signInformContainer?.translatesAutoresizingMaskIntoConstraints = false
        
        signInformContainer?.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        signInformContainer?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        signInformContainer?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        signInformContainer?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
        
        signInformContainer?.layer.cornerRadius = 12
        
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: 100, width: width, height: 100))
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = darkNavy
        titleLabel?.font = UIFont(name: "Arial Bold", size: 28)
        titleLabel?.text = "Inicio de sesión"
        view.addSubview(titleLabel!)
        
        
        emailIcon = UIImageView(frame: CGRect(x: 15, y: 40, width: 30, height: 30))
        emailIcon?.image = UIImage(named: "email-light")
        signInformContainer?.addSubview(emailIcon!)
        
        
        emailTextField = UITextField(frame: CGRect(x: 50, y: 30, width: 260, height: 50))
        emailTextField?.placeholder = "john@doe.com"
        emailTextField?.backgroundColor = lightNavy
        emailTextField?.borderStyle = .roundedRect
        emailTextField?.borderRect(forBounds: CGRect(x: 5, y: 5, width: 20, height: 20))
        emailTextField?.clearsOnBeginEditing = true
        emailTextField?.textColor = lightGrey
        emailTextField?.font = UIFont(name: "Arial Bold", size: 18)
        emailTextField?.text = "Correo electrónico"
        signInformContainer?.addSubview(emailTextField!)
        
        
        passwordIcon = UIImageView(frame: CGRect(x: 15, y: 120, width: 30, height: 30))
        passwordIcon?.image = UIImage(named: "password-light")
        signInformContainer?.addSubview(passwordIcon!)
        
        
        passwordTextField = UITextField(frame: CGRect(x: 50, y: 110, width: 260, height: 50))
        passwordTextField?.placeholder = "********"
        passwordTextField?.backgroundColor = lightNavy
        passwordTextField?.borderStyle = .roundedRect
        passwordTextField?.clearsOnBeginEditing = true
        passwordTextField?.textColor = lightGrey
        passwordTextField?.font = UIFont(name: "Arial Bold", size: 18)
        passwordTextField?.text = "Contraseña"
        signInformContainer?.addSubview(passwordTextField!)
        
        
        signInButton = UIButton(frame: CGRect(x: 15, y: 200, width: 295, height: 50))
        signInButton?.backgroundColor = darkNavy
        signInButton?.layer.cornerRadius = 12
        signInButton?.setTitle("Iniciar sesión", for: .normal)
        signInformContainer?.addSubview(signInButton!)
        
        
        signInWithContainer = UIView()
        signInWithContainer?.backgroundColor = .white
        view.addSubview(signInWithContainer!)
        
        signInWithContainer?.translatesAutoresizingMaskIntoConstraints = false
        
        signInWithContainer?.topAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        signInWithContainer?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        signInWithContainer?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        signInWithContainer?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
        
        facebookButton = UIButton(frame: CGRect(x: 15, y: 10, width: 295, height: 50))
        facebookButton?.backgroundColor = facebookColor
        facebookButton?.layer.cornerRadius = 2
        facebookButton?.setTitle("Sign In with Facebook", for: .normal)
        signInWithContainer?.addSubview(facebookButton!)
        
        
        googleButton = UIButton(frame: CGRect(x: 15, y: 70, width: 295, height: 50))
        googleButton?.backgroundColor = googleColor
        googleButton?.layer.cornerRadius = 2
        googleButton?.setTitle("Sign in with Google", for: .normal)
        signInWithContainer?.addSubview(googleButton!)
    }
    
}
