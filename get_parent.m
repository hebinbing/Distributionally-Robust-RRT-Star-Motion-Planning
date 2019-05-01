function parent_node = get_parent(node, T, nodes, edges)
% Given node v, this function finds the parent node u of node v such that 
% (u,v) belongs to the edge set.

    edges = T.edges;    
    if node == T.NodeMeans(1,:) % rootnode has no parent - It is its own parent
        parent_node = node;        
    else
        for i = 1:length(edges(:,1)) 
            ith_edge  = edges{i};
            edge_from = ith_edge(:,1);
            edge_to   = ith_edge(:,2);               
            if node == edge_to 
                parent_node = edge_from; 
                break;
            end
        end   
    end 
    parent_node = parent_node';
end

