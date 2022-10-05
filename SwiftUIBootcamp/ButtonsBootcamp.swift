//
//  ButtonsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct ButtonsBootcamp: View {
	
	@State var title: String = "제목입니다"
	
    var body: some View {
		VStack(spacing: 20) {
			Text(title)
			
			Button("누르세요!") {
				self.title = "버튼 눌러짐"
			}
			.tint(.red)
			
			Button {
				self.title = "버튼 2번 눌러짐"
			} label: {
				Text("저장")
					.font(.headline)
					.fontWeight(.semibold)
					.foregroundColor(.white)
					.padding()
					.padding(.horizontal, 20)
					.background(
						Color.blue
							.cornerRadius(10)
							.shadow(radius: 10)
					)
			}
			
			Button {
				self.title = "버튼3 눌러짐"
			} label: {
				Circle()
					.fill(.white)
					.frame(width: 75, height: 75)
					.shadow(radius: 10)
					.overlay(
						Image(systemName: "heart.fill")
							.font(.largeTitle)
							.foregroundColor(.red)
					)
			}

			Button {
				self.title = "버튼5 눌러짐"
			} label: {
				Text("완료")
					.font(.caption)
					.bold()
					.foregroundColor(.gray)
					.padding()
					.padding(.horizontal, 10)
					.background(
						Capsule()
							.stroke(.gray, lineWidth: 2.0)
					)
			}
		}
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
