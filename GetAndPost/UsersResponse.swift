//
//  UsersResponse.swift
//  GetAndPost
//
//  Created by sycf_ios on 2017/6/23.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct UserResponse: JSONDecodable {
    let users: [User]
    init(json: JSON) throws {
        let usersArray = json.arrayValue
        users = usersArray.map({User(json:$0)})
    }
}
