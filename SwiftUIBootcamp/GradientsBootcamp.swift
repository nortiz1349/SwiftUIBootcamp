//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
			.fill(
//				Color.red
//				LinearGradient(
//					gradient: Gradient(colors: [.gray, .primary]),
//					startPoint: .topLeading,
//					endPoint: .bottom
//				)
//				RadialGradient(
//					colors: [.red, .blue],
//					center: .topLeading,
//					startRadius: 5,
//					endRadius: 400
//				)
				AngularGradient(
					colors: [.blue, .red],
					center: .topLeading,
					angle: .degrees(180 + 45)
				)
			)
			.frame(width: 300, height: 400)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
