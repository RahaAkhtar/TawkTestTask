//
//  ProfileViewModel.swift
//  TawkTestTask
//
//  Created by Muhammad Akhtar on 15/11/2021.
//

import Foundation
class ProfileViewModel {
    
    var errorComes:((CustomError?)->())?
    var comentsResponseComes:((GithubUser?)->())?
    
    func getProfileApi(postId:String) {
        
        let url = API.Get.init().Profile + postId
        APIGeneric<GithubUser>.fetchRequest(apiURL: url) { [weak self] (result) in
            DispatchQueue.main.async {
                
                guard let `self` = self else { return }
                switch result {
                case .success(let responseModel):
                    self.comentsResponseComes?(responseModel)
                case .failure(let error):
                    let err = CustomError(description: (error as? CustomError)?.description ?? "")
                    self.errorComes?(err)
                }
            }
        }
    }
}
