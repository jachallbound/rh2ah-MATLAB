%%% rh2ah.m
% Function to convert relative humidity (rh) to absolute humidity (ah)
% rh = relative humidity in percent (range: 0-1)
% t_c = temperature in celsius
% ah = absolute humidity in g/m^3

function ah = rh2ah(rh, t_c)
    assert(all(rh >= 0 & rh <= 1), "rh2ash() failed: rh must be between 0 and 1");
    ah = zeros(1, length(rh));
    for i = 1:length(ah)
        ah(i) = (2.1667*100*rh(i)*6.12*(10^((7.59*t_c(i))/(t_c(i)+240.73))))/(t_c(i)+273);
    end
end