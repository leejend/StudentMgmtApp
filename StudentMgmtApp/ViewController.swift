//
//  ViewController.swift
//  StudentMgmtApp
//
//  Created by Jeanette Lee on 10/25/18.
//  Copyright © 2018 Jeanette Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentID: UITextField!
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var sName: UITextField!
    @IBOutlet weak var courseStudy: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageStepper: UIStepper!
    @IBOutlet weak var segGender: UISegmentedControl!
    @IBOutlet weak var gender: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageStepper.wraps = true
        ageStepper.autorepeat = true
        ageStepper.maximumValue = 65
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func addAge(_ sender: UIStepper) {
        let step = Int(ageStepper.value)
        ageLabel.text = String(step)
    }

    @IBAction func selectedSegGender(_ sender: Any) {
        //call selected option for segment control
        if self.segGender.selectedSegmentIndex == 0 {
            gender.text = "Female"
        }
        else {
            gender.text = "Male"
        }
    }
    
    @IBAction func saveStudent(_ sender: Any) {
        // get the AppDelegate object
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
       do {
            showAlert(msg: "Student details saved")
        } catch let msg as NSError {
            showAlert(msg: "Could not save \(msg), \(msg.userInfo)")
        }
        
        // call the function storeStudentInfo from AppDelegate
    
        appDelegate.storeStudentInfo(studentID: Int(studentID.text!)!, fName: fName.text!, sName: sName.text!, courseStudy: courseStudy.text!, address: address.text!, ageLabel: ageLabel.text!, gender: gender.text!)
        
        studentID.text = ""
        fName.text = ""
        sName.text = ""
        courseStudy.text = ""
        address.text = ""
        ageLabel.text = ""
            gender.text = ""
        
        }

    
    func showAlert(msg: String) {
        let alert = UIAlertController(title: "Successful", message: msg, preferredStyle: UIAlertController.Style.alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion:nil)
    }
    }
    


