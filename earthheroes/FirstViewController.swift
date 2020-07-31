//
//  FirstViewController.swift
//  earthheroes
//
//  Created by Molly Tenenbaum on 7/29/20.
//  Copyright © 2020 Molly Tenenbaum. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    
    @IBAction func monthTapped(_ sender: Any) {
        performSegue(withIdentifier: "progress", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let progressView = segue.destination as? ProgressTableViewController else {
////            return
//
//        }
//       guard let button = sender as? UIButton else{
//           return
//       }
//
//        let now = Date()
//        progressView.year = Calendar.current.component(.year, from: now)
//
//       switch button.tag {
//       case 1:
//        progressView.month = 1
//        progressView.monthName = "January"
//       case 2:
//           progressView.month = 2
//           progressView.monthName = "February"
//       case 3:
//           progressView.month = 3
//           progressView.monthName = "March"
//       case 4:
//           progressView.month = 4
//           progressView.monthName = "April"
//       case 5:
//           progressView.month = 5
//           progressView.monthName = "May"
//       case 6:
//           progressView.month = 6
//           progressView.monthName = "June"
//       case 7:
//           progressView.month = 7
//           progressView.monthName = "July"
//       case 8:
//           progressView.month = 8
//           progressView.monthName = "August"
//       case 9:
//           progressView.month = 9
//           progressView.monthName = "September"
//       case 10:
//           progressView.month = 10
//           progressView.monthName = "November"
//       case 11:
//           progressView.month = 11
//           progressView.monthName = "October"
//       case 12:
//           progressView.month = 12
//           progressView.monthName = "December"
//       default:
//           return
//       }
//    }
//
}
//
