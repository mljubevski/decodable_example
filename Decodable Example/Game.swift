//
//  Game.swift
//  Decodable Example
//
//  Created by Milos Ljubevski on 5/11/17.
//  Copyright © 2017 Milos Ljubevski. All rights reserved.
//

import Foundation
import Decodable

final class Game: Decodable
{
    var sTime: String = ""
    var id: Int = NSNotFound
    
    static func decode(_ json: Any) throws -> Game
    {
        let game = Game()
        
        game.sTime = try json => "STime"
        game.id = try json => "ID"
        
        return game
    }
    
}




