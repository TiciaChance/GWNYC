//
//  FarmersMarketParser.swift
//  GWNYC
//
//  Created by Ticia Chance on 1/24/17.
//  Copyright © 2017 Ticia Chance. All rights reserved.
//

import UIKit

class FarmersMarketParser: NSObject {
    
    class func parseFMData(json: Any) -> [Markets] {
        
        var marketsInformation = [Markets]()
        
        if let JSON = json as? [[String : Any]]{
            for information in JSON {
                if let city = information["city"] as? String,
                    let marketName = information["market_name"] as? String,
                    let address = information["address_line_1"] as? String,
                    let location = information["location"] as? String,
                    let zipCode = information["zip"] as? String,
                    let phoneNumber = information["phone"] as? String,
                    let hours = information["operation_hours"] as? String,
                    let seasons = information["operation_season"] as? String,
                    let detailedLocation = information["location_points"] as? [String : Any],
                    let latitude = detailedLocation["latitude"] as? String,
                    let longitude = detailedLocation["longitude"] as? String,
                    let link = information["market_link"] as? [String : Any],
                    let urlString = link["url"] as? String
                {
                    let info = Markets(name: marketName, city: city, address: address, location: location, zipCode: zipCode, phoneNumber: phoneNumber, hoursOfOperation: hours, season: seasons, lat : latitude, long: longitude, urlString : urlString)
                    marketsInformation.append(info)
                    //print(marketsInformation)
                }
            }
        }
        return [Markets]()
    }
}

struct Markets  {
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
