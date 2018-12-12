//
//  AddTripViewController.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/7/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var addTextField: UITextField!
    
    
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
   
    
    var doneSaving: (() -> ())?
        
        
    
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func add(_ sender: UIButton) {
        TripFunctions.createTrip(tripModel: TripModel(title: addTextField.text!))
        
        if let doneSaving = doneSaving{
            doneSaving()
        }
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        pupUpView.backgroundColor = grey
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
