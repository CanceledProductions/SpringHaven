//
//  Character.swift
//  SpringHaven
//
//  Created by Sebastian Pena on 11/5/23.
//

import Foundation

struct Character {
    let characterName: String
    let characterDescription: String
}


extension Character {
    
    /// An array of mock tracks
    static var mockCharacters: [Character]  = [
        Character(characterName: "Jorb",
                  characterDescription: "An enthusiastic kid with big hopes of becoming a streamer."),
        Character(characterName: "Oso",
                  characterDescription: "A loyal canine companion that loves and watches out for Sun.")
    ]
}
