function rgb = color(index)

colors = [141,211,199;
    255,255,179;
    190,186,218;
    251,128,114;
    128,177,211;
    253,180,98;
    179,222,105;
    252,205,229;
    217,217,217;
    188,128,189;
    204,235,197;
    255,237,111];

rgb = colors(index,:)./255;

end