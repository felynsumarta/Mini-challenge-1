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
    
    
    
    
    @IBOutlet weak var totalTime: UILabel!
    
    @IBOutlet weak var timeInTextField: UITextField!
    @IBOutlet weak var timeOutTextField: UITextField!
    
    private var timeInDatePicker: UIDatePicker?
    private var timeOutDatePicker: UIDatePicker?
    
    
    @IBOutlet weak var noteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let labels = usedReminders
//        textLabel.text = "\(labels.reminderName)"
        
        
        timeInTextField.borderStyle = .none
        timeOutTextField.borderStyle = .none
        
        
        timeInDatePicker = UIDatePicker()
        timeInDatePicker?.datePickerMode = .time
        timeInDatePicker?.addTarget(self, action: #selector(SecondViewController.dateChanged(timeInDatePicker:)), for: .valueChanged)
        timeInTextField.inputView = timeInDatePicker
        
        
        timeOutDatePicker = UIDatePicker()
        timeOutDatePicker?.datePickerMode = .time
        timeOutDatePicker?.addTarget(self, action: #selector(SecondViewController.dateChanges(timeOutDatePicker:)), for: .valueChanged)
        timeOutTextField.inputView = timeOutDatePicker
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.viewTapped(gestureRecognizer:)))
               view.addGestureRecognizer(tapGesture)
        

        noteTextView.clipsToBounds = false
        noteTextView.layer.cornerRadius = 10
        noteTextView.layer.shadowRadius = 5
        noteTextView.layer.shadowColor = UIColor.gray.cgColor
        noteTextView.layer.shadowOffset = CGSize (width: 2, height: 2)
        noteTextView.layer.shadowOpacity = 0.8
                
        // Do any additional setup after loading the view.
    }
    
    func fetchReminder (category: CategoryItem){
    
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
    
    
    @objc func viewTapped (gestureRecognizer: UITapGestureRecognizer){
    view.endEditing(true)
        
    }
    
    @objc func dateChanged (timeInDatePicker: UIDatePicker){
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH : mm "
    timeInTextField.text = dateFormatter.string(from: timeInDatePicker.date)
    }
    
    
    @objc func dateChanges (timeOutDatePicker: UIDatePicker){
    
    let dateFormatters = DateFormatter()
    dateFormatters.dateFormat = "HH : mm "
    timeOutTextField.text = dateFormatters.string(from: timeOutDatePicker.date)
    }
    
    
    

//        func viewTapped (gestureRecognizer: UITapGestureRecognizer){
//        view.endEditing(true)

    }
    
    
    
        
    
    
    

            // Do any additional setup after loading the view.
        
        
        
            
        
        
        
        
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */






