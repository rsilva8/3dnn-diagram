function [ h ] = circle( center, radius, varargin )
%CIRCLE Draw a filled circle (disk) in 3D.
%   center: x,y,z coords of center
%   radius: circle radius
%   varargin: specify additional patch properties
%   
%   h: patch object

res = 0.01;
theta = -pi:res:pi;
x = radius*cos(theta) + center(1);
y = radius*sin(theta) + center(2);
z = zeros(1,numel(x)) + center(3);

h = fill3(x,y,z,'white',varargin{:});

end

