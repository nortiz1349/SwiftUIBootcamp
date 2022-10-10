//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/10.
//

import SwiftUI

struct AppStorageBootcamp: View {
	
//	@State var currentUserName: String?
	@AppStorage("name") var currentUserName: String?
	
    var body: some View {
		VStack(spacing: 20) {
			Text(currentUserName ?? "Add Name Here")
			
			if let name = currentUserName {
				Text(name)
			}
			
			Button("Save".uppercased()) {
				let name = "Emily"
				currentUserName = name
//				UserDefaults.standard.set(name, forKey: "name")
			}
		}
//		.onAppear() {
//			currentUserName = UserDefaults.standard.string(forKey: "name")
//		}
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
