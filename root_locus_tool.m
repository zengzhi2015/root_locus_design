function root_locus_tool( G )
%ROOT_LOCUS_TOOL Summary of this function goes here
%   Detailed explanation goes here
clc
close all
%%
[rootlocus,gains] = rlocus(G);
%%
h = rlocusplot(G);
p = getoptions(h); % Get options for plot.
p.Title.String = 'Root Locus'; % Change title in options.
p.Grid = 'on';
setoptions(h,p); % Apply options to plot.
hold on
Ax = h.getaxes;
daspect([1 1 1])
a = tic; % start timer
[~,numpoints] = size(rootlocus);
for k = 1:numpoints
    hs = scatter(Ax,real(rootlocus(:,k)),imag(rootlocus(:,k)),'filled');
    drawnow % update screen
    while true
        if toc(a) > (1/10) % update screen every 1/5 seconds
            hs.delete()
            a = tic; % reset timer after updating
            break
        end
    end
end
hold off
%%

while true
    clc
    disp('Type in Gain to see rough root locations, input an negative value to quit.')
    w = input('Gain: ');
    if w < 0
        disp('Negative Gain! Exit!')
        break
    else
        [~,index] = min(abs(gains - w));
        if w > max(gains(gains ~= Inf))
            [~,index] = max(gains);
        end
        hold on
        hs.delete()
        if w <= max(gains(gains ~= Inf))
            hs = scatter(Ax,real(rootlocus(:,index)),imag(rootlocus(:,index)),'filled');
        else
            hs = scatter(Ax,real(rootlocus(:,index)),imag(rootlocus(:,index)),'filled','r');
        end
    end
end
%%
clear
clc
close all

end

