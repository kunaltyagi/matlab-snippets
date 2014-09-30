function [G] = tf_poly(num, den, symbol)
    %% README
    % This function converts 2 symbolic equations into a Transfer function
    % num and den are polynomials in symbolic form using symbol
    % Example:
    % x = sym('x');
    % eq1 = x&2+3;
    % eq2 = x^4+3*x^2+2*x+7;
    % G = tf_poly(eq1, eq2, 'x')
    
    %% Convert from symbol to s domain
    s = tf('s');
    
    eq1_s = strrep(char(num),symbol,'s');
    eq2_s = strrep(char(den),symbol,'s');
    
    G = eval(eq1_s) / eval(eq2_s);

end
