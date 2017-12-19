function [ h ] = square( center, width, varargin )
%SQUARE Draw a filled square in 3D.
%   center: x,y,z coords of center
%   width: width
%   varargin: specify additional patch properties
%   
%   h: patch object
l = width/2;
x = [-l l l -l] + center(1);
y = [-l -l l l] + center(2);
z = zeros(1,numel(x)) + center(3);

h = fill3(x,y,z,'black',varargin{:});

end

