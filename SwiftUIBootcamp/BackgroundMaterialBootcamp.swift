//
//  BackgroundMaterialBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/10.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
		VStack {
			Spacer()
			
			VStack {
				RoundedRectangle(cornerRadius: 4)
					.frame(width: 50, height: 4)
					.padding()
				Spacer()
			}
			.frame(height: 350)
			.frame(maxWidth: .infinity)
			.background(.ultraThinMaterial) // Material
//			.background(.regularMaterial)
			.cornerRadius(20)
		}
		.ignoresSafeArea()
		.background(
			Image("wedding")
				.resizable()
				.scaledToFit()
		)
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
