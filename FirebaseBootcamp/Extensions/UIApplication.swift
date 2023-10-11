//
//  UIApplication.swift
//  Crypto
//
//  Created by volkancelik on 6.05.2023.
//

import Foundation
import SwiftUI

extension UIApplication{
    
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
