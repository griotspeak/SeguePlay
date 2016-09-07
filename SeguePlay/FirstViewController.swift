//
//  FirstViewController.swift
//  SeguePlay
//
//  Created by TJ Usiyan on 2016/06/09.
//  Copyright © 2016 Buttons and Lights LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var name: String?
    @IBOutlet var textField: UITextField!
    @IBAction func saveName(_ sender: AnyObject) {

        if let input = textField.text, input.characters.count > 0 {
            name = input
        } else {
            print("Text field is empty")
        }

        print("my name is \(self.name)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
    }

    func prepare(for array: [String]) {
        switch array.count {
        case 0:
            print("There are no items in the array")
        case 1:
            print("there is one thing in the array")
        case 2:
            print("there are two things in the array")
        default:
            print("there many things in the array")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "GrabName":
            let destination = segue.destination as! SecondViewController
            destination.name = name
        default:
            print("didn't grab name")
        }

    }
}

extension FirstViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if let text = textField.text {
//            return text.isEmpty == false
//        } else {
//            return false
//        }

        return (textField.text?.isEmpty ?? true) == false
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        saveName(self)
    }
}

