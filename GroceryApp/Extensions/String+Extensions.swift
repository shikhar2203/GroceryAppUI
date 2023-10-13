//
//  String+Extensions.swift
//  GroceryApp
//
//  Created by shikhar on 13/10/23.
//

import Foundation

extension String {
    
    var isEmptyorWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespaces).isEmpty
    }
}
