function [ random_number] = random_parameter_picker(lower_bound,upper_bound )
% This function generates a random value between the lower and the upper
% bounds. 

random_number = lower_bound+(upper_bound-lower_bound)*rand(1,1);

end

