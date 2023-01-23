//
//  PersonModel.swift
//  AndersonCardStoryboard
//
//  Created by Anderson Sales on 23/01/23.
//

import Foundation
import UIKit

class PersonModel {
    
    private var anderson: Person = Person(name: "Anderson Sales", title: "iOS Developer", email: "aasalesdev@gmail.com", phone: "+55 12 99206 4867")
    private var color = UIColor(red: 0.20, green: 0.60, blue: 0.86, alpha: 1)
    
    func getPersonInformation() -> Person {
        return anderson
    }
    
    func getBackgroundColor() -> UIColor {
        return color
    }
    
}
