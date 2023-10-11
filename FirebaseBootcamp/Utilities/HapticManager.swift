//
//  HapticManager.swift
//  Crypto
//
//  Created by Volkan Celik on 23/05/2023.
//

import Foundation
import SwiftUI

class HapticManager{
    
    static private let generator=UINotificationFeedbackGenerator()
    
    static func notificiation(type:UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
    
}
