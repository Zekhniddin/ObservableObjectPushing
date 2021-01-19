//
//  HomeScreen.swift
//  ObservableObjectPushing
//
//  Created by Зехниддин on 19/01/21.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var status: Status
    
    var body: some View {
        NavigationView {
            Button(action: {
                UserDefaults.standard.removeObject(forKey: "userid")
                status.listen()
            }) {
                Text("Logout")
                    .foregroundColor(.red)
            }
            .navigationBarItems(
                leading: Button(action: { }) {
                    Image(systemName: "camera")
                        .foregroundColor(.red)
                },
                trailing: Button(action: { }) {
                    Image(systemName: "location")
                        .foregroundColor(.red)
                })
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
