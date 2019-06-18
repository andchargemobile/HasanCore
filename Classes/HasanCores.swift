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
    
    
    public class func login(deviceUniqueId: String, username: String, password: String, merchantCode: String, completion: @escaping(LoginResponse) -> Void, onError: @escaping(Error)-> Void){
       
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
