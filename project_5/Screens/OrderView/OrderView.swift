//
//  OrderView.swift
//  project_5
//
//  Created by Atharv Choughule on 10/06/25.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order complete")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") -Place order")
                    }
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "No items it the order")
                }
            }
                .navigationBarTitle("Orders")
            }
        }
    
    
   
}

#Preview {
    OrderView()
}
