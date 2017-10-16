//
//  ViewController.swift
//  RomanNumeralCalculator
//
//  Created by Chris on 2016-09-07.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var total: Int = 0
    var signOfNextOperation: Int = 1;

    func update() {
        //resultLabel.text = String(total)
        resultLabel.text = toRoman(number: total)
    }


    func handleButton(value: Int) {
        total += value * signOfNextOperation
        update()
    }

    @IBOutlet weak var buttonI: UIButton!
    @IBOutlet weak var buttonV: UIButton!
    @IBOutlet weak var buttonX: UIButton!
    @IBOutlet weak var buttonL: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonM: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonClear: UIButton!

    @IBAction func actionI(sender: AnyObject) {
        handleButton(value: 1)
    }

    @IBAction func actionV(sender: AnyObject) {
        handleButton(value: 5)
    }

    @IBAction func actionX(sender: AnyObject) {
        handleButton(value: 10)
    }

    @IBAction func actionL(sender: AnyObject) {
        handleButton(value: 50)
    }


    @IBAction func actionC(sender: AnyObject) {
        handleButton(value: 100)
    }

    @IBAction func actionD(sender: AnyObject) {
        [0][1]
        handleButton(value: 500)
    }

    @IBAction func actionM(sender: AnyObject) {
        handleButton(value: 1000)
    }

    @IBAction func actionPlus(sender: AnyObject) {
        signOfNextOperation = 1
    }

    @IBAction func actionMinus(sender: AnyObject) {
        signOfNextOperation = -1
    }

    @IBAction func actionClear(sender: AnyObject) {
        total = 0
        update()
    }

}

