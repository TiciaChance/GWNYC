//
//  GardenParser.swift
//  GWNYC
//
//  Created by Ticia Chance on 1/30/17.
//  Copyright © 2017 Ticia Chance. All rights reserved.
//

import Foundation

class GardenParser: NSObject {
    
    class func parseGardenData(json: Any) -> [Gardens] {
        
        //var marketsInformation = [Markets]()
        //print(json)
        if let JSON = json as? [String : Any],
            let arrayOfData = JSON["data"] as? NSArray {

            for data in arrayOfData {
                
            }
        }
        return [Gardens]()
    }
}

struct Gardens  {
    let name : String
    let city : String
    let address : String
    let location : String
    let zipCode : String
    let phoneNumber : String
    let hoursOfOperation : String
    let season : String
    let lat : String
    let long : String
    let urlString : String
    
}
