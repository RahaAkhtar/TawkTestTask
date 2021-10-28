//
//  SignUpViewModel.swift
//  UnitTestDemo
//
//  Created by Muhammad Akhtar on 27/10/2021.
//

import Foundation

class SignUpViewModel {
    
    var signupModel: SignupModel!
    
    init(model: SignupModel) {
        self.signupModel = model
    }
    
    var isValidEntries: Bool {
        guard let model = signupModel else { return false}
        return model.isValidFirstName && model.isValidLastName && model.isValidEmail && model.isValidPassword
    }
        
    deinit {
        print("$$ SignupVM - deinit")
    }
}
