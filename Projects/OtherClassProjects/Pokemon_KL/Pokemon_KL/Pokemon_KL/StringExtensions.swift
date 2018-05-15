//
//  StringExtensions.swift
//  Pokemon_KL
//
//  Created by Kevin Lopez on 5/8/18.
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import Foundation

extension String {
    var firstLetterCapitalized: String {
        let first = self.prefix(1).capitalized
        let other = self.dropFirst()
        return first + other
    }
}
