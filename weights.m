function [ h ] = weights( connection, source_nums, layer_nums, nums_cells, varargin )
%INPUT_LAYER Draw an input layer in 3D.
%   connection: 'fully_connected' or cell array {in} = [out1, out2, ...]
%   source_nums: data source numbers [in, out]
%   layer_nums: layer numbers [in out]
%   nums_cells: number of cells in layers [in, out]
%   varargin: specify additional line properties
%   
%   h: line objects

diam = .5;
off = diam;

centers = {[3*(source_nums(1)-1),0,3*(layer_nums(1)-1)],
           [3*(source_nums(2)-1),0,3*(layer_nums(2)-1)]};
h = cell(1,prod(nums_cells));

% Draw weights
if iscell(connection)
    for cc_in = 1:length(connection)
        cc_out = connection{cc_in};
        new_center_in = centers{1} + [0,(cc_in-1)*(diam+off),0];
        new_center_out = centers{2} + [0,(cc_out-1)*(diam+off),0];
        new_centers = [new_center_in;new_center_out];
        
        h = plot3(new_centers(:,1),new_centers(:,2),new_centers(:,3),varargin{:},'Color',color(cc_out),'LineWidth',2);
        hold on
    end
elseif strcmpi(connection,'fully_connected')
    for cc_in = 1:nums_cells(1)
        for cc_out = 1:nums_cells(2)
            new_center_in = centers{1} + [0,(cc_in-1)*(diam+off),0];
            new_center_out = centers{2} + [0,(cc_out-1)*(diam+off),0];
            new_centers = [new_center_in;new_center_out];

            h = plot3(new_centers(:,1),new_centers(:,2),new_centers(:,3),'black',varargin{:});
            hold on
        end
    end
else
    error('Invalid connection parameter')
end

end

