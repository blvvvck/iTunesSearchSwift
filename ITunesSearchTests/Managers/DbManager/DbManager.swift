//
//  DbManager.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import RealmSwift

protocol DbManager {
    
    var database:Realm { set get }
    
    func getDataFromDB() -> SettingsModel?
    func addData(object: SettingsModel)
    func deleteAllFromDatabase()
    func getDefaultData() -> SettingsModel
    func getAllDataFromDB() -> Results<SettingsModel>
}
