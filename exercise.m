Path = [cd,'\'];
[num, Str]=xlsread('1001.xlsx');

i=length(num);
num01=zeros(1,i);num02=zeros(1,i);
num03=zeros(1,i);num04=zeros(1,i);
num05=zeros(1,i);num06=zeros(1,i);
num10=zeros(1,i);num20=zeros(1,i);
num30=zeros(1,i);num40=zeros(1,i);
num50=zeros(1,i);num60=zeros(1,i);
for i=1:64
    a=char(Str{i,2});
    b=char(Str{i,3});
    if  length(Str{i,2})==1
        for  c=1
            d=a(c);
            if d==b
                num01(i)= num(i,6);
            end
        end
        for c=1
            if  d~=b
                num10(i)= num(i,6);
            end
        end
        
    elseif  length(Str{i,2})==2
        for  c=1:2
            d=a(c);
            if d==b
                num02(i)= num(i,6);
                break
            else
                num20(i)= num(i,6);
            end
            
        end
        if num20(i)==num02(i)
            num20(i)=0;
        end
        
    elseif  length(Str{i,2})==3
        for  c=1:3
            d=a(c);
            if d==b
                num03(i)= num(i,6);
                break
            else
                num30(i)= num(i,6);
            end
            
        end
        if num30(i)==num03(i)
            num30(i)=0;
        end
        
    elseif  length(Str{i,2})==4
        for  c=1:4
            d=a(c);
            if d==b
                num04(i)= num(i,6);
            else
                num40(i)= num(i,6);
            end
            
        end
        if num40(i)==num04(i)
            num40(i)=0;
        end
        
    elseif  length(Str{i,2})==5
        for  c=1:5
            d=a(c);
            if d==b
                num05(i)= num(i,6);
                break
            else
                num50(i)= num(i,6);
            end
        end
        if num50(i)==num05(i)
            num50(i)=0;
        end
        
    elseif  length(Str{i,2})==6
        for  c=1:6
            d=a(c);
            if d==b
                num06(i)= num(i,6);
                break
            else
                num60(i)= num(i,6);
            end
            
        end
        if num60(i)==num06(i)
            num60(i)=0;
        end
    end
end

num01(:,all(num01==0,1))=[];
num02(:,all(num02==0,1))=[];
num03(:,all(num03==0,1))=[];
num04(:,all(num04==0,1))=[];
num05(:,all(num05==0,1))=[];
num06(:,all(num06==0,1))=[];
num10(:,all(num10==0,1))=[];
num20(:,all(num20==0,1))=[];
num30(:,all(num30==0,1))=[];
num40(:,all(num40==0,1))=[];
num50(:,all(num50==0,1))=[];
num60(:,all(num60==0,1))=[];

length(num01)+ length(num02) +length(num03)+ length(num04) +length(num05)+ length(num06) +length(num10)+ length(num20)+length(num30)+ length(num40)+length(num50)+length(num60);

mean01=mean(num01);
mean02=mean(num02);
mean03=mean(num03);
mean04=mean(num04);
mean05=mean(num05);
mean06=mean(num06);

mean10=mean(num10);
mean20=mean(num20);
mean30=mean(num30);
mean40=mean(num40);
mean50=mean(num50);
mean60=mean(num60);
mean=[mean01 mean02 mean03 mean04 mean05 mean06;mean10 mean20 mean30 mean40 mean50 mean60];
% mean 第一行是有靶，第二行是无靶