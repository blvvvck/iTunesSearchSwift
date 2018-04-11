//
//  SettingsModel.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import RealmSwift

class SettingsModel: Object {
    
    @objc dynamic var mediatypeIndex: Int = 0
    @objc dynamic var deviceTypeIndex: Int = 0
    @objc dynamic var countOfObjects: String = ""
}
