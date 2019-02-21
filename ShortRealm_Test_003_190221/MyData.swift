//
//  MyData.swift
//  ShortRealm_Test_003_190221
//
//  Created by Joachim Vetter on 21.02.19.
//  Copyright © 2019 Joachim Vetter. All rights reserved.
//

import Foundation
import RealmSwift

class MyData: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var myAge: Int = 0
}
