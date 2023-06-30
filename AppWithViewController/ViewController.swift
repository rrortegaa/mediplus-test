//
//  ViewController.swift
//  AppWithViewController
//
//  Created by Rosa Ortega on 27/06/23.
//

import UIKit

class ViewController: UIViewController {
    var newView: UIView?
    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    var firstImage: UIImageView?
    var titleLabel: UILabel?
    var signInButton: UIButton?
    var signUpButton: UIButton?
    var brightBlue = UIColor(red: 66/255, green: 209/255, blue: 245/255, alpha: 1)
    var darkNavy = UIColor(red: 17/255, green: 31/255, blue: 74/255, alpha: 1)
    var lightNavy = UIColor(red: 104/255, green: 110/255, blue: 142/255, alpha: 1)
    var primaryLightColor = UIColor(red: 228/255, green: 254/255, blue: 255/255, alpha: 1)


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initElements()
    }

    // Función para inicializar elementos
    func initElements() {
        // Step 1: Inicializar variable
        newView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        // Step 2: configurar atributos
        newView?.backgroundColor = .white
        // Step 3: Agregar variable a la vista
        view.addSubview(newView!)
        
        
        // Step 1: Inicializar variable
        firstImage = UIImageView(frame: CGRect(x: 100, y: 130, width: 200, height: 160))
        // Step 2: configurar atributos
        firstImage?.image = UIImage(named: "Medi+NavyBlue")
        firstImage?.layer.masksToBounds = true
        firstImage?.contentMode = .scaleAspectFit
        // Step 3: Agregar variable a la vista
        view.addSubview(firstImage!)
        
        
        // Step 1: Inicializar variable
        titleLabel = UILabel(frame: CGRect(x: 0, y: 320, width: width, height: 100))
        // Step 2: configurar atributos
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = darkNavy
        titleLabel?.font = UIFont(name: "Arial Bold", size: 28.0)
        titleLabel?.text = "Bienvenido"
        // Step 3: Agregar variable a la vista
        view.addSubview(titleLabel!)
        
        
        // Step 1: Inicializar variable
        signInButton = UIButton(frame: CGRect(x: 30, y: 430, width: width-60, height: 50))
        // Step 2: configurar atributos
        signInButton?.backgroundColor = brightBlue
        signInButton?.layer.cornerRadius = 12
        signInButton?.setTitle("Iniciar sesión", for: .normal)
        signInButton?.addTarget(self, action: #selector(goToSignInScreen), for: .touchUpInside)
        // Step 3: Agregar variable a la vista
        view.addSubview(signInButton!)
        
        
        // Step 1: Inicializar variable
        signUpButton = UIButton(frame: CGRect(x: 30, y: 500, width: width-60, height: 50))
        // Step 2: configurar atributos
        signUpButton?.backgroundColor = darkNavy
        signUpButton?.layer.cornerRadius = 12
        signUpButton?.setTitle("Registrarse", for: .normal)
        signUpButton?.addTarget(self, action: #selector(gotoSignUpScreen), for: .touchUpInside)
        // Step 3: Agregar variable a la vista
        view.addSubview(signUpButton!)
    }
    
    @objc func goToSignInScreen() {
        let signInViewController = LoginViewController()
        print("signInButton pressed")
        // signInViewController.modalPresentationStyle = .fullScreen
        present(signInViewController, animated: true)
    }
    
    @objc func gotoSignUpScreen() {
        let signUpViewController = SignUpViewController()
        print("signUpButton pressed")
        present(signUpViewController, animated: true)
    }
}
