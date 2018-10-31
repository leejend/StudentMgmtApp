//
//  ViewExamController.swift
//  StudentMgmtApp
//
//  Created by Jeanette Lee on 10/31/18.
//  Copyright © 2018 Jeanette Lee. All rights reserved.
//

import UIKit

class ViewExamController: UIViewController{
    
    @IBOutlet weak var examView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showallExams(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        examView.text! = appDelegate.getExamInfo()}
    
    
    @IBAction func clearallExams(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.removeExams();
        examView.text = "" }
    
    
    
    
}
