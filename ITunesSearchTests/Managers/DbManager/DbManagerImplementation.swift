//
//  DbManagerImplementation.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import RealmSwift

class DbManagerImplementation: DbManager {
    
    var database: Realm
    let defaultMediaTypeIndex = 0
    let defaultDeviceTypeIndex = 0
    let defaultCountOfObjects = "10"
    
    init() {
        database = try! Realm()
    }
    
    func getDataFromDB() -> SettingsModel? {
        let results: Results<SettingsModel> = database.objects(SettingsModel.self)
        return results.first
    }
    
    func addData(object: SettingsModel) {
        if let currentSettings = getDataFromDB() {
            try! database.write {
                currentSettings.mediatypeIndex = object.mediatypeIndex
                currentSettings.deviceTypeIndex = object.deviceTypeIndex
                currentSettings.countOfObjects = object.countOfObjects
            }
        } else {
            try! database.write {
                database.add(object)
                print("Added new object")
            }
        }
    }
    
    func deleteAllFromDatabase() {
        try!   database.write {
            database.deleteAll()
        }
    }
    
    func getDefaultData() -> SettingsModel {
        let settings = SettingsModel(value: ["mediatypeIndex": defaultMediaTypeIndex, "deviceTypeIndex": defaultDeviceTypeIndex, "countOfObjects": defaultCountOfObjects ])
        
        return settings
    }
    
    func getAllDataFromDB() -> Results<SettingsModel> {
        let results: Results<SettingsModel> = database.objects(SettingsModel.self)
        return results
    }
}
