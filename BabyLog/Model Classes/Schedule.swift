//DONE
//  Schedule.swift
//  BabyLog
//
//  Created by Whitney Deng on 13/1/2020.
//  Copyright © 2020 Whitney Deng. All rights reserved.
//

import Foundation
class Schedule
{
    var eventList: Array<Event>!
    
    func addEvent(eventName: String, time: Date)
    {
        let newEvent = Event(en: eventName, t: time)
        eventList.append(newEvent)
        sortSchedule()
    }
    
    //sorts/orders schedule according to time
    private func sortSchedule()
    {
        let timeNEventDict: Dictionary<Date, Event> = [:]
//        let sortedTime = Array(timeNEventDict.keys).sort(<) //TODO: CITE: https://stackoverflow.com/questions/25377177/sort-dictionary-by-keys
        
        eventList.removeAll()
        
        for (_, currentEvent) in timeNEventDict.sorted(by: {$0.0 < $1.0})
        {
            eventList.append(currentEvent)
        }
    }
    
    //delete an event from the schedule
    func deleteEvent(event: Event)
    {
        let index = eventList.firstIndex(of: event)
        eventList.remove(at: index!) //TODO: 2 CITEs: find index https://stackoverflow.com/questions/24028860/how-to-find-index-of-list-item-in-swift | remove element from array https://stackoverflow.com/questions/24051633/how-to-remove-an-element-from-an-array-in-swift/24051661
    }
}
