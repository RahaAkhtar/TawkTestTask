//
//  service.swift
//  UnitTestDemo
//
//  Created by Muhammad Akhtar on 27/10/2021.
//

import Foundation

class WebServiceHandler {
    
    static let sharedInstance = WebServiceHandler()
    private init() {}
    
    var isLoading = false
    
    func signup() {
        isLoading = true
    }
}
