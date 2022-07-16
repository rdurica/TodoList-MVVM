//
//  ItemModel.swift
//  TodoList-MVVM
//
//  Created by Robert Ďurica on 16.07.2022.
//

import Foundation

// Immutable struct
struct ItemModel: Identifiable {
    let id: UUID = UUID()
    let title: String
    let isCompleted: Bool

    internal init(id: UUID = UUID(), title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }

    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}   
