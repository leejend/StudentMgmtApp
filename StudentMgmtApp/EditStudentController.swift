//
//  EditStudentController.swift
//  StudentMgmtApp
//
//  Created by Jeanette Lee on 10/25/18.
//  Copyright © 2018 Jeanette Lee. All rights reserved.
//

import UIKit

class EditStudentController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = fruitList[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        btnDrop.setTitle("\(fruitList[indexPath.row])", for: .normal)
        animate(toogle: false, type: btnDrop)
    }
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
//    {
//
//        let student = Student[indexPath.row]
//
//        if editingStyle == .delete {
//            getContext.delete(Student)
//
//            do {
//                try getContext.save()
//            } catch let error as NSError {
//                print("Error While Deleting Note: \(error.userInfo)")
//            }
//
//        }
    
//        // Fetch new data/reload table
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: Student)
//
//        do {
//            Student = try getContext.fetch(fetchRequest) as! [NSManagedObject]
//        } catch let error as NSError {
//            print("Error While Fetching Data From DB: \(error.userInfo)")
//        }
//
//        tableView.reloadData()
//    }

    
    @IBOutlet weak var btnDrop: UIButton!
    @IBOutlet weak var tblView: UITableView!
    
  
    
    
    var fruitList = ["Orange", "Banana", "Apple", "Blueberry", "Mango", "Cherry", "Grape", "Strawberry"]
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
      override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickDropButton(_ sender: Any) {
        
        
        if tblView.isHidden {
            animate(toogle: true, type: btnDrop)
        } else {
            animate(toogle: false, type: btnDrop)
        }
    }
    
    func animate(toogle: Bool, type: UIButton) {
        
        if type == btnDrop {
            
            if toogle {
                UIView.animate(withDuration: 0.3) {
                    self.tblView.isHidden = false
                }
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.tblView.isHidden = true
                }
            }
        }
     
    }
}
