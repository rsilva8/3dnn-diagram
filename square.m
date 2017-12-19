function [ h ] = square( center, width, varargin )
%SQUARE Draw a filled square in 3D.
%   center: x,y,z coords of center
%   width: width
%   varargin: specify additional patch properties
%   
%   h: patch object

h = rect(center,width,width,varargin{:});%'LineWidth',2
%h = fill3(x,y,z,'black',varargin{:});

end

