//
//  Box.swift
//  CathayLifeAT
//
//  Created by i9400516 on 2019/6/17.
//  Copyright © 2019 CathayLife. All rights reserved.
//

import Foundation

public final class Box<T> {
    var key: String?

    public typealias LinsterType = (_ newValue: T?, _ oldValue: T?) -> Void

    public var _EventListeners: [LinsterType] = []

    public var value: T? = nil {
        didSet {
            self.execute(newValue: value, oldValue: oldValue)
        }
    }

    public init(_ value: T?, listener: [LinsterType]? = nil) {

        self.value = value
        self._EventListeners = listener ?? []
    }

    // MARK: 單一binding
    public func binding(trigger: Bool = true, _ index: Int? = nil, listener: @escaping LinsterType) {
        self.appendingBinding(trigger: trigger, index: index, listener: listener)
    }

    private func appendingBinding(trigger: Bool = true, index: Int? = nil, listener: @escaping LinsterType) {

        if let index = index, index < self._EventListeners.count {
            self._EventListeners.insert(listener, at: index)
        } else {
            self._EventListeners.append(listener)
        }

        if trigger {
            listener(self.value, self.value)
        }
    }

    public func removeAllBinding() {
        self._EventListeners.removeAll()
    }

    public func execute(newValue: T?, oldValue: T?) {
        for listener in self._EventListeners {
            listener(newValue, oldValue)
        }
    }
}
