function draw_3dnet(cell_map, connections)
clf
[L,M] = size(cell_map);
for ll = 1:L
    for mm = 1:M
        if cell_map(ll,mm)
            for cc = 1:length(connections)
                if connections{cc}{1}(1) == mm && ...
                   connections{cc}{2}(1) == ll % outbound
                    if connections{cc}{2}(2) > ll
                        cix = connections{cc}{3};
                        break % break off at first outbound occurence
                    end
                elseif connections{cc}{1}(2) == mm && ...
                       connections{cc}{2}(2) == ll % inbound
                    if connections{cc}{2}(1) < ll
                        cix = mat2cell(1:cell_map(ll,mm),1,ones(1,cell_map(ll,mm)));
                    end
                end
            end
            
            cell_group(mm,ll,cell_map(ll,mm),cix);
        end
    end
    for cc = 1:length(connections)
        if connections{cc}{2}(1) == ll
            num_cells_in = cell_map(connections{cc}{2}(1),connections{cc}{1}(1));
            num_cells_out = cell_map(connections{cc}{2}(2),connections{cc}{1}(2));
            weights(connections{cc}{[3,1,2]},[num_cells_in num_cells_out]);
        end
    end
end
axis equal
set(gca,'YDir','reverse')
set(gca,'Projection','perspective',...
    'CameraViewAngle',8.390551937626768,...
    'CameraPosition',[-25.80312933155416,62.77920374095839,22.3598933527743])
end