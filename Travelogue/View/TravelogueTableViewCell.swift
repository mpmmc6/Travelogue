//
//  TravelogueTableViewCell.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/7/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import UIKit

class TravelogueTableViewCell: UITableViewCell {
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        card.addShadowAndRoundedCorners()
        // Initialization code
//        
//        card.layer.shadowOpacity = 1
//        card.layer.shadowOffset = CGSize.zero
//        card.layer.shadowColor = UIColor.darkGray.cgColor
//        card.layer.cornerRadius = 10
    }
    func setup(tripModel:TripModel){
        title.text = tripModel.title
        
    }

}
