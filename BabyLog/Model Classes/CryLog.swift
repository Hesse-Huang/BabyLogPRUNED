//DONE
//  CryLog.swift
//  BabyLog
//
//  Created by Whitney Deng on 9/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation

class CryLog: Log
{
    var cryDurationString: String!
    var cryDurationTI: TimeInterval!
    var reason: String!
    var startTime: Date!
    var endTime: Date!
    var note: String!

    
    func setReason(r: String)
    {
        reason = r
    }
    
    func setStartTime(st: Date)
    {
        startTime = st
        setDurationVars(startTime: startTime, endTime: endTime, durationString: cryDurationString, durationTI: cryDurationTI)
    }
    
    func setEndTime(et: Date)
    {
        endTime = et
        setDurationVars(startTime: startTime, endTime: endTime, durationString: cryDurationString, durationTI: cryDurationTI)
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
