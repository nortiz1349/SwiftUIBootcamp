//
//  Background+OverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
	var body: some View {
		Image(systemName: "heart.fill")
			.font(.system(size: 40))
			.foregroundColor(.white)
			.background(
				Circle()
					.fill(
						LinearGradient(
							colors: [.purple, .blue],
							startPoint: .topLeading,
							endPoint: .bottomTrailing)
					)
					.frame(width: 100, height: 100)
					.shadow(color: .purple, radius: 10, x:5, y: 10)
					.overlay(
						Circle()
							.fill(.blue)
							.frame(width: 35, height: 35)
							.overlay(
								Text("5")
									.font(.headline)
									.foregroundColor(.white)
							)
							.shadow(color: .purple, radius: 10, x:5, y: 10)
						, alignment: .bottomTrailing
					)
			)
		
		//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
		//			.background(
		//				Circle()
		//					.fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))
		//					.frame(width: 100, height: 100, alignment: .center)
		//			)
		//			.background(
		//				Circle()
		//					.fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
		//					.frame(width: 120, height: 120, alignment: .center)
		//			)
		
		//		Circle()
		//			.fill(.pink)
		//			.frame(width: 100, height: 100, alignment: .center)
		//			.overlay(
		//				Text("1")
		//					.font(.largeTitle)
		//					.foregroundColor(.white)
		//			)
		//			.background(
		//				Circle()
		//					.fill(.primary)
		//					.frame(width: 120, height: 120, alignment: .center)
		//			)
		
		
	}
}

struct Background_OverlayBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		BackgroundAndOverlayBootcamp()
	}
}
