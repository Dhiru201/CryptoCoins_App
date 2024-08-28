//
//  HapticManager.swift
//  SwiftUICrypto
//
//  Created by Dhirendra Kumar Verma on 23/08/24.
//

import Foundation
import SwiftUI

class HapticManager {
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
