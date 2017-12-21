function [ h ] = square( center, width, cix, varargin )
%SQUARE Draw a filled square in 3D.
%   center: x,y,z coords of center
%   width: width
%   cix: cell array of numbers, used for indexing colors
%   varargin: specify additional patch properties
%   
%   h: patch object

h = rect(center,width,width,cix,varargin{:});%'LineWidth',2
%h = fill3(x,y,z,'black',varargin{:});

end

