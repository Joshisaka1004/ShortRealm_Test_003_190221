//
//  MyModel.swift
//  ShortRealm_Test_003_190221
//
//  Created by Joachim Vetter on 21.02.19.
//  Copyright © 2019 Joachim Vetter. All rights reserved.
//

import Foundation
import RealmSwift

class MyModel {
    var myRealm: Realm!
    static let sharedObject = MyModel()
    private init() {
        myRealm = try! Realm()
    }
    
    func addData(object: MyData) {
        try! myRealm.write {
            myRealm.add(object)
            print("Object added")
        }
    }
    
    func readSavedStuff() -> Results<MyData> {
        let myResults = myRealm.objects(MyData.self)
        return myResults
    }
}
