//
//  APIManager.swift
//  AlamofireNetworking
//  Created by Tushar on 23/03/21.

import UIKit
import Alamofire
import SwiftyJSON
//
// MARK:- ipv6 Configuration...
//
//private var webView = UIWebView(frame: CGRect.zero)
//private var secretAgent: String? = webView.stringByEvaluatingJavaScript(from: "navigator.userAgent")
var authHeaders: HTTPHeaders = ["User-Agent": "", "Content-Type": "application/json; charset=utf-8"]

class APIManager: NSObject {

    static let sharedInstance = APIManager()

    func requestGETURL(_ strURL: String, success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void) {

        AF.request(strURL).responseJSON { (responseObject) -> Void in

            switch responseObject.result {
            case .success(let value):
                print(strURL)
                print(value)
                success(JSON(value))
                break
                
            case .failure(let error):
                print(error)
                failure(error)
                break
                
              
        }
    }
}
    //Get Request with header Token
    func requestGETURLWithHeader(_ strURL: String, headers: HTTPHeaders?, params: [String : Any]?,success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void) {

        AF.request(strURL, method: .get, parameters: params, encoding: JSONEncoding.default, headers: authHeaders).responseJSON { (responseObject) -> Void in
          print("URL = \(strURL)")
            print(params ?? ["":""])
            switch responseObject.result {
            case .success(let value):
                success(JSON(value))
                break
                
            case .failure(let error):
                print(error)
                self.showAlertMessage(titleStr: AppMsg.AlertTitle, messageStr: error.localizedDescription)
                failure(error)
                break
        }
    }
}
    
    func requestPOSTURL(_ strURL: String, params: [String : Any]?, headers: HTTPHeaders?, success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void) {

        print(strURL)
        //print(params ?? ["":""])
        AF.request(strURL, method: .post, parameters: params, encoding: JSONEncoding.default, headers: authHeaders).responseJSON { (responseObject) -> Void in

            switch responseObject.result {
            case .success(let value):
                success(JSON(value))
                break
                
            case .failure(let error):
                print(error)
                self.showAlertMessage(titleStr: AppMsg.AlertTitle, messageStr: error.localizedDescription)
                failure(error)
                break
        }
    }
}
    
    func requestPUTURL(_ strURL: String, params: [String : Any]?, headers: HTTPHeaders?, success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void) {

        print(strURL)
        print(params ?? ["":""])
        AF.request(strURL, method: .put, parameters: params, encoding: JSONEncoding.default, headers: authHeaders).responseJSON { (responseObject) -> Void in

            switch responseObject.result {
            case .success(let value):
                success(JSON(value))
                break
                
            case .failure(let error):
                print(error)
                self.showAlertMessage(titleStr: AppMsg.AlertTitle, messageStr: error.localizedDescription)
                failure(error)
                break
        }
    }
}
    
    //Delete request with header Token
    func requestDeleteWithHeader(_ strURL: String, headers: HTTPHeaders?, params: [String : Any]?,success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void) {

        AF.request(strURL, method: .delete, parameters: params, encoding: JSONEncoding.default, headers: authHeaders).responseJSON { (responseObject) -> Void in
           print(strURL)
            switch responseObject.result {
            case .success(let value):
                success(JSON(value))
                break
                
            case .failure(let error):
                print(error)
                self.showAlertMessage(titleStr: AppMsg.AlertTitle, messageStr: error.localizedDescription)
                failure(error)
                break
        }
    }
}
    
    func showAlertMessage(titleStr:String, messageStr:String) {
        let alert = UIAlertController(title: titleStr, message: messageStr, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title:AppMsg.btnOK, style: .default, handler: nil)
        alert.addAction(okAction)
     
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first!.rootViewController?.present(alert, animated: true, completion: nil)
       }
    
}
