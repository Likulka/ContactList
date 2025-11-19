//
//  dataSource.swift
//  ContactList
//
//  Created by Anzhelika on 16.11.25.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Tim",
        "Steave",
        "Bill",
        "Mark",
        "Steave",
        "Elon",
        "Alan",
        "Pavel",
        "Kevin",
        "Michael"
    ]

    let surnames = [
        "Cook",
        "Jobs",
        "Gates",
        "Zuckerberg",
        "Voznyak",
        "Musk",
        "Po",
        "Durov",
        "Systorm",
        "Kruger"
    ]

    let phones = [
        "+1(123)433-96-571",
        "+1(123)899-70-117",
        "+1(123)433-96-572",
        "+1(123)899-70-118",
        "+1(123)433-96-573",
        "+1(123)899-70-119",
        "+1(123)433-96-565",
        "+1(123)879-07-408",
        "+1(123)571-62-591",
        "+1(123)583-17-314"
    ]

    let emails = [
      "timmCook@apple.com",
      "steaveJobs@apple.com",
      "billGates@microsoft.com",
      "markZuckerberg@meta.com",
      "steveVoznyak@apple.com",
      "elonMusk@spacex.com",
      "alanPo@alibaba.com",
      "pavelDurov@tg.com",
      "kevinSystorm@apple.com",
      "michaelKruger@apple.com"
    ]
    
    private init() {}
}


