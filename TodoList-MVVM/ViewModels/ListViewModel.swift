//
//  ListViewModel.swift
//  TodoList-MVVM
//
//  Created by Robert Ďurica on 16.07.2022.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []

    init() {
        getItems()
    }

    func getItems() {
        let newItems = [
            ItemModel(title: "First item"),
            ItemModel(title: "Second item", isCompleted: true),
            ItemModel(title: "Third item"),
        ]

        items.append(contentsOf: newItems)
    }

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

    func addItem(title: String) {
        let newItem = ItemModel(title: title)
        items.append(newItem)
    }

    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
