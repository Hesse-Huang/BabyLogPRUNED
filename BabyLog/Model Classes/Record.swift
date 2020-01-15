//DONE
//  Record.swift
//  BabyLog
//
//  Created by Whitney Deng on 13/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation

class Record
{
    var schedule: Schedule!
    var logList: LogList!
    
    func getLogList() -> LogList
    {
        return logList
    }
    
    func getSchedule() -> Schedule
    {
        return schedule
    }
}
