//DONE
//  FeedLog.swift
//  BabyLog
//
//  Created by Whitney Deng on 9/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation

class FeedLog: Log
{
    var amount: String!
    var foodType: String!
    var time: Date!
    var note: String!
    
//    override init() {
//        amount = ""
//        foodType = ""
//        time = Date()
//        note = ""
//    }
    
    func setAmount(a: String)
    {
        amount = amountInputCheck(input: a)
    }
    
    func setFoodType(ft: String)
    {
        foodType = ft
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
