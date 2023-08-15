//
//  BonusView.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation
import SwiftUI

struct BonusView: View {
	let bonus: DataBonus
	let bonusCount = 0

	var body: some View {
		Image(bonus.imageName)
			.resizable()
			.scaledToFit()
			.cornerRadius(15)
			.overlay(alignment: .topLeading, content: {
						   Text("\(bonusCount) бонусов")
							   .bold()
							   .foregroundColor(Color.black)
							   .font(.system(size: 25))
							   .padding()
					   })
	}
}

struct BonusView_Previews: PreviewProvider {
	static var previews: some View {
		BonusView(bonus: DataBonus.example1())
	}
}

