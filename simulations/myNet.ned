//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package _4nodesnet.simulations;
import _4nodesnet.Node;


network MyNet
{
    @display("bgb=613,290");
    submodules:
        node1: Node {
            @display("p=386,227");
        }
        node2: Node {
            @display("p=386,85");
        }
        node3: Node {
            @display("p=151,85");
        }
        node4: Node {
            @display("p=151,227");
        }

    connections:
        node1.out --> {  delay = 100ms; } --> node2.in;
        node2.out --> {  delay = 100ms; } --> node3.in;
        node3.out --> {  delay = 100ms; } --> node4.in;
        node4.out --> {  delay = 100ms; } --> node1.in;

}
