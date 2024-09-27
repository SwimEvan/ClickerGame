//
//  ViewController.swift
//  ClickerGame
//
//  Created by EVAN MEYER on 9/26/24.
//

import UIKit
class AppData{
   static var pickle = 1
   static var points = 0.0
}
class ViewController: UIViewController {
    let image = UIImage(named: "StartPickle")
    @IBOutlet weak var pickleLabel: UILabel!
    @IBOutlet weak var PickleimageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        PickleimageView.image = UIImage(named: "StartPickle")
      
    
    }
    override func viewDidAppear(_ animated: Bool) {
        pickleLabel.text = "Pickles: \(AppData.points)"
        if(AppData.pickle == 1){
            print("1")
            AppData.points = AppData.points + 1.0
            pickleLabel.text = "Pickles: \(AppData.points)"
        }
        else if(AppData.pickle == 2){
            print("2")
            PickleimageView.image = UIImage(named: "FiveTimePickle")
            AppData.points = AppData.points + 5.0
            pickleLabel.text = "Pickles: \(AppData.points)"
        }
        else{
            print("3")
            PickleimageView.image = UIImage(named: "PickleballLoser")
            AppData.points += 0.5
            pickleLabel.text = "Pickles: \(AppData.points)"
        }
    }
    

    @IBAction func storeAction(_ sender: UIButton) {
        
    }
    @IBAction func tapButtonAction(_ sender: UIButton) {
        print("button tapped")
        if(AppData.pickle == 1){
            print("1")
            AppData.points = AppData.points + 1.0
            pickleLabel.text = "Pickles: \(AppData.points)"
        }
        else if(AppData.pickle == 2){
            print("2")
            PickleimageView.image = UIImage(named: "FiveTimePickle")
            AppData.points = AppData.points + 5.0
            pickleLabel.text = "Pickles: \(AppData.points)"
        }
        else{
            print("3")
            PickleimageView.image = UIImage(named: "PickleballLoser")
            AppData.points += 0.5
            pickleLabel.text = "Pickles: \(AppData.points)"
        }
        
        
    }
    
}

