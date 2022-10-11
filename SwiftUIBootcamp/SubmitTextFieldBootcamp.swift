//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/11.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
	
	@State private var text: String = ""
    var body: some View {
        TextField("Placeholder...", text: $text)
			.submitLabel(.route)
			.onSubmit {
				print("Something to the console!")
			}
		TextField("Placeholder...", text: $text)
			.submitLabel(.next)
			.onSubmit {
				print("Something to the console!")
			}
		TextField("Placeholder...", text: $text)
			.submitLabel(.search)
			.onSubmit {
				print("Something to the console!")
			}
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
