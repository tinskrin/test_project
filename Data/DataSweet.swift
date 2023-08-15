//
//  DataSweet.swift
//  testProject
//
//  Created by tinskrin on 15.08.2023.
//

import Foundation

struct DataSweet: Identifiable {

	let imageName: String
	let text: String
	let id = UUID()

	static func examples() -> [DataSweet] {

		[DataSweet(imageName: "spar", text: "99.90₽/штт"),
		 DataSweet(imageName: "sparOne", text: "99.90₽/шт"),
		 DataSweet(imageName: "sparTwo", text: "99.90₽/шт")]
	}

	static func example1() -> DataSweet {
		DataSweet(imageName: "spar", text: "99.90₽/шт")
	}

	static func example2() -> DataSweet {
		DataSweet(imageName: "drink", text: "99.90₽/шт")
	}
}
