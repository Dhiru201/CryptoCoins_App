//
//  String.swift
//  SwiftUICrypto
//
//  Created by Dhirendra Kumar Verma on 28/08/24.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
