function draw_3dnet(cell_map, connections)
clf
[L,M] = size(cell_map);
for ll = 1:L
    for mm = 1:M
        if cell_map(ll,mm)
            cell_group(mm,ll,cell_map(ll,mm),'LineWidth',2);
        end
    end
    for cc = 1:length(connections)
        if connections{cc}{2}(1) == ll
            num_cells_in = cell_map(connections{cc}{2}(1),connections{cc}{1}(1));
            num_cells_out = cell_map(connections{cc}{2}(2),connections{cc}{1}(2));
            weights(connections{cc}{[3,1,2]},[num_cells_in num_cells_out])
        end
    end
end
axis equal
set(gca,'YDir','reverse')