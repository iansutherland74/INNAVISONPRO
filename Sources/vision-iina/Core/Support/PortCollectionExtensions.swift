extension Array {
    /// Returns the element at `index` if it is within bounds, otherwise `nil`.
    /// Mirrors iina's `Extensions.swift` safe-subscript implementation.
    subscript(at index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
