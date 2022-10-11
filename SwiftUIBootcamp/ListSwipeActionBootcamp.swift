//
//  ListSwipeActionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/11.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
	
	@State var fruits: [String] = [
		"apple", "orange", "banana", "peach"
	]
	
    var body: some View {
		List {
			ForEach(fruits, id: \.self) {
				Text($0.capitalized)
			}
//			.onDelete(perform: delete)
			.swipeActions(edge: .trailing, allowsFullSwipe: true) {
				Button("Archive") {
					
				}
				.tint(.green)
				Button("Save") {
					
				}
				.tint(.blue)
				Button("Junk") {
					
				}
				.tint(.black)
			}
			.swipeActions(edge: .leading, allowsFullSwipe: false) {
				Button("Share") {
					
				}
				.tint(.yellow)
				
			}
			
		}
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
