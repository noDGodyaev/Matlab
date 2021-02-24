S=18;
M=0;
for i1=1:6
    for i2=1:6
        for i3=1:6
            for i4=1:6
                for i5=1:6
                    if (i1+i2+i3+i4+i5)==S
                        M=M+1;
                    end
                end
            end
        end
    end
end
P=M/6^5;
disp(M);
disp(P);