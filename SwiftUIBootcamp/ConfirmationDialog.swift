//
//  ConfirmationDialog.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct ConfirmationDialog: View {
	
	@State var showDialog: Bool = false
	
    var body: some View {
		Button("Click me") {
			showDialog.toggle()
		}
		.confirmationDialog(Text("title"), isPresented: $showDialog, titleVisibility: .visible) {
			Button("Clear", role: .destructive) {
				
			}
			Button("default") {
				
			}
			Button("default") {
				
			}
			Button("default") {
				
			}
			
		} message: {
			Text("This is the message ⭐️")
		}
		
		
    }
}

struct ConfirmationDialogBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog()
    }
}
