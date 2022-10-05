//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/03.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//			.fill(.blue)
//			.foregroundColor(.pink)
//			.stroke()
//			.stroke(.red)
//			.stroke(.blue, lineWidth: 30)
//			.stroke(
//				.orange,
//				style: StrokeStyle(
//					lineWidth: 30,
//					lineCap: .round,
//					dash: [30]
//				)
//			) // 스트로크 스타일 지정
//			.trim(from: 0.1, to: 0.9) // 시작점과 끝점을 지정하여 원을 자를 수 있다.
//			.stroke(.purple, lineWidth: 50)
//		Ellipse() // 타원, Circle에서 사용하는 modifier를 적용할 수 있다.
//		Capsule(style: .circular)
//		Rectangle()
		RoundedRectangle(cornerRadius: 20)
			.frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
