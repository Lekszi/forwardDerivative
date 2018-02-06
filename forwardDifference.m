function [df] = forwardDifference(funFile,x,h,param)
% df = forwardDifference(funFile,x,h)
% Compute the derivative of a function defined in funFile at points
% x = [x1,...,xn] using a seocnd order forward difference with difference h
% param is a structure that contains data to be used by funFile
% to evaluate the f you use f = funFile(x,param)

for i = (1:length(x))

f = funFile(x,param);

df = ((-3*f(x(i)+h, param)) + (4*f(x(i))) - f(x(i) +(2*h)))/(2*h);

end




