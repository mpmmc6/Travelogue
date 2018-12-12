//
//  PopUpUI.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/12/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import UIKit

class PopUpUI: UIView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.opacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 20
        
    
    }
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
