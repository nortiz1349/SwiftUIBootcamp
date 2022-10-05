//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/03.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
		Text("Hello, 안녕하세요!".lowercased()) // .capitalized(), .uppercased()
//			.font(.body)
//			.fontWeight(.semibold)
//			.bold()
//			.underline()
//			.underline(color: Color.red) // 밑줄 색상 지정
//			.italic()
//			.strikethrough(true, color: .green) // 취소선
//			.font(.system(
//				size: 24,
//				weight: .semibold,
//				design: .serif)
//			) // 폰트 스타일 커스텀
//			.baselineOffset(50) // 문장 간격
//			.kerning(10) // 문자 사이 간격
			.multilineTextAlignment(.leading)
			.foregroundColor(.red)
			.frame(width: 200, height: 100, alignment: .leading)
			.minimumScaleFactor(0.1) // 지정된 범위 내에서 텍스트 크기를 비율로 조정할 수 있다.
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
