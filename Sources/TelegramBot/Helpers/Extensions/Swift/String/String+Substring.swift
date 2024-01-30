//
//  String+Substring.swift
//  
//
//  Created by Ivan Zinovev on 27.01.2024.
//

import Foundation

extension String {
    
    func index(from: Int) -> Index {
        return index(startIndex, offsetBy: from)
    }

    func substring(from: Int) -> String {
        let fromIndex = index(from: from)
        return String(self[fromIndex...])
    }
    
    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        return String(self[...toIndex])
    }
    
    func substring(with range: ClosedRange<Int>) -> String {
        let startIndex = index(from: range.lowerBound)
        let endIndex = index(from: range.upperBound)
        return String(self[startIndex...endIndex])
    }
    
}

