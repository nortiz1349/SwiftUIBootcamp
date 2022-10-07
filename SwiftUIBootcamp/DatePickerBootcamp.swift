//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct DatePickerBootcamp: View {
	
	@State var selectedDate: Date = Date()
	let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
	let endingDate: Date = Date()
	
	var dateFormatter: DateFormatter {
		let formatter = DateFormatter()
//		formatter.dateStyle = .short
//		formatter.dateStyle = .long
		formatter.dateStyle = .long
		formatter.timeStyle = .short
		formatter.locale = Locale(identifier: "ko")
		
		return formatter
	}
	
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//			.datePickerStyle(.wheel)
//			.datePickerStyle(.graphical)
//			.datePickerStyle(.compact)
		VStack {
			Text("Selected Date is:")
			Text(dateFormatter.string(from: selectedDate))
				.font(.title)
			
			DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date])
			DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
			DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate) // 날짜 범위 지정
		}
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
