//
//  DataBonus.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation

struct DataBonus: Identifiable {

	let imageName: String
	let id = UUID()

	static func examples() -> [DataBonus] {

		[DataBonus(imageName: "bonus")]
	}

	static func example1() -> DataBonus {
		DataBonus(imageName: "bonus")
	}
}
