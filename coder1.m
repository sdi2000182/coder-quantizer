function z = coder1(y,L)
	y_un = unique(y); 
	z = y; 
	for i = 1 : length(y)
	    a = find(y_un == y(i)); 
	    b = dec2base(a-1,2)-'0'; 
	    c1 = polyval(b,10); 
        z1=polyval(b,2);
        c(i)=c1 %exei tis binary times
	    z(i) = z1; %kanei to plot
    end
end
%erwthma 2 kai 3