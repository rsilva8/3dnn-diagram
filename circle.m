function [ h ] = circle( center, diam, cix, varargin )
%CIRCLE Draw a filled circle (disk) in 3D.
%   center: x,y,z coords of center
%   diam: circle diameter
%   cix: cell array of numbers, used for indexing colors
%   varargin: specify additional patch properties
%   
%   h: patch object

res = 0.01;
theta = -pi:res:pi;
radius = diam/2;
x = radius*cos(theta) + center(1);
y = radius*sin(theta) + center(2);
z = zeros(1,numel(x)) + center(3);

if iscell(cix)
    h = fill3(x,y,z,color(cix{:}),varargin{:});
else
    h = fill3(x,y,z,'white',varargin{:});
end

end

