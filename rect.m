function [ h ] = rect( center, side1, side2, cix, varargin )
%RECT Draw a filled rectangle in 3D.
%   center: x,y,z coords of center
%   side1: width along side 1
%   side2: width along side 2
%   cix: cell array of numbers, used for indexing colors
%   varargin: specify additional patch properties
%   
%   h: patch object
l1 = side1/2;
l2 = side2/2;
x = [-l1 l1 l1 -l1] + center(1);
y = [-l2 -l2 l2 l2] + center(2);
z = zeros(1,numel(x)) + center(3);

if iscell(cix)
    h = fill3(x,y,z,color(cix{:}),varargin{:});
else
    h = fill3(x,y,z,'white',varargin{:});
end

end

