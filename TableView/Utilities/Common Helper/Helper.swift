//
//  Helper.swift
//  TableView
//
//  Created by mac on 04/08/2023.
//

import UIKit

public var screenWidth: CGFloat { get { return UIScreen.main.bounds.size.width } }
public var screenHeight:CGFloat { get { return UIScreen.main.bounds.size.height } }
public var iPhoneXFactor: CGFloat { get {return ((screenWidth * 1.00) / 360.0)} }
