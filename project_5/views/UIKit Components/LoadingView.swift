//
//  LoadingView.swift
//  project_5
//
//  Created by Atharv Choughule on 10/06/25.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor(named: "brandPrimary")
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View{
    var body: some View{
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
