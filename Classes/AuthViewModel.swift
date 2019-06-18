//
//  AuthViewModel.swift
//  HasanCores
//
//  Created by GoodieMac2 on 18/06/19.
//

import Foundation


class AuthViewModel {
    
    let api = Global.instance.api
    var loginRes: LogRes?
    
    func doLogin(request: LoginRequest, completion: @escaping(LogRes) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json"]
        ClientConnect(baseURL: api.uri(.login)).post(LogRes.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.loginRes = result!
            if self.loginRes?.abstractResponse?.responseStatus == "AUTH000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
