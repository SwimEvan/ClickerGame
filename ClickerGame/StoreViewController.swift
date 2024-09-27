//
//  StoreViewController.swift
//  ClickerGame
//
//  Created by EVAN MEYER on 9/26/24.
//

import UIKit

class StoreViewController: UIViewController {

    
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var pickleJarEvaOutlet: UIImageView!
    
    @IBOutlet weak var pickleballEva: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickleJarEvaOutlet.image = UIImage(named: "FiveTimePickle")
        pickleballEva.image = UIImage(named: "PickleballLoser")
        pointLabel.text = "Pickles: \(AppData.points)"
        
      
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func PickleJarAction(_ sender: UIButton) {
        if(AppData.points >= 100.0){
            AppData.pickle = 2
            AppData.points-=100
        }
        else{
            pointLabel.text = "Error"
        }

        
    }
    
    @IBAction func PickleballAction(_ sender: UIButton) {
        if(AppData.points >= 750.0){
            AppData.pickle = 3
            AppData.points = 0
        }
        else{
            pointLabel.text = "Error"
        }
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
