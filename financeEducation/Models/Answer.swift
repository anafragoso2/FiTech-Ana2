//
//  Answer.swift
//  financeEducation
//
//  Created by ana fragoso on 22/07/24.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
