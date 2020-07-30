//
//  Question1.swift
//  earthheroes
//
//  Created by Elitsa Mincheva on 7/29/20.
//  Copyright © 2020 Molly Tenenbaum. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class Question1: UIViewController {

    var responses : Responses? = nil
    
    
    @IBAction func answerTapped(_ sender: Any) {
        
        guard let button = sender as? UIButton else{
            return
        }
        
        switch button.tag {
        case 1:
            responses?.answer1 = "q1: answer 1"
        case 2:
            responses?.answer1 = "q1: answer 2"
        case 3:
            responses?.answer1 = "q1: answer 3"
        case 4:
            responses?.answer1 = "q1: answer 4"
        default:
            return
        }
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
          return
        }

        let context = appDelegate.persistentContainer.viewContext
        
        let req = NSFetchRequest<Responses>(entityName: "Responses")
        let now = Date()
        let year = Calendar.current.component(.year, from: now)
        let month = Calendar.current.component(.month, from: now)
        let day = Calendar.current.component(.day, from: now)
        do{
        let result = try context.fetch(req)
            for i in result {
                if i.year == year && i.month == month && i.day == day {
                    responses = i
                    break
                }
            }
            
            if responses == nil {
                responses = Responses(context : context)
                responses?.day = day
                responses?.month = month
                responses?.year = year
                appDelegate.saveContext()
            }
        }
        catch{
            print(error.localizedDescription)
        }
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextQuestion = segue.destination as? Question2 else {
            return
            
        }
        nextQuestion.responses = responses
       // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        
    }
  

}
