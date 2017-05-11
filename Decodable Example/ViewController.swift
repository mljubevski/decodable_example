//
//  ViewController.swift
//  Decodable Example
//
//  Created by Milos Ljubevski on 5/11/17.
//  Copyright © 2017 Milos Ljubevski. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "http://mobilews.365scores.com/Data/Games/GameCenter/?games=1029765&lang=1&uc=6&tz=5&uc=1"
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { dataResponse in
            
                switch dataResponse.result
                {
                case .failure(let error):
                    
                    print(error.localizedDescription)
                    
                case .success(let value):
                    
                    print(value)
                    
                }
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

