//
//  ViewController.swift
//  ShortRealm_Test_003_190221
//
//  Created by Joachim Vetter on 21.02.19.
//  Copyright © 2019 Joachim Vetter. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        load()
    }

    @IBAction func button1(_ sender: UIButton) {
        let myObj1 = MyData()
        myObj1.myAge = 52
        myObj1.name = "Jochen"
        myLabel.text = "Meine Name ist \(myObj1.name)"
        MyModel.sharedObject.addData(object: myObj1)
    }
    
    func load() {
        let results = MyModel.sharedObject.readSavedStuff()
        myLabel.text = results[0].name
    }
    
}

