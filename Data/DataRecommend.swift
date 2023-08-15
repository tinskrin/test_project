//
//  DataRecommend.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation

struct DataRecommend: Identifiable {

	let imageName: String
	let text: String
	let id = UUID()

	static func examples() -> [DataRecommend] {

		[DataRecommend(imageName: "cheese", text: "259.90₽/шт"),
		 DataRecommend(imageName: "drink", text: "99.90₽/шт"),
		 DataRecommend(imageName: "toilet", text: "309.90₽/шт")]
	}

	static func example1() -> DataRecommend {
		DataRecommend(imageName: "cheese", text: "259.90₽/шт")
	}

	static func example2() -> DataRecommend {
		DataRecommend(imageName: "drink", text: "99.90₽/шт")
	}
}
