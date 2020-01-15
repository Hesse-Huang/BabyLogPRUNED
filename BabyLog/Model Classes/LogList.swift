//DONE
//  LogList.swift
//  BabyLog
//
//  Created by Whitney Deng on 13/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation
class LogList //stores all the logs
{
    var allLogList: Array<Log>!
    
    //find one type of log and return them in a list
    func findLogs(logType: String) -> Array<Log>
    {
        var result: Array<Log>!
        for (_, currentLog) in allLogList.enumerated() //TODO: CITE: for each loop https://learnappmaking.com/loops-swift-how-to/
        {
            if currentLog.logType == logType
            {
                result.append(currentLog)
            }
        }
        return result
    }
    
    //add a new log to the list
    func addLogToList(log: Log)
    {
        allLogList.append(log)
    }
}
