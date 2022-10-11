//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/11.
//

import SwiftUI

struct FocusStateBootcamp: View {
	
	enum OnboardingFields: Hashable {
		case username
		case password
	}
	
//	@FocusState private var usernameInFocus: Bool
	@State private var username: String = ""
//	@FocusState private var passwordInFocus: Bool
	@State private var password: String = ""
	@FocusState private var fieldInFocus: OnboardingFields?
	
	
	var body: some View {
		VStack(spacing: 20) {
			TextField("이름을 입력하세요...", text: $username)
				.focused($fieldInFocus, equals: .username)
//				.focused($usernameInFocus)
				.padding(.leading)
				.frame(height: 55)
				.frame(maxWidth: .infinity)
				.background(Color(UIColor.secondarySystemBackground))
				.cornerRadius(10)
			
			SecureField("비밀번호를 입력하세요...", text: $password)
				.focused($fieldInFocus, equals: .password)
//				.focused($passwordInFocus)
				.padding(.leading)
				.frame(height: 55)
				.frame(maxWidth: .infinity)
				.background(Color(UIColor.secondarySystemBackground))
				.cornerRadius(10)
			
			Button("SIGN UP 🚀") { // 프롬프트 다음 텍스트 필드로 넘기기
				let usernameIsValid = !username.isEmpty
				let passwordIsValid = !password.isEmpty
				if usernameIsValid && passwordIsValid {
					print("SIGN UP")
				} else if usernameIsValid {
					fieldInFocus = .password
//					usernameInFocus = false
//					passwordInFocus = true
				} else {
					fieldInFocus = .username
//					usernameInFocus = true
//					passwordInFocus = false
				}
			}
		}
		.padding(40)
//		.onAppear() { // 화면이 나타날 때 프롬프트 포커스 & 키보드 팝업
//			DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//				self.usernameInFocus = true
//			}
//		}
	}
}

struct FocusStateBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		FocusStateBootcamp()
	}
}
