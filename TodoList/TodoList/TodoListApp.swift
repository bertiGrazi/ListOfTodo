//
//  TodoListApp.swift
//  TodoList
//
//  Created by Grazi  Berti on 17/03/23.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model: Data point
 View - UI
 ViewModel - Manages Models for View
 
*/


@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
