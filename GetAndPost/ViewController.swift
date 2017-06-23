//
//  ViewController.swift
//  GetAndPost
//
//  Created by sycf_ios on 2017/6/23.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import UIKit
import TRON
class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var tableView: UITableView!
    let tron = TRON(baseURL: "https://jsonplaceholder.typicode.com/")
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func handleGet(_ sender: Any) {
        let request: APIRequest<UserResponse,MyError> = tron.request("users")
//        print(request)
        request.perform(withSuccess: { (userResponse) in
            print(userResponse.users)
            self.users = userResponse.users
            self.tableView.reloadData()
        }) { (error) in
            print(error)
        }
    }
    @IBAction func handlePost(_ sender: Any) {
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = users[indexPath.row].name
        cell.detailTextLabel?.text = users[indexPath.row].companyName
        return cell
    }
}

