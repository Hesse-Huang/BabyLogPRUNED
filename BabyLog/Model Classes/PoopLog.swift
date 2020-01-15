//DONE
//  PoopLog.swift
//  BabyLog
//
//  Created by Whitney Deng on 9/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation

class PoopLog: Log
{
    var size: String!
    var colour: String!
    var state: String!
    var time: Date!
    var note: String!
    
    func setSize(s: String)
    {
        size = s
    }
    
    func setColour(c: String)
    {
        colour = c
    }
    
    func setState(s: String)
    {
        state = s
    }
    
    func setTime(t: Date)
    {
        time = t
    }
    
    func setNote(n: String)
    {
        note = n
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
