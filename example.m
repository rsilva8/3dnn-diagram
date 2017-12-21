M = 3; % Number of sources (datasets)
L = 3; % Number of layers
cell_map = sparse(L,M);
cell_map(1,1) = 6; % Number of cells in layer 1, source 1
cell_map(1,2) = 7; % Number of cells in layer 1, source 2
cell_map(1,3) = 10; % Number of cells in layer 1, source 3
cell_map(2,1) = 5;
cell_map(2,2) = 6;
cell_map(2,3) = 7;
cell_map(3,2) = 10;

connections{1} = {[1 1], [1 2], 'fully_connected'}; % From source 1 to source 1, layer 1 to layer 2
connections{2} = {[2 2], [1 2], 'fully_connected'};
connections{3} = {[3 3], [1 2], 'fully_connected'};
connections{4} = {[1 2], [2 3], {1,2,2,3,4}};
connections{5} = {[2 2], [2 3], {2,4,4,5,6,7}};
connections{6} = {[3 2], [2 3], {1,2,4,5,8,9,10}};

figure
draw_3dnet(cell_map, connections);