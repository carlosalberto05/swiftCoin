//
//  HomeView.swift
//  SwiftCoinTutorial
//
//  Created by Carlos Alberto on 25/04/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var ViewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                
                //top movers view
                TopMoversView(viewModel: ViewModel)
                
                Divider()
                
                //all coins view
                AllCoinsView(viewModel: ViewModel)
                
            }.navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
