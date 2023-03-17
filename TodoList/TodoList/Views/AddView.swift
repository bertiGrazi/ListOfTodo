//
//  AddView.swift
//  TodoList
//
//  Created by Grazi  Berti on 17/03/23.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            TextField(" Type something here...", text: $textFieldText)
                .frame(height: 65)
                .background(Color("TextFieldColor"))
                .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }

        }
        .padding(14)
        .navigationTitle("Add an Item 🖋")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
