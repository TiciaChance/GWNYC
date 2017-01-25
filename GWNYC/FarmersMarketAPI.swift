//
//  FarmersMarketAPI.swift
//  GWNYC
//
//  Created by Ticia Chance on 1/24/17.
//  Copyright © 2017 Ticia Chance. All rights reserved.
//

import UIKit
import Alamofire

typealias FMCompletion = (FMResponse) -> Void

enum FMResponse {
    case success(response: FMResponseData)
    case failure(error: Error)
}

struct FMResponseData {
    public let results: [Markets]
}


class FarmersMarketAPI: NSObject {
    
    let baseurl = "https://data.ny.gov/resource/farmersmarkets.json?"
    
    func getFarmersMarketData(completion: @escaping FMCompletion) {
        Alamofire.request(baseurl).responseJSON { (response) in
            if let data = response.result.value {
                let info = FarmersMarketParser.parseFMData(json: data)
                completion(.success(response: FMResponseData(results: info)))
            }
            completion(.failure(error: response.result.error ?? NSError()))
        }
    }
}


