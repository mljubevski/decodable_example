//
//  GamesData.swift
//  Decodable Example
//
//  Created by Milos Ljubevski on 5/11/17.
//  Copyright © 2017 Milos Ljubevski. All rights reserved.
//

import Foundation
import Decodable

final class GamesData: Decodable
{
    var lastUpdateID: Int = NSNotFound
    var games: [Game] = []
    
    static func decode(_ json: Any) throws -> GamesData
    {
        let gamesData = GamesData()
        
        gamesData.lastUpdateID = try json => "LastUpdateID"
        gamesData.games = try json => "Games"
        
        return gamesData
    }
}



