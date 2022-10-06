//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/06.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
		NavigationStack {
			ScrollView {
				
				NavigationLink("Hello, world!") {
					MyOtherScreen()
				}
				Text("Hello, World!")
				Text("Hello, World!")
				Text("Hello, World!")
			}
			.navigationTitle("All Inboxes")
//			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					NavigationLink {
						MyOtherScreen()
					} label: {
						Image(systemName: "person.fill")
					}
				}
				ToolbarItem(placement: .navigationBarLeading) {
//					Image(systemName: "flame.fill")
					Image(systemName: "gear")
				}
				
				ToolbarItemGroup(placement: .automatic) {
					Image(systemName: "heart")
					Text("33")
				}
			}
		}
    }
}

struct MyOtherScreen: View {
	
	@Environment(\.dismiss) private var dismiss
	
	var body: some View {
		ZStack {
			Color.green
				.ignoresSafeArea()
				.navigationTitle("Green Screen!")
				.navigationBarBackButtonHidden()
			
			VStack {
				Button {
					dismiss()
				} label: {
					Text("뒤로가기")
				}
			}
		}
	}
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
