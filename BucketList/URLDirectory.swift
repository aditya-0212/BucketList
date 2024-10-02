//
//  URLDirectory.swift
//  BucketList
//
//  Created by APPLE on 15/08/24.
//

import SwiftUI

struct URLDirectory: View {
    var body: some View {
        Button("Read and Write"){
            let data = Data("Hii aditya,How are you".utf8)
            let url = URL.documentsDirectory.appending(path: "message.txt")
            
            do{
                try data.write(to: url,options: [.atomic,.completeFileProtection])
                let input = try String(contentsOf: url)
                print(input)
            }catch{
                print("\(error.localizedDescription)")
            }
        }
    }
    
    func test(){
        print(URL.documentsDirectory)
    }
}

#Preview {
    URLDirectory()
}
