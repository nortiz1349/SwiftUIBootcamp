//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct SpacerBootcamp: View {
	var body: some View {
		VStack {
			HStack(spacing: 0) {
				
				Image(systemName: "xmark")
				Spacer()
					.frame(height: 10)
					.background(.orange)
				Image(systemName: "gear")
				
			}
			.font(.title)
//			.background(.yellow)
			.padding(.horizontal)
			
			Spacer()
				.frame(width: 10)
				.background(.orange)
		}
		
	}
}

struct SpacerBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		SpacerBootcamp()
	}
}
