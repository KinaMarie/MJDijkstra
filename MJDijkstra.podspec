
Pod::Spec.new do |s|

    s.name         = "MJDijkstra"
    s.version      = "0.0.1"
    s.summary      = "An implementation of Dijkstra algorithm in Objective C"
    s.description  = <<-DESC

Dijkstra algorithm finds all shortest paths from a vertex to each other vertex in a graph.

The input graph G is assumed to have the following representation: A vertex can be any object that can be used as an index into a dictionary. G is a dictionary, indexed by vertices. For any vertex v, G[v] is itself a dictionary, indexed by the neighbors of v. For any edge v->w, G[v][w] is the length of the edge.

This code is a port of a Python implementation of Dijkstra algorithm suggested by David Eppstein.

See http://code.activestate.com/recipes/119466-dijkstras-algorithm-for-shortest-paths/?in=user-218935

It also provides an implementation of a priority dictionary: a key value map which is also ordered by values.

The implementation relies on C++ stl. stl::map and stl::make_heap do most of heavy lifting. New feature of clang is used to keep C++ out of Objective-C headers: ivars in class extensions.

The project incliudes unit tests.

DESC

    s.homepage        = "https://github.com/SSU-CS-Department/MJDijkstra"
    s.license         = "MIT"
    s.author          = "Dmitri Kozlov"
    s.source       = { 
        :git => "https://github.com/SSU-CS-Department/MJDijkstra.git" 
    }

    s.source_files  = "Classes", "Classes/**/*.{h,m}"

    s.requires_arc = true

    # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
    # s.dependency "JSONKit", "~> 1.4"

end
