//
//  CounterView.swift
//  MyProj
//
//  Created by KimJitae on 9/2/24.
//

import Foundation
import SwiftUI

struct CounterView: View {
    @StateObject var viewModel: CounterViewModel
    
    var body: some View {
        VStack {
            Text("Counter: \(viewModel.state.counter.value)")
                .font(.largeTitle)
            
            HStack {
                Button("Decrement") {
                    viewModel.dispatch(.decrement)
                }
                Button("Increment") {
                    viewModel.dispatch(.increment)
                }
            }
            .padding()
        }
    }
}
