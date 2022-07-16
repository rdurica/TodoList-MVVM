//
//  ListView.swift
//  TodoList-MVVM
//
//  Created by Robert Ďurica on 16.07.2022.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "First",
        "Second",
        "Third",
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                ListRowView(title: $0)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📋")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
