v=[42,29,2,7,42,48];
N=0;
m4=0;
m5=0;
m6=0;

for i1=1:44
    for i2=(i1+1):45
        for i3=(i2+1):46
            for i4=(i3+1):47
                for i5=(i4+1):48
                    for i6=(i5+1):49
                        N=N+1;
                        vs=sum(v==i1)+sum(v==i2)+sum(v==i3)+sum(v==i4)+sum(v==i5)+sum(v==i6);
                        if vs==4
                            m4=m4+1;
                        end
                        if vs==5
                            m5=m5+1;
                        end
                        if vs==6
                            m6=m6+1;
                        end
                    end
                end
            end
        end
    end
end

disp(N);
disp(m4);
disp(m5); 

