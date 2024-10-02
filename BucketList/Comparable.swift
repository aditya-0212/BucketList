//
//  Comparable.swift
//  BucketList
//
//  Created by APPLE on 15/08/24.
//


import SwiftUI

struct User: Comparable,Identifiable{
    
    let id = UUID()
    var firstName: String
    var lastName: String
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
    
}
struct ContentView: View {
//    let values = [1,5,3,6,2,9].sorted()
    let users = [
        User(firstName: "Aditya", lastName: "Choubisa"),
        User(firstName: "Gaurave", lastName: "Vijawat"),
        User(firstName: "Prawar", lastName: "Mundra"),
        User(firstName: "Pratiksha", lastName: "Jain")
    ].sorted()
        
    var body: some View {
        List(users){
            Text("\($0.lastName) \($0.firstName)")
        }
    }
}

#Preview {
    ContentView()
}
