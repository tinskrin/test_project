//
//  ContentView.swift
//  testProject
//
//  Created by tinskrin on 11.08.2023.
//

import SwiftUI

struct ContentView: View {
	@State private var searchText = ""
	let dataStories = DataStories.examples()
	let dataBanners = DataBanners.examples()
	let dataBonus = DataBonus.examples()
	let dataOffers = DataOffers.examples()
	let dataRecommend = DataRecommend.examples()
	let dataSweet = DataSweet.examples()

	var body: some View {
		TabView {
			NavigationView {
				GeometryReader { geometry in
					List {
						ScrollView(.horizontal) {
							LazyHStack() {
								ForEach(dataStories) { dataStories in
									StoriesListView(stories: dataStories)
								}
							}
						}
						.scrollIndicators(.hidden)
						.frame(height: 80)
						ScrollView(.horizontal) {
							LazyHStack() {
								ForEach(dataBanners) { dataBanners in
									BannersListView(banner: dataBanners)
								}
							}
						}
						.scrollIndicators(.hidden)
						.frame(height: 110)
						ForEach(dataBonus) { dataBonus in
							BonusView(bonus: dataBonus)
						}
						ScrollView(.horizontal) {
							LazyHStack() {
								ForEach(dataOffers) { dataOffers in
									OffersView(offers: dataOffers)
								}
							}
						}
						.scrollIndicators(.hidden)
						.frame(height: 110)
						Text("Рекомендуем").bold()
						ScrollView(.horizontal) {
							LazyHStack() {
								ForEach(dataRecommend) { dataRecommend in
									RecommendView(recommend: dataRecommend)
								}
							}
						}
						.scrollIndicators(.hidden)
						.frame(height: 130)
						Text("Сладкое настроение").bold()
						ScrollView(.horizontal) {
							LazyHStack() {
								ForEach(dataSweet) { dataSweet in
									SweetView(sweet: dataSweet)
								}
							}
						}
						.scrollIndicators(.hidden)
						.frame(height: 130)
					}
					.navigationBarItems(leading: HStack {
						Image(systemName: "mappin.circle.fill").foregroundColor(.red)
						TextField("Укажите ваш город", text: self.$searchText)
					}
						.frame(width: geometry.size.width - 60,
							   height: 35,
							   alignment: .center)
							.background(RoundedRectangle(cornerRadius: 8)
								.fill(Color(.white)))
										, trailing: Image(systemName: "line.3.horizontal.circle").foregroundColor(.green))
				}
			}
			.navigationViewStyle(StackNavigationViewStyle())
			.tabItem {
				Image(systemName: "house")
				Text("Главная")
			}

			Text("Каталог")
				.tabItem {
					Image(systemName: "cube.fill")
					Text("Каталог")
				}

			Text("Корзина")
				.tabItem {
					Image(systemName: "cart")
					Text("Корзина")
				}

			Text("Профиль")
				.tabItem {
					Image(systemName: "person")
					Text("Профиль")
				}
		}
		.tint(.green)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
