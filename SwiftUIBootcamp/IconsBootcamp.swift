//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "sun.dust.fill")
//			.renderingMode(.original) // 멀티컬러 아이콘으로 설정할 수 있다.
//			.resizable()
//			.aspectRatio(contentMode: .fit)
//			.scaledToFill()
//			.scaledToFit()
			.font(.largeTitle) // 권장
//			.font(.system(size: 200))
//			.foregroundColor(.red)
//			.frame(width: 300, height: 300) // 프레임을 설정하더라도 이미지 사이즈는 조정되지 않는다 .resizable() 을 사용하면 가능
//			.clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
