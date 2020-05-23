function [minn,maxn,gradn] = min_max(u)
minn = min(u);
maxn = max(u);
gradn = grad(u);
end
function a = grad(v)
a = max(v)-min(v);
end