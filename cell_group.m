function [ h ] = cell_group( source_num, layer_num, num_cells, cix, varargin )
%INPUT_LAYER Draw an input layer in 3D.
%   source_num: data source number
%   layer_num: layer number
%   num_cells: number of cells in layer
%   cix: cell array of numbers, used for indexing colors
%   varargin: specify additional patch properties
%   
%   h: patch objects

diam = .5;
off = diam;
width = diam/sqrt(2);
center = [3*(source_num-1),0,3*(layer_num-1)];
h = cell(1,num_cells+1);

% Draw layer rectangle
side1 = 1.75*diam;
side2 = (num_cells-1)*(diam+off);
center2 = side2/2;
side2 = side2 + (diam+off);
if layer_num == 1
    h{1} = rect(center+[0,center2,0],side1,side2,'Default',varargin{:},'FaceColor',color(3));
else
    h{1} = rect(center+[0,center2,0],side1,side2,'Default',varargin{:});
end
hold on
% Draw input cells
for cc = 1:num_cells
    new_center = center + [0,(cc-1)*(diam+off),.005 *center(3)];
    if layer_num == 1
        h{cc+1} = square(new_center,width,'Default',varargin{:},'FaceColor','black');
    else
        h{cc+1} = circle(new_center,diam,cix(cc),varargin{:});
    end
end

end

