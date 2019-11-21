//
//  UIView+nib.swift
//  MRK-Swift
//
//  Created by Marc Flores on 15/7/18.
//  Copyright © 2018 Marc Flores. All rights reserved.
//

import UIKit

extension UIView {
    public class var nib : UINib?{
        return UINib(nibName: className, bundle: nil)
    }
}
