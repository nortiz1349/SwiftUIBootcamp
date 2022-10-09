//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/09.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
	
	@State var currentUserID: String? = nil
	@State var displayText: String? = nil
	@State var isLoading: Bool = false
	
	var body: some View {
		NavigationStack {
			VStack {
				Text("Here we are practicing safe coding!")
				
				if let text = displayText {
					Text(text)
						.font(.title)
				}
				
				/// 느낌표 강제 언래핑은 사용하지 말 것
//				Text(displayText!)
//					.font(.title)
				
				if isLoading {
					ProgressView()
				}
				
				Spacer()
			}
			.navigationTitle("Safe Coding")
			.onAppear() {
				loadData2()
			}
		}
	}
	
	func loadData() {
		
		if let userID = currentUserID {
			isLoading = true
			DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
				displayText = "This is the new data! User id is: \(userID)"
				isLoading = false
			}
		} else {
			displayText = "Error. There is no User ID!"
		}
	}
	
	func loadData2() {
		
		guard let userID = currentUserID else {
			displayText = "Error. There is no User ID!"
			return
		}
		
		isLoading = true
		DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			displayText = "This is the new data! User id is: \(userID)"
			isLoading = false
		}
		
	}
	
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
