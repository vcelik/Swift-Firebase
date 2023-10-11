//
//  String.swift
//  Crypto
//
//  Created by Volkan Celik on 02/06/2023.
//

import Foundation

extension String{
    
    var removingHTMLOccurences:String{
        return self.replacingOccurrences(of: "<[^>]+>", with: "",options: .regularExpression,range: nil)
    }
}
