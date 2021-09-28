//
//  APIConstants.swift
//  SEPA e-wallet
//
//  Created by Tushar on 23/03/21.
//

import Foundation
import Alamofire

let BASEURL = ""

struct Connectivity {
  static let sharedInstance = NetworkReachabilityManager()!
  static var isConnectedToInternet:Bool {
      return self.sharedInstance.isReachable
    }
   
}
struct APIRoute{
    static let route = ""
}

struct EndPoints {
    static let verifyEmail = ""
}
