% A function to calculate the greatest euclidean distance between
% consecutive points generated by the ginger function
function dist = ginger_dist(x0,y0,N)
    
    % Create the list of points for measurement on
    points = ginger(x0,y0,N);
    
    % Create an empty array to store the distances between consecutive
    % points
    dist = [];
    
    % A for loop to iterate over the pairs and add the distance between
    % them to the array
    for i=1:N-1
        dist = [dist, sqrt((points(i+1,1)-points(i,1)).^2 + (points(i+1,2)-points(i,2)).^2)];
    end
    
    % Choose the largest value as the greatest distance
    dist = max(dist);
end