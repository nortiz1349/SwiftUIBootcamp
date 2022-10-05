//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct GridBootcamp: View {
	
	let columns: [GridItem] = [
		//		GridItem(.fixed(50), spacing: nil, alignment: nil),
		//		GridItem(.fixed(75), spacing: nil, alignment: nil),
		//		GridItem(.fixed(100), spacing: nil, alignment: nil),
		//		GridItem(.fixed(75), spacing: nil, alignment: nil),
		//		GridItem(.fixed(50), spacing: nil, alignment: nil)
		//		GridItem(.flexible(), spacing: nil, alignment: nil),
		//		GridItem(.flexible(), spacing: nil, alignment: nil),
		//		GridItem(.flexible(), spacing: nil, alignment: nil),
		//		GridItem(.flexible(), spacing: nil, alignment: nil),
		//		GridItem(.flexible(), spacing: nil, alignment: nil)
		//		GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil)
		GridItem(.flexible(), spacing: 6, alignment: nil),
		GridItem(.flexible(), spacing: 6, alignment: nil),
		GridItem(.flexible(), spacing: 6, alignment: nil)
		
	]
	
	var body: some View {
		ScrollView {
			
			Rectangle()
				.fill(.orange)
				.frame(height: 400)
			
			LazyVGrid(
				columns: columns,
				alignment: .center,
				spacing: 6,
				pinnedViews: [.sectionHeaders]) { // 스크롤 했을때 섹션 헤더의 위치를 결정
					Section {
						ForEach(0..<20) { index in
							Rectangle()
								.frame(height: 150)
						}
					} header: {
						Text("Section 1")
							.foregroundColor(.white)
							.font(.title)
							.frame(maxWidth: .infinity, alignment: .leading)
							.background(.blue)
							.padding()
					}
					Section {
						ForEach(0..<20) { index in
							Rectangle()
								.fill(.green)
								.frame(height: 150)
						}
					} header: {
						Text("Section 2")
							.foregroundColor(.white)
							.font(.title)
							.frame(maxWidth: .infinity, alignment: .leading)
							.background(.red)
							.padding()
					}
				}
			
			//			Rectangle()
			//				.fill(.gray)
			//				.frame(height: 400)
			
			//			LazyVGrid(columns: columns) {
			//				ForEach(0..<50) { index in
			//					Rectangle()
			//						.frame(height: 150)
			//				}
			//			}
		}
	}
}

struct GridBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		GridBootcamp()
	}
}
