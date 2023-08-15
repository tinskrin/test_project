//
//  DataOffers.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation

struct DataOffers: Identifiable {

	let imageName: String
	let text: String
	let id = UUID()

	static func examples() -> [DataOffers] {

		[DataOffers(imageName: "coffee", text: "Абонемент на кофе"),
		 DataOffers(imageName: "backet", text: "Мои скидки"),
		 DataOffers(imageName: "card", text: "Карта в подарок"),
		 DataOffers(imageName: "delivery", text: "Доставим за 1 час")]
	}

	static func example1() -> DataOffers {
		DataOffers(imageName: "coffee", text: "Абонемент на кофе")
	}

	static func example2() -> DataOffers {
		DataOffers(imageName: "backet", text: "Мои скидки")
	}
}
