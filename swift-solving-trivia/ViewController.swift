//
//  ViewController.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(triviaAnswer(statesAndCapitals))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    let statesAndCapitals  = [
        "Alabama":"Montgomery",
        "Alaska":"Juneau",
        "Arizona":"Phoenix",
        "Arkansas":"Little Rock",
        "California":"Sacramento",
        "Colorado":"Denver",
        "Connecticut":"Hartford",
        "Delaware":"Dover",
        "Florida":"Tallahassee",
        "Georgia":"Atlanta",
        "Hawaii":"Honolulu",
        "Idaho":"Boise",
        "Illinois":"Springfield",
        "Indiana":"Indianapolis",
        "Iowa":"Des Moines",
        "Kansas":"Topeka",
        "Kentucky":"Frankfort",
        "Lousiana":"Baton Rouge",
        "Maine":"Augusta",
        "Maryland":"Annapolis",
        "Massassachusetts":"Boston",
        "Michigan":"Lansing",
        "Minnesota":"Saint Paul",
        "Mississippi":"Jackson",
        "Missouri":"Jefferson City",
        "Montana":"Helena",
        "Nebraska":"Lincoln",
        "Nevada":"Carson City",
        "New Hampshire":"Concord",
        "New Jersey":"Trenton",
        "New Mexico":"Santa Fe",
        "New York":"Albany",
        "North Carolina":"Raleigh",
        "North Dakota":"Bismarck",
        "Ohio":"Columbus",
        "Oklahoma":"Oklahoma City",
        "Oregon":"Salem",
        "Pennsylvania":"Harrisburg",
        "Rhode Island":"Providence",
        "South Carolina":"Columbia",
        "South Dakota":"Pierre",
        "Tennessee":"Nashville",
        "Texas":"Austin",
        "Utah":"Salt Lake City",
        "Vermont":"Montpelier",
        "Virgina":"Richmond",
        "Washington":"Olympia",
        "West Virginia":"Charleston",
        "Wisconsin":"Madison",
        "Wyoming":"Cheyenne"]
    
    func triviaAnswer(stateCapitalDict: [String: String]) -> String {
        for stateAndCapital in stateCapitalDict {
            let state = stateAndCapital.0.lowercaseString
            let capital = stateAndCapital.1.lowercaseString
            
            if !containsSameCharacter(state, capital: capital) {
                return state
            }
        }
        
        return ""
    }
    
    func containsSameCharacter(state: String, capital: String) -> Bool {
        for stateCharacter in state.characters {
            if capital.characters.contains(stateCharacter) {
                return true
            }
        }
        return false
    }
    
    
}

