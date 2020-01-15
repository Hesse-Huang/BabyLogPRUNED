//DONE
//  Log.swift
//  BabyLog
//
//  Created by Whitney Deng on 17/10/2019.
//  Copyright © 2019 Whitney Deng. All rights reserved.
//

//this is the parent class of individual logs
import Foundation

class Log: Equatable //TODO: CITE: Equatable protocol https://www.hackingwithswift.com/example-code/language/how-to-conform-to-the-equatable-protocol
{
//VARIABLES
    var logType: String! //the type of log e.g. cry, sleep, poop, feed
    let id = UUID() //TODO: is this necessary???
    
    static let SEPARATOR = " "
    
    //for duration input check
    static let WRONGTIMEORDERMSG = "Did you travel back in time?" //error mesage if start time is after end time
    static let OVERADAYMSG = "That took a long time." //error message if the duration is more than a day
    static let SAMETIMEMSG = "That was a bit too quick." //error message if the start time and end time are the same
    static let SECINDAY: Double = 24*60*60 //number of seconds in a day
    
    //for amount input check
    static let NUMBERSONLYMSG = "Error: numerical inputs only"
    static let TOOMUCHMSG = "Hm... seems a bit too much."
    static let AMOUNTCHECKMAXLIMIT = 100
    
//METHODS
    static func == (lhs: Log, rhs: Log) -> Bool //TODO: is this necessary???
    {
         return lhs.id == rhs.id
    }
    
    func setDurationVars(startTime: Date, endTime: Date, durationString: String, durationTI: TimeInterval)
    {
        if !(startTime == nil) && !(endTime == nil) //start and end time both have values
        {
            let durationString = durationInputCheck(startTime: startTime, endTime: endTime)
            let durationTI = getDurationTI(startTime: startTime, endTime: endTime)
        }
    }
    
    //check if start and end time mekes sense & calls method to calculate and put duration into string
    private func durationInputCheck(startTime: Date, endTime: Date) -> String
    {
        if (startTime > endTime) //start time is after the end time
        {
            return Log.WRONGTIMEORDERMSG
        }
        
        let durationDoubleVar = getDurationTI(startTime: startTime, endTime: endTime) //time in seconds for comparison | TODO: CITE: https://stackoverflow.com/questions/38077238/timeinterval-in-swift
        let durationStringVar = getDurationString(startTime: startTime, endTime: endTime) //duration in String form
            
        if (durationDoubleVar > Log.SECINDAY) //duration is more than a day
        {
            return durationStringVar + Log.SEPARATOR + Log.OVERADAYMSG
        }
        else if (durationDoubleVar == 0) //start and end time are the same
        {
            return durationStringVar + Log.SEPARATOR + Log.SAMETIMEMSG
        }
        return durationStringVar
    }
    
    //find duration between start time and end time and return as a string
    private func getDurationString(startTime: Date, endTime: Date) -> String
    {
        let calendar = Calendar.current //setup to find time interval
        let components = calendar.dateComponents([.hour, .minute, .second], from: startTime, to: endTime) //TODO: CITE: convert time interval to string https://stackoverflow.com/questions/40893338/convert-timeinterval-to-string-delstring-to-time-interval-del
        let hour = components.hour
        let minute = components.minute
        
        let result = "\(String(describing: hour))hr(s) \(String(describing: minute))min(s)" //TODO: CITE: concatenate number with string https://stackoverflow.com/questions/24646794/concatenate-number-with-string-in-swift
        return result
    }
    
    //find duration bn start and end time as double
    private func getDurationTI(startTime: Date, endTime: Date) -> TimeInterval
    {
        return endTime.timeIntervalSince(startTime)
    }
    
    //for checking numbers-only–input text fields
    func amountInputCheck(input: String) -> String
    {
        if !isNumbers(input: input) //the String is all numbers
        {
            return Log.NUMBERSONLYMSG
        }
        else if (Int(input)! > Log.AMOUNTCHECKMAXLIMIT) //amount is <100 //TODO: CITE: convert String to Int https://stackoverflow.com/questions/24115141/converting-string-to-int-with-swift
        {
            return input + Log.SEPARATOR + Log.TOOMUCHMSG
        }
        return input
    }
    
    //check that a string only contains numbers
    private func isNumbers(input: String) -> Bool
    {
        for(_, char) in Array(input).enumerated() //TODO: CITE: convert string to array https://stackoverflow.com/questions/25921204/convert-swift-string-to-array
        {
            if !char.isNumber //TODO: CITE: .isNumber https://developer.apple.com/documentation/swift/character/3127015-isnumber
            {
                return false
            }
        }
        return true
    }
}
