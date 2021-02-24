s = rng;
p1 = normrnd(3,100,[1,100]);
p2 = normrnd(2,10,[1,100]);
p = p1 + p2;
p_median = median(p) % Median of sequence
p_range = range(p)  % Range of values

n  = 10; %for histogram, number of row
subplot(2,2,1)
histogram(p1,n,'FaceColor','b')

subplot(2,2,2)
histogram(p2,n,'FaceColor','y')

subplot(2,2,3)
histogram(p,n,'FaceColor','g')

p_expected_value = mean(p)
p_dispersion = var(p)