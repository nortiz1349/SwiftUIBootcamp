//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct ScrollViewBootcamp: View {
	var body: some View {
		ScrollView {
			LazyVStack {
				ForEach(0..<100) { index in
					ScrollView(.horizontal, showsIndicators: false) {
						HStack {
							ForEach(0..<20) { index in
								RoundedRectangle(cornerRadius: 25)
									.fill(.white)
									.frame(width: 200, height: 150)
									.shadow(radius: 10)
									.padding()
							}
						}
					}
				}
			}
		}
//		ScrollView(.horizontal, showsIndicators: true) {
//			HStack {
//				ForEach(0..<50) { index in
//					Rectangle()
//						.fill(.blue)
//						.frame(width: 300, height: 300)
//				}
//			}
//		}
	}
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		ScrollViewBootcamp()
	}
}
