//
//  AddExamController.swift
//  StudentMgmtApp
//
//  Created by Jeanette Lee on 10/25/18.
//  Copyright © 2018 Jeanette Lee. All rights reserved.
//

import UIKit

class AddExamController: UIViewController {
    

    @IBOutlet weak var unitName: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var dateTime: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}
    
   
    
   
    @IBAction func addExam(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let strDate = dateFormatter.string(from: dateTime.date)

    
        // get the AppDelegate object
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        do {
            showAlert(msg: "Exam details saved")
        } catch {
            showAlert(msg: "Error when saving to details")
        }
        
        // call the function storeExamInfo from AppDelegate
        appDelegate.storeExamInfo(unitName: unitName.text!, location: location.text!, dateTime: dateTime.date!)
        
        unitName.text = ""
        location.text = ""
       // dateTime.datePickerMode = ""
        
    }
            
            
        }
        
        func showAlert(msg: String) {
            let alert = UIAlertController(title: "Successful", message: msg, preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion:nil)
        }

