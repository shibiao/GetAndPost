//
//  MyError.swift
//  GetAndPost
//
//  Created by sycf_ios on 2017/6/23.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct MyError: JSONDecodable {
    init(json: JSON) throws {
        print("JSON: \(json)")
        print("JSON parsing error")
    }
}
