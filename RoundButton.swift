//
//  RoundButton.swift
//  calculator
//
//  Created by Mikhail Ameerally on 2017-09-24.
//  Copyright © 2017 Mikhail Ameerally. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton
{
    @IBInspectable var cornerRadius: CGFloat = 0
    {
        didSet
        {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0
        {
        didSet
        {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear
        {
        didSet
        {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    

}
