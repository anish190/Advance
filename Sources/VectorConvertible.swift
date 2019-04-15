/// Conforming types can be converted to and from vector types.
public protocol VectorConvertible: Equatable, Interpolatable {
    
    /// The concrete VectorType implementation that can represent the 
    /// conforming type.
    associatedtype VectorType: SIMD where VectorType.Scalar == Double
    
    /// Creates a new instance from a vector.
    init(vector: VectorType)
    
    /// The vector representation of this instance.
    var vector: VectorType { get }
}

extension VectorConvertible {
    
    /// Returns an instance initialized using the zero vector.
    public static var zero: Self {
        return Self(vector: VectorType.zero)
    }
}

extension VectorConvertible {
    
    /// Interpolates between values.
    ///
    /// - parameter to: The value to interpolate to.
    /// - parameter alpha: The amount (between 0.0 and 1.0) to interpolate,
    ///   where `0` returns the receiver, and `1` returns the `to` value.
    /// - Returns: The interpolated result.
    public func interpolated(to otherValue: Self, alpha: Double) -> Self {
        return Self(vector: vector.interpolated(to: otherValue.vector, alpha: alpha))
    }
    
}