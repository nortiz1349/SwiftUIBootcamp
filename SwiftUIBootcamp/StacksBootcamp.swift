//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct StacksBootcamp: View {
	// Vstacks -> 수직
	// Hstacks -> 수평
	// Zstacks -> 겹치기
	var body: some View {
		VStack(spacing: 20) {
			Text("5")
				.font(.largeTitle)
				.underline()
			
			Text("Items in your cart")
				.font(.caption)
				.foregroundColor(.gray)
			
		}
	}
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
