//
//  ListView.swift
//  project_5
//
//  Created by Atharv Choughule on 10/06/25.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
   
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationBarTitle("Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail{
                AppetizerDetailedView(appetizer: viewModel.selectedAppetizer!,
                                      isShowingDetail: $viewModel.isShowingDetail)
            }
            
            
            if viewModel.isLoading{
                LoadingView()
            }
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
    }
    
}

#Preview {
    AppetizerListView()
}
