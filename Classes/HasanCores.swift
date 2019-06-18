//
//  HasanCores.swift
//  HasanCores
//
//  Created by GoodieMac2 on 14/06/19.
//

import Foundation


public class HasanCores: NSObject {
    
    public override init(){
        super.init()
    }
    
    
    public class func login(deviceUniqueId: String, username: String, password: String, merchantCode: String, completion: @escaping(LogRes) -> Void, onError: @escaping(Error)-> Void){
        let log = LoginRequest(deviceUniqueId: deviceUniqueId, username: username, password: password, merchantCode: merchantCode)
        let vm = Global.locator.auth
        vm.doLogin(request: log, completion: { (res:LogRes) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    
    
    public class func cetak(name: String){
        consolLog(name: name)
    }
    
    class func consolLog(name: String){
        print("*******************")
        print("Welcome \(name)!!")
        print("*******************")
    }
    
    
}
