//
//  TodoList_MVVMApp.swift
//  TodoList-MVVM
//
//  Created by Robert Ďurica on 16.07.2022.
//

import SwiftUI

/*
 MVVM Architecture

 Model = data
 View = UI
 ViewModel = manages model for View

 */

@main
struct TodoList_MVVMApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(self.listViewModel)
        }
    }
}
