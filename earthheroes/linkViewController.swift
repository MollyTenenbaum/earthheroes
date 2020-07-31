//
//  linkViewController.swift
//  earthheroes
//
//  Created by Molly Tenenbaum on 7/31/20.
//  Copyright © 2020 Molly Tenenbaum. All rights reserved.
//

import UIKit

class linkViewController: UIViewController {

    @IBAction func airLinkButton(_ sender: UIButton) {
        if let url = URL(string: "https://betterworldcampaign.org/blog/un-family-un-environment/?gclid=EAIaIQobChMI6Iatu4T46gIVgiCtBh19qQp7EAAYASAAEgLOLvD_Bw") {
            UIApplication.shared.open(url)
        }
        
        
    }
    @IBAction func animalLinkButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.kinderworld.org/videos/meat-industry/cow-slaughter/") {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func veganismLinkButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.globalcitizen.org/en/content/9-reasons-why-veganism-can-save-the-world/") {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func conservationLinkButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.conservation.org/priorities/fresh-water?gclid=EAIaIQobChMI7ProkIb46gIVoR6tBh1ujQ1hEAAYASAAEgLc3PD_BwE") {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func plasticLinkButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.lonelywhale.org/") {
        UIApplication.shared.open(url)
    }
        func viewDidLoad() {
        super.viewDidLoad()

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

}
}
