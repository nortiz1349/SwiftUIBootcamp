//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct ForEachBootcamp: View {
	
	let data: [String] = ["hi", "hello", "hey"]
	let myString: String = "Hello"
	
    var body: some View {
		VStack {
			
//			ForEach(data.indices) { index in
//				Text("\(data[index]): \(index)")
//			}
			
			Divider()
			
			ForEach(0..<10) { index in
				HStack {
					Circle()
						.frame(width: 30, height: 30)
					Text("Index : \(index)")
				}
			}
		}
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
