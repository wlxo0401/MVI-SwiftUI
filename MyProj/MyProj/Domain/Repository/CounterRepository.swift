//
//  CounterRepository.swift
//  MyProj
//
//  Created by KimJitae on 9/2/24.
//

import Foundation

protocol CounterRepository {
    func getCounter() -> Counter
    func saveCounter(_ counter: Counter)
}
