//DONE
//  Event.swift
//  BabyLog
//
//  Created by Whitney Deng on 13/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation
class Event: Equatable
{
    let id = UUID() //TODO: CITE: UUID https://learnappmaking.com/random-unique-identifier-uuid-swift-how-to/#uuids-in-practical-ios-development
    var eventName: String!
    var time: Date!
    
    init(en: String, t: Date)
    {
        eventName = en
        time = t
    }
    
    //for Equatable protocol
    static func == (lhs: Event, rhs: Event) -> Bool
    {
        return lhs.id == rhs.id
    }
    
//    func setEventName(n: String)
//    {
//        eventName = n
//    }
//
//    func setTime(t: Date)
//    {
//        time = t
//    }
}
