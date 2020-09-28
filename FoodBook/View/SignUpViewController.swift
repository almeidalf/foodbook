//
//  SignUpViewController.swift
//  FoodBook
//
//  Created by Reply on 22/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var SignupViewModel = SignupVM()
    
    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    @IBOutlet weak var txtConfirmacaoSenha: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func btnCadastrar(_ sender: Any) {
        let usuario = UsuarioCadastro(txtNome.text!, txtEmail.text!, txtSenha.text!)
        
        SignupViewModel.enviarDados(info: usuario)
    }
}
