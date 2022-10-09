//
//  DocumentaionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/09.
//

import SwiftUI

struct DocumentaionBootcamp: View {
	
	// MARK: PROPERTIES
	
	@State var data: [String] = [
		"Apples", "Oranges", "Bananas"
	]
	@State var alert: Bool = false
	
	// MARK: BODY
	
	// Working copy - things to do:
	/*
	 dfdf
	 
	 df
	 df
	 df
	 alt + cmd + left arrow
	 */
		
    var body: some View {
		NavigationStack { // START: NAV
			ZStack {
				// backfround
				Color.yellow.ignoresSafeArea()
				
				// foreground
				foregroundLayer
				.navigationTitle("Documantaion")
				.toolbar {
					Button {
						alert.toggle()
					} label: {
						Text("Alert")
					}
					.alert("Alert", isPresented: $alert) {
						
					}
			}
			}
		} // END: NAV
    }
	
	/// This is the foreground layer that holds a scrollView.
	private var foregroundLayer: some View {
		ScrollView { // START: SCROLLV
			Text("Hello")
			ForEach(data, id: \.self) { name in
				Text(name)
					.font(.headline)
			}
		} // END: SCROLLV
	}
	
	// MARK: FUNCTIONS
	
	
	/// 함수에 대한 설명
	///
	/// discussion 에 대한 내용
	///
	/// ```
	/// getAlert(text: "Hi") -> Alert(title: Text("Hi))
	/// ```
	///
	/// - Warning: 경고 섹션 추가 가능
	/// - Parameter text: 파라미터 설명
	/// - Returns: 반환값 설명
	func getAlert(text: String) -> Alert {
		return Alert(title: Text("Alert"))
	}
	
	
	
}

	// MARK: PREVIEW

struct DocumentaionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentaionBootcamp()
    }
}
