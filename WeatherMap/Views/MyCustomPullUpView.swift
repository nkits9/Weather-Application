//
//  MyCustomPullUpView.swift
//  Weather App
//
//  Created by MOHIT SHARMA on 01/09/20.
//  Copyright © 2020 Ankit Sharma. All rights reserved.
//



import UIKit

class MyCustomPullUpView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).cgColor
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.layer.shadowRadius = 50
        self.layer.shadowOpacity = 1
    }

}
