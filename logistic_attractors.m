xvals = zeros(2,length(0:.01:4));

for beta = 0:.001:4
    beta
    xold = 0.5;
    %transient
    for i = 1:20000
         xnew = beta*(xold - xold^2);
        xold = xnew;
    end
    % steady state
    xss = xnew;
    for i = 1:10000
        xnew = beta*(xold - xold^2);
        xold = xnew;
        % add beta and xnew values to xvals matrix
        xvals(1, length(xvals)+1) = beta;
        xvals(2, length(xvals)) = xnew;
        if (abs(xnew-xss)< .0001)
            break
        end
                
    end
       
end
subplot(1,2,1)
plot(xvals(2,:),4 - xvals(1,:), '.', "LineWidth", .08, "MarkerSize", 1.2, 'Color', [0, 0.5, 0])
xlabel('Beta')
ylabel("X")
%title("Attracting sets of the logistic map for varying parameter Beta")
set(gca, 'yTick', [0 0.5 1 1.5 2.0 2.5 3.0 3.5 4.0], 'yTickLabel', [4.0 3.5 3.0 2.5 2.0 1.5 1.0 0.5 0])
%ylim([0 1])
subplot(1,2,2)
plot(xvals(2,:),4 - xvals(1,:), '.', "LineWidth", .08, "MarkerSize", 1.2, 'Color', [0, 0.5, 0])
xlabel('Beta')
ylabel("X")

%set(gca, 'yTick', [0 0.5 1 1.5 2.0 2.5 3.0 3.5 4.0], 'yTickLabel', [4.0 3.5 3.0 2.5 2.0 1.5 1.0 0.5 0])
ylim([0 1])
set(gca, 'yTick', [0 1], 'yTickLabel', [4 3])
sgtitle("Attracting sets of the logistic map for varying parameter Beta")

