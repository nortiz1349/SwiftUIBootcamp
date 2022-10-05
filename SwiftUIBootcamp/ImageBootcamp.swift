//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("wedding")
//			.renderingMode(.template)
				// 배경이 투명한 단색 이미지의 경우 foregroundColor 로 색상을 변경할 수 있다.
				// asset inspector 에서 변경할 수도 있다.
			.resizable()
//			.aspectRatio(contentMode: .fit) // 아래 두가지 modifier 로 설정할 수 있다.
//			.scaledToFit()
			.scaledToFill()
			.frame(width: 300, height: 300)
			.clipped()
//			.cornerRadius(150)
			.clipShape(
//				Circle()
				RoundedRectangle(cornerRadius: 25)
//				Ellipse()
			)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
