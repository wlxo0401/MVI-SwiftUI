//
//  CounterViewModel.swift
//  MyProj
//
//  Created by KimJitae on 9/2/24.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published private(set) var state: CounterState
    private let useCase: CounterUseCase
    
    init(useCase: CounterUseCase) {
        self.useCase = useCase
        self.state = CounterState(counter: useCase.getCurrentValue())
    }
    
    func dispatch(_ intent: CounterIntent) {
        switch intent {
        case .increment:
            state.counter = useCase.increment()
        case .decrement:
            state.counter = useCase.decrement()
        case .refresh:
            state.counter = useCase.getCurrentValue()
        }
    }
}
