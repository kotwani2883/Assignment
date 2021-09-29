open class AdjacencyList<T: Hashable> {
  public var adjacencyDict : [Vertex<T>: [Edge<T>]] = [:]
  public init() {}
}
extension AdjacencyList: Graphable {
  public typealias Element = T
}

public func createVertex(data: Element) -> Vertex<Element> {
  let vertex = Vertex(data: data)
  
  if adjacencyDict[vertex] == nil {
    adjacencyDict[vertex] = []
  }

  return vertex
}

fileprivate func addDirectedEdge(from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?) {
  let edge = Edge(source: source, destination: destination, weight: weight) // 1
  adjacencyDict[source]?.append(edge) // 2
}


fileprivate func addUndirectedEdge(vertices: (Vertex<Element>, Vertex<Element>), weight: Double?) {
  let (source, destination) = vertices
  addDirectedEdge(from: source, to: destination, weight: weight)
  addDirectedEdge(from: destination, to: source, weight: weight)
}
