//
//  State.swift
//  assignment7
//
//  Created by Matthew Ledford on 12/7/25.
//

import Foundation

struct State {
    let name: String
    let abbreviation: String
    let capital: String
    let population: String
    let yearAdmitted: String
}

class StateDataManager {
    static let shared = StateDataManager()
    
    let states: [State] = [
        State(name: "Alabama", abbreviation: "AL", capital: "Montgomery", population: "5.1M", yearAdmitted: "1819"),
        State(name: "Alaska", abbreviation: "AK", capital: "Juneau", population: "733K", yearAdmitted: "1959"),
        State(name: "Arizona", abbreviation: "AZ", capital: "Phoenix", population: "7.4M", yearAdmitted: "1912"),
        State(name: "California", abbreviation: "CA", capital: "Sacramento", population: "39.5M", yearAdmitted: "1850"),
        State(name: "Florida", abbreviation: "FL", capital: "Tallahassee", population: "22.2M", yearAdmitted: "1845"),
        State(name: "Georgia", abbreviation: "GA", capital: "Atlanta", population: "10.9M", yearAdmitted: "1788"),
        State(name: "Illinois", abbreviation: "IL", capital: "Springfield", population: "12.6M", yearAdmitted: "1818"),
        State(name: "New York", abbreviation: "NY", capital: "Albany", population: "19.8M", yearAdmitted: "1788"),
        State(name: "Texas", abbreviation: "TX", capital: "Austin", population: "30.0M", yearAdmitted: "1845"),
        State(name: "Washington", abbreviation: "WA", capital: "Olympia", population: "7.8M", yearAdmitted: "1889")
    ]
}
