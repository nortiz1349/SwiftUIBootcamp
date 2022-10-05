//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
			.background(.green) // 프레임을 사용해서 각 컴포넌트들이 어떻게 정렬되어 있는지 확인할 수 있다.
//			.frame(width: 300, height: 300, alignment: .center)
			.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // safety area 를 무시할 수 있다.
//			.background(.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
