function [ h ] = layer( source_num, layer_num, num_cells, varargin )
%INPUT_LAYER Draw an input layer in 3D.
%   source_num: data source number
%   layer_num: layer number
%   num_cells: numer of cells in layer
%   varargin: specify additional patch properties
%   
%   h: patch objects

diam = .7;
off = diam/2;
width = diam/sqrt(2);
center = [3*(source_num-1),0,3*(layer_num-1)];
h = cell(1,num_cells);

% Draw layer rectangle
side1 = 1.5*diam;
side2 = (num_cells-1)*(diam+off);
center2 = side2/2;
side2 = side2 + (diam+off);
h{1} = rect(center+[0,center2,0],side1,side2,varargin{:});
hold on
% Draw input cells
for cc = 1:num_cells
    new_center = center + [0,(cc-1)*(diam+off),0];
    if layer_num == 1
        h{cc+1} = square(new_center,width,varargin{:},'FaceColor','black');
    else
        h{cc+1} = circle(new_center,diam,varargin{:});
    end
end

end

