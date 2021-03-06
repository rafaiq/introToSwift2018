//
//  ColorManager.swift
//  Homework5_RRA
//
//  Created by Rafael Rodriguez on 4/29/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation
import UIKit

struct ColorManager {
    
    static let maxRGBValue: UInt32 = 255
    static let maxRGBFloatValue: CGFloat = CGFloat(maxRGBValue)
    var randomRGBValue: CGFloat = CGFloat(arc4random_uniform(maxRGBValue+1))
    
    func generateRedColors(_ numberOfColors: Int) -> [ColorViewModel] {
        
        var randomRedValues: [CGFloat] = []
        
        for _ in 0...numberOfColors {
            randomRedValues.append(randomRGBValue)
        }
        
        var redColors: [ColorViewModel] = []
        
        for randomRedValue in randomRedValues {
            
            let color = UIColor.init(red: (randomRedValue/ColorManager.maxRGBFloatValue), green: 0.0, blue: 0.0, alpha: 1)
            let colorName = String(format: "R: %.0f, G: %.0f, B: %.0f, A: %.0f", (randomRedValue/ColorManager.maxRGBFloatValue), 0, 0, 1)
            
            let colorViewModel = ColorViewModel.init(name: colorName, color: color, isSelected: false)
            
            redColors.append(colorViewModel)
            
        }
        
        return redColors
    }
    
}
