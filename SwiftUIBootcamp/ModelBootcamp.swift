//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/09.
//

import SwiftUI

struct UserModel: Identifiable {
	let id: String = UUID().uuidString
	let displayName: String
	let userName: String
	let followerCount: Int
	let isVerified: Bool
}

struct ModelBootcamp: View {
	
	@State var users: [UserModel] = [
//		"Nick", "Emily", "Sam", "Chris"
		UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
		UserModel(displayName: "Emily", userName: "emily455", followerCount: 55, isVerified: false),
		UserModel(displayName: "Sam", userName: "sssam22", followerCount: 34, isVerified: false),
		UserModel(displayName: "Cris", userName: "jjim3", followerCount: 22, isVerified: true)
	]
	
    var body: some View {
		NavigationStack {
			List {
				ForEach(users) { user in
					HStack(spacing: 15.0) {
						Circle()
							.frame(width: 35, height: 35)
						VStack(alignment: .leading) {
							Text(user.displayName)
								.font(.headline)
							Text("@\(user.userName)")
								.foregroundColor(.secondary)
								.font(.caption)
						}
						Spacer()
						
						if user.isVerified {
							Image(systemName: "checkmark.seal.fill")
								.foregroundColor(.accentColor)
						}
						
						VStack {
							Text("\(user.followerCount)")
								.font(.headline)
							Text("Followers")
								.font(.caption)
								.foregroundColor(.secondary)
						}
					}
					.padding(.vertical, 10)
				}
//				ForEach(users, id: \.self) { name in
//
//				}
			}
			.navigationTitle("Users")
		}
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
