//DONE
//  SleepLog.swift
//  BabyLog
//
//  Created by Whitney Deng on 9/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation

class SleepLog: Log
{
    var sleepDurationString: String!
    var sleepDurationTI: TimeInterval!
    var startTime: Date!
    var endTime: Date!
    var note: String!
    
    func setStartTime(st: Date)
    {
        startTime = st
        setDurationVars(startTime: startTime, endTime: endTime, durationString: sleepDurationString, durationTI: sleepDurationTI)
    }
    
    func setEndTime(et: Date)
    {
        endTime = et
        setDurationVars(startTime: startTime, endTime: endTime, durationString: sleepDurationString, durationTI: sleepDurationTI)
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
