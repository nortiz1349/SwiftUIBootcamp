//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/08.
//

import SwiftUI

struct TabViewBootcamp: View {
	
	@State var selectedTab: Int = 0
	
	let icons: [String] = [
		"heart.fill", "globe", "house.fill", "person.fill"
	]
	
	
	var body: some View {
		
		TabView {
			ForEach(icons, id: \.self) { icon in
				Image(systemName: icon)
					.resizable()
					.scaledToFit()
					.padding(30)
			}
		}
		.background(
			RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300)
		)
		.frame(height: 300)
		.tabViewStyle(.page)
		
		//		TabView(selection: $selectedTab) {
		//
		//			HomeView(selectTab: $selectedTab)
		//				.tabItem {
		//					Image(systemName: "house.fill")
		//					Text("Home")
		//				}
		//				.tag(0)
		//			Text("BROWSE TAB")
		//				.tabItem {
		//					Image(systemName: "globe")
		//					Text("Browse")
		//				}
		//				.tag(1)
		//			Text("PROFILE TAB")
		//				.tabItem {
		//					Image(systemName: "person.fill")
		//					Text("Profile")
		//				}
		//				.tag(2)
		//		}
		
	}
}

struct TabViewBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		TabViewBootcamp()
	}
}

struct HomeView: View {
	
	@Binding var selectTab: Int
	
	var body: some View {
		ZStack {
			Color.red.ignoresSafeArea(.container, edges: .top)
			
			VStack {
				Text("Home Tab")
					.font(.largeTitle)
					.foregroundColor(.white)
				Button {
					selectTab = 2
				} label: {
					Text("Go to Profile")
						.font(.headline)
						.padding()
						.padding(.horizontal)
						.background(.white)
						.cornerRadius(10)
				}
			}
			
		}
	}
}
