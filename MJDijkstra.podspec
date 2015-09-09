
Pod::Spec.new do |s|

    s.name         = "MJDijkstra"
    s.version      = "1.0.0"
    s.summary      = "An implementation of Dijkstra algorithm in Objective C"
    
    s.ios.deployment_target = "6.0"
    s.osx.deployment_target = "10.8"

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
    s.license         = {
        :type => 'MIT',
        :text => <<-LICENSE
        MJDijkstra
        
        Author: Dmitri Kozlov
        
        This is free and unencumbered software released into the public domain.
        
        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
        LICENSE
    }
    
    s.author          = "Dmitri Kozlov"
    s.source       = { 
        :git => "https://github.com/SSU-CS-Department/MJDijkstra.git",
        :tag => s.version
    }

    s.source_files  = "Classes", "Classes/**/*.{h,m}"
    
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => 'objective-c++' }

    s.requires_arc = true

end
