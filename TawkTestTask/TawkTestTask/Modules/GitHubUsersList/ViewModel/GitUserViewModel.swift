//
//  GitUserViewModel.swift
//  TawkTestTask
//
//  Created by Muhammad Akhtar on 15/11/2021.
//

import Foundation

class GitUserViewModel {
    
    var responseComes:((GithubUserList?)->())?
    var errorComes:((CustomError?)->())?
    
    func getPostApi() {
        
        let url = API.Get.init().Users
        
        APIGeneric<GithubUserList>.fetchRequest(apiURL: url) { [weak self] (result) in
            DispatchQueue.main.async {

                guard let `self` = self else { return }
                switch result {
                case .success(let responseModel):
                    self.responseComes?(responseModel)
                case .failure(let error):
                    let err = CustomError(description: (error as? CustomError)?.description ?? "")
                    self.errorComes?(err)
                }
            }
        }
    }
    
}
