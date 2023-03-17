//
//  ListView.swift
//  TodoList
//
//  Created by Grazi  Berti on 17/03/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the firts title!", isCompleted: false),
        ItemModel(title: "This is the firts second!", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false)
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
