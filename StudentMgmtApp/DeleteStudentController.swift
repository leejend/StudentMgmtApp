//
//  DeleteStudentController.swift
//  StudentMgmtApp
//
//  Created by Jeanette Lee on 10/25/18.
//  Copyright © 2018 Jeanette Lee. All rights reserved.
//

import UIKit

class DeleteStudentController: UIViewController {
    
    @IBOutlet weak var records: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showallRecords(_ sender: Any) { let appDelegate = UIApplication.shared.delegate as! AppDelegate
        records.text = appDelegate.getStudentInfo()
    }
    
    

}
