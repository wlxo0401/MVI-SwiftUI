//
//  CounterUseCase.swift
//  MyProj
//
//  Created by KimJitae on 9/2/24.
//

import Foundation

// Domain/UseCases/CounterUseCase.swift
protocol CounterUseCase {
    func increment() -> Counter
    func decrement() -> Counter
    func getCurrentValue() -> Counter
}

class CounterUseCaseImpl: CounterUseCase {
    private let repository: CounterRepository
    
    init(repository: CounterRepository) {
        self.repository = repository
    }
    
    func increment() -> Counter {
        let currentCounter = repository.getCounter()
        let newCounter = Counter(value: currentCounter.value + 1)
        repository.saveCounter(newCounter)
        return newCounter
    }
    
    func decrement() -> Counter {
        let currentCounter = repository.getCounter()
        let newCounter = Counter(value: currentCounter.value - 1)
        repository.saveCounter(newCounter)
        return newCounter
    }
    
    func getCurrentValue() -> Counter {
        return repository.getCounter()
    }
}

