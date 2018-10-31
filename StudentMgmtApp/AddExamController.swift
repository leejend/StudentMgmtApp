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
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}

   
    
   
    @IBAction func addExam(_ sender: Any) {
        //Referencing date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let strDate = dateFormatter.string(from: datePicker.date)
        dateTime.text = strDate

        //Ref date
//        let dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "MM/dd/yyyy"
//        let someDate = dateFormatter.dateFromString("03/10/2015")
        
//        //Get calendar
//        let calendar = NSCalendar.currentCalendar()
//        
//        //Get just MM/dd/yyyy from current date
//        let flags = NSCalendar.Unit.CalendarUnitDay | NSCalendar.Unit.CalendarUnitMonth | NSCalendar.Unit.CalendarUnitYear
//        let components = calendar.components(flags, fromDate: NSDate())
//        
//        //Convert to NSDate
//        let today = calendar.dateFromComponents(components)
//        
//        if strDate!.timeIntervalSinceDate(today!).isSignMinus {
//            //someDate is berofe than today
//        } else {
//            //someDate is equal or after than today
//        }
    
        // get the AppDelegate object
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        do {
            showAlert(msg: "Exam details saved")
        } catch {
            showAlert(msg: "Error when saving to details")
        }
        
        // call the function storeExamInfo from AppDelegate
        appDelegate.storeExamInfo(unitName: unitName.text!, location: location.text!, dateTime: dateTime.text!)
        
        unitName.text = ""
        location.text = ""
       dateTime.text! = ""
        
    }
            
        
        func showAlert(msg: String) {
            let alert = UIAlertController(title: "Successful", message: msg, preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion:nil)
        }
}
