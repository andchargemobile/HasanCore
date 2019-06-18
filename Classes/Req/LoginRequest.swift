//
//  LoginRequest.swift
//  HasanCores
//
//  Created by GoodieMac2 on 18/06/19.
//

import Foundation

class LoginRequest: Codable {
    
    var deviceUniqueId: String
    var username: String
    var password: String
    var merchantCode: String
    
    init(deviceUniqueId: String, username: String, password: String, merchantCode: String){
        self.deviceUniqueId = deviceUniqueId
        self.username = username
        self.password = password
        self.merchantCode = merchantCode
    }
    
}
