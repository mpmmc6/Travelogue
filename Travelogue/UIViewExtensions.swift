//
//  UIViewExtensions.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/7/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import UIKit

extension UIView {
    func addShadowAndRoundedCorners(){
        
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 25
    }
}
