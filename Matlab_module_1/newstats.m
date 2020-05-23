function [avg,med] = newstats(u)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = length(u);
avg = mean(u,n);
med = median(u,n);
function a = mean(v,n)
a = sum(v)/n
function m = median(v,n)
w = sort(v)
if rem(n,2) ==1
    m = w((n+1)/2);
else
    m = (w(n/2)+w(n/2+1))/2;
end
