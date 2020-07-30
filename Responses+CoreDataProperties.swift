//
//  Responses+CoreDataProperties.swift
//  earthheroes
//
//  Created by Elitsa Mincheva on 7/29/20.
//  Copyright © 2020 Molly Tenenbaum. All rights reserved.
//
//

import Foundation
import CoreData


extension Responses {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Responses> {
        return NSFetchRequest<Responses>(entityName: "Responses")
    }

    @NSManaged public var answer1: String?
    @NSManaged public var answer2: String?
    @NSManaged public var answer3: String?
    @NSManaged public var answer4: String?
    @NSManaged public var day: Int
    @NSManaged public var month: Int
    @NSManaged public var year: Int

}
