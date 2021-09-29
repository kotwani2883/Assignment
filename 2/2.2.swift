public struct Vertex<T: Hashable> {
  var data: T
}

extension Vertex: Hashable {
  public var hashValue: Int { // 1
      return "\(data)".hashValue
  }
  
  static public func ==(lhs: Vertex, rhs: Vertex) -> Bool { // 2
    return lhs.data == rhs.data
  }
}
