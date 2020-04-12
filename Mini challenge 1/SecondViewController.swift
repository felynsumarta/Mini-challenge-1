//
//  SecondViewController.swift
//  Mini challenge 1
//
//  Created by Felyn Sumarta on 10/04/20.
//  Copyright © 2020 Felyn Sumarta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var vc: ViewController!
    
    var usedReminders: [Reminder] = []
    
    let works = [Reminder(reminderName: "Work")]
    let sleeps = [Reminder(reminderName: "Sleep")]
    let hobbies = [Reminder(reminderName: "Hobby")]
    let households = [Reminder(reminderName: "Household")]

    
    
   
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.viewTapped(gestureRecognizer:)))
               view.addGestureRecognizer(tapGesture)

//        textLabel.text = "\(usedReminders.reminderName)"
                
        // Do any additional setup after loading the view.
    }
    

    

    @objc func viewTapped (gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)

    }
    
    
    func fetchProduct (category: CategoryItem){
    
        if category.categoryImage == "work"{
        usedReminders = works
        }else
        if category.categoryImage == "Sleep"{
            usedReminders = sleeps
        }else
            if category.categoryImage == "Hobby"{
                usedReminders = hobbies
        }else
        if category.categoryImage == "Household"{
        usedReminders = households
        }
        

    }
    
    

            // Do any additional setup after loading the view.
        
        
        
            
        
        
        
        }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




