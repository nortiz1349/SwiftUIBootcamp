//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/11.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
		
		List {
			Text("Hello")
				.badge(1)
			Text("Hello")
				.badge("New Item!")
			Text("Hello")
			Text("Hello")
		}
		
		
//		TabView {
//			Color.red
//				.tabItem {
//					Image(systemName: "heart.fill")
//					Text("Hello")
//				}
//				.badge("New")
//
//			Color.green
//				.tabItem {
//					Image(systemName: "heart.fill")
//					Text("Hello")
//				}
//				.badge(5)
//			Color.blue
//				.tabItem {
//					Image(systemName: "heart.fill")
//					Text("Hello")
//				}
//		}
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
