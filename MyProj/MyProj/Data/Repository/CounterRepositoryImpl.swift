//
//  CounterRepositoryImpl.swift
//  MyProj
//
//  Created by KimJitae on 9/2/24.
//

import Foundation

class CounterRepositoryImpl: CounterRepository {
    private let userDefaults = UserDefaults.standard
    private let counterKey = "counter_value"
    
    func getCounter() -> Counter {
        let value = userDefaults.integer(forKey: counterKey)
        return Counter(value: value)
    }
    
    func saveCounter(_ counter: Counter) {
        userDefaults.set(counter.value, forKey: counterKey)
    }
}
