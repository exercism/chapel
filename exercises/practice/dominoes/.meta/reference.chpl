module Dominoes {
  use List;

  proc makeGraph(edges: [] [0..1] int) {
    var graph: [1..6] list(int),
        node = edges[0][0];
    for edge in edges {
      graph[edge[0]].pushBack(edge[1]);
      graph[edge[1]].pushBack(edge[0]);
    }
    return (graph, node);
  }

  proc canChain(edges: [] [0..1] int) {
    if edges.isEmpty() then return true;
    var (graph, node) = makeGraph(edges);
    return isConnected(graph, node) && checkParity(graph);
  }

  proc isConnected(graph: [?D] list(int), node: int) {
    var visited: [D] bool;
    depthFirstTraverse(node, graph, visited);
    for v in D do if !visited[v] && graph[v].size != 0 then return false;
    return true;
  }

  proc depthFirstTraverse(v: int, graph: [] list(int), ref visited: [] bool) {
    visited[v] = true;
    [w in graph[v]] if !visited[w] then depthFirstTraverse(w, graph, visited);
  }

  proc checkParity(graph: [?D] list(int)) {
    for v in D do if graph[v].size % 2 then return false;
    return true;
  }
}
