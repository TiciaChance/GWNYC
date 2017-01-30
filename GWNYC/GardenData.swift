//
//  GreenMarketsData.swift
//  GWNYC
//
//  Created by Ticia Chance on 1/30/17.
//  Copyright © 2017 Ticia Chance. All rights reserved.
//

import UIKit
import Alamofire


typealias GardenCompletion = (GardenResponse) -> Void

enum GardenResponse {
    case success(response: GardenResponseData)
    case failure(error: Error)
}

struct GardenResponseData {
    public let results: [Gardens]
}


class GardenData: NSObject {
    
    let baseurl = "https://data.cityofnewyork.us/api/views/3ckp-upxf/rows.json?"
    
    func getGardenData(completion: @escaping GardenCompletion) {
        Alamofire.request(baseurl).responseJSON { (response) in
            if let data = response.result.value {
                let info = GardenParser.parseGardenData(json: data)
                completion(.success(response: GardenResponseData(results: info)))
            }
            completion(.failure(error: response.result.error ?? NSError()))
        }
    }
}
