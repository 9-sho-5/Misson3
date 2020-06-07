//
//  ViewController.swift
//  Misson3
//
//  Created by Kusunose Hosho on 2020/06/07.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nameArray: [Name] = []
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    
    //表示する番号
    var index: Int = 0
    
    func setUI() {
        numberLabel.text = nameArray[index].number
        nameLabel.text = nameArray[index].name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameArray.append(Name(number: "１番目", name: "A"))
        nameArray.append(Name(number: "２番目",name: "B"))
        nameArray.append(Name(number: "３番目",name: "C"))
        nameArray.append(Name(number: "4番目",name: "D"))
        nameArray.append(Name(number: "5番目",name: "E"))
        
        
        setUI()
    }

    @IBAction func pre() {
        index = index - 1
        if index < 0 {
            index = nameArray.count - 1
        }
        setUI()
    }
    
    @IBAction func next() {
        index = index + 1
        if index == nameArray.count {
            index = 0
        }
        setUI()
    }
    
    @IBAction func one() {
        index = 0
        
        setUI()
    }

    @IBAction func two() {
        index = 1
        
        setUI()
    }
    
    @IBAction func three() {
        index = 2
        
        setUI()
    }
    
}

