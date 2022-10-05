//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct ColorsBootcamp: View {
	
	// let myColor = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
	let myColor = Color(#colorLiteral(red: 0.4756370187, green: 0.4756369591, blue: 0.4756369591, alpha: 1))
	
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
			.fill(
//				Color.primary
//				myColor
//				Color(uiColor: UIColor.secondarySystemBackground) // systembackground
				Color("CustomColor") // assets 에서 지정
			)
			.frame(width: 300, height: 200)
//			.shadow(radius: 10)
			.shadow(color:
						Color("CustomColor").opacity(0.3), radius: 10, x: 20, y: 20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
