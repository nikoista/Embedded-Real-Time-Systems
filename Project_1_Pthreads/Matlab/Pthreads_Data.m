
%% 30000   5000
TestA11=[0.001;0.009;11.485;35.995;36.130;11.197;24.920;36.451;14.424;2.823];%%ok
TestA12=[0.0001;0.022;0.045;0.013;0.008;0.016;0.031;0.011;0.026;0.525;]; %% queue empty
TestA22=[0.081;0.051;0.366;0.590;0.035;0.083;0.202;0.097;0.455;0.260];%%2
TestA42=[8.3;8.4;1.2;7;11.9;12.5;11;10;13;13];%%4
TestA44=[0.031;0.031;0.068;0.017;0.024;0.039;0.025;0.036;0.047;0.034];%%3
TestA62=[3;4.8;3.2;7.5;7;8.7;5.8;8.1;4.9;9];
TestA64=[8;2;4.5;4.3;3.6;7;9;3.9;2;2];
TestA66=[0.038;0.024;0.052;0.027;0.020;0.017;0.009;0.015;0.013;0.015]; %%1 META 8/8 < 100/100 < 20/20 < 10/10
TestA82=[3.8;3;3.6;1.4;2.9;6.6;1;0.75;5.9;2];
TestA84=[2;1.2;6.4;7.3;2.8;7.5;4.3;1.8;7.2;0.8];
TestA86=[0.6;3.7;5.1;2.8;5;3.3;2.1;1.26;1.8;0.8];
TestA88=[0.016;0.036;0.015;0.036;0.022;0.002;0.021;0.013;0.033;0.019];
%%        !!4 times
TestA100100=[0.002;0.038;0.001;0.0001];
TestA1010=[0.192;0.103;0.138;0.045];
TestA102=[6;6.8;4.835;5.751];
TestA202=[3.552;4.188;0.526;2.396];
TestA2020=[0.023;0.111;0.003;0.001];
%%%%Data30k5k=table(TestA11,TestA12,TestA22,TestA42,TestA44,TestA62,TestA64,TestA66,TestA82,TestA84,TestA86,TestA88,numberOf10);
%%%%ExplicitData30k5k=table(TestA102,TestA1010,TestA202,TestA2020,TestA100100,numberOf4);
%%%%TestA=[TestA11;TestA12;TestA22;TestA42;TestA44;TestA62;TestA64;TestA66;TestA82;TestA84;TestA86;TestA88];
%%
ZA11=datastats(TestA11);
ZA12=datastats(TestA12);
ZA22=datastats(TestA22);
ZA42=datastats(TestA42);
ZA44=datastats(TestA44);
ZA62=datastats(TestA62);
ZA64=datastats(TestA64);
ZA66=datastats(TestA66);
ZA82=datastats(TestA82);
ZA84=datastats(TestA84);
ZA86=datastats(TestA86);
ZA88=datastats(TestA88);

ZA100100=datastats(TestA100100);
ZA1010=datastats(TestA1010);
ZA102=datastats(TestA102);
ZA202=datastats(TestA202);
ZA2020=datastats(TestA2020);
%%

%% 3000 500  !!!! 10 times
TestB11=[21.363;7.731;30.624;7.452;72.122;34.900;1.279;40.044;73.140;42.385];
TestB12=[0.053;0.210;0.115;0.237;0.657;0.164;0.490;0.196;0.185;0.140];
TestB22=[0.191;0.383;0.267;0.207;0.514;0.236;0.202;0.684;0.081;0.402];
TestB42=[2.3;1.2;0.8;1.5;0.9;0.9;0.7;1.2;0.7;1.2];
TestB44=[0.215;0.066;0.096;0.119;0.157;0.036;0.236;0.06;0.08;0.08];
TestB62=[4.6;7;7.3;2.6;7.2;9;6.8;7;4.7;6.3];
TestB64=[0.377;0.597;1.6;3.6;0.284;0.401;0.251;2.18;0.766;4];
TestB66=[0.091;0.065;0.038;0.232;0.001;0.07;0.043;0.062;0.04;0.001]; %% 1
TestB82=[0.887;3.284;2.4;4.775;0.105;6.7;1.195;2.9;0.181;2.254];
TestB84=[2.697;10.41;2.262;1.972;3.078;1.076;2.798;2.759;3.475;7.420];
TestB86=[10.024;3.204;6.208;6.868;1.986;3.199;0.977;5.960;4.033;6.930];
TestB88=[0.148;0.286;0.090;0.081;0.085;0.096;0.056;0.054;0.0119;0.060];
%%
ZB11=datastats(TestB11);
ZB12=datastats(TestB12);
ZB22=datastats(TestB22);
ZB42=datastats(TestB42);
ZB44=datastats(TestB44);
ZB62=datastats(TestB62);
ZB64=datastats(TestB64);
ZB66=datastats(TestB66);
ZB82=datastats(TestB82);
ZB84=datastats(TestB84);
ZB86=datastats(TestB86);
ZB88=datastats(TestB88);
%%
%%
%%!!4 times
TestB100100=[0.116;0.103;0.0101;0.0701];
TestB1010=[0.063;0.077;0.044;0.013];
TestB102=[8.017;7.825;7.928;5.618];
TestB202=[2.622;4.112;0.603;4.799];
TestB2020=[0.138;0.021;0.022;0.068];
%%        !!4 times
ZB100100=datastats(TestB100100);
ZB1010=datastats(TestB1010);
ZB102=datastats(TestB102);
ZB202=datastats(TestB202);
ZB2020=datastats(TestB2020);
%%
%%Data3k500=table(TestB11,TestB12,TestB22,TestB42,TestB44,TestB62,TestB64,TestB66,TestB82,TestB84,TestB86,TestB88,numberOf10);
%%ExplicitData30k5k=table(TestB102,TestB1010,TestB202,TestB2020,TestB100100,numberOf4);

%% MIKRO LOOP MIKRO QUEUE 30 50 !!!!!!10 times  queue full merikes fores
TestLL42=[8.17;7.53;8.9;9.8;10.8;7.18;9.012;75;10.5;18.754]; 
TestLL22=[1.43;2.86;1.4;1.7;3.9;0.77;2.4;10;4.1;2];
TestLL44=[2;1.5;2.1;2.7;1;15;2.6;11.5;3;2];       %  times xefeugan merikes fores
TestLL66=[2.5;3.7;2.8;2;1.7;1.6;1.8;14;18;3.4];
%% MEGALO LOOP MIKRO QUEUE 300000 50 % queue full polles fores
TestML22=[0.6;2.6;2.7;1.032];
TestML42=[0.307;0.5;0.5;0.848];        %% 111111
TestML44=[0.09;0.7;0.081;0.007];
TestML66=[0.00001;0.003;0.010;0.013];  %% POLU KALO
%% MEGALO LOOP MEGALO QUEUE % stathero sthn arxh meta queue full
TestMM44=[0.011;0.004];
TestMM42=[0.014;0.003];
TestMM22=[0.029;0.005];         %!!!!
TestMM66=[0.0011;0.0014];
%%MIKRO LOOP MEGALO QUEUE %% queue full
TestLM44=[17;19;24;2;3;47];
TestLM42=[13;21;22;17;19;15];
TestLM22=[4;1.2;0.9;22;2.6;8];
TestLM66=[1.8;2.2;1.1;1.7;2.2;1.5];         %% STATHERO
%%
clc

A_STATS=[ZA11;ZA12;ZA22;ZA42;ZA44;ZA62;ZA64;ZA66;ZA82;ZA84;ZA86;ZA88;ZA100100;ZA1010;ZA102;ZA202;ZA2020];
B_STATS=[ZB11;ZB12;ZB22;ZB42;ZB44;ZB62;ZB64;ZB66;ZB82;ZB84;ZB86;ZB88;ZB100100;ZB1010;ZB102;ZB202;ZB2020];




for i=1:17
MaxA(i)=[A_STATS(i).max];
MinA(i)=[A_STATS(i).min];

MeanA(i)=[A_STATS(i).mean];
MedianA(i)=[A_STATS(i).median];
RangeA(i)=[A_STATS(i).range];
StdA(i)=[A_STATS(i).std];
CV_A(i)=(StdA(i)/MeanA(i))*100;
if CV_A(i) > 100 
    CV_A(i)=100;
end
if i>12
    TimesA(i)=4;
end
end


%

figure('Name','Max');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MaxA);
title('STATISTICS FOR 30000 LOOPS AND 5000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Maxes of Waiting Times in (MS)') ;
figure('Name','Min');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MinA);
title('STATISTICS FOR 30000 LOOPS AND 5000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Mins of Waiting Times in (MS)') ;
figure('Name','Means');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MeanA);
title('STATISTICS FOR 30000 LOOPS AND 5000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Means of Waiting Times in (MS)') ;
figure('Name','Medians');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MedianA);
title('STATISTICS FOR 30000 LOOPS AND 5000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Medians of Waiting Times in (MS)') ;
figure('Name','Range');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,RangeA);
title('STATISTICS FOR 30000 LOOPS AND 5000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Range of Waiting Times in (MS)');
figure('Name','Standar Deviation');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,StdA);
title('STATISTICS FOR 30000 LOOPS AND 5000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('StD of Waiting Times in (MS)') ;
figure('Name','CV');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,CV_A);
title('STATISTICS FOR 30000 LOOPS AND 5000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('CV % of Waiting Times in (MS)') ;
%





for i=1:17
MaxB(i)=[B_STATS(i).max];
MinB(i)=[B_STATS(i).min];
MeanB(i)=[B_STATS(i).mean];
MedianB(i)=[B_STATS(i).median];
RangeB(i)=[B_STATS(i).range];
StdB(i)=[B_STATS(i).std];
CV_B(i)=(StdB(i)/MeanB(i))*100;
if CV_B(i) > 100 
    CV_B(i)=100;
end
if i>12
    TimesB(i)=4;
end
end
%
figure('Name','Max');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MaxB);
title('STATISTICS FOR 3000 LOOPS AND 500 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Maxes of Waiting Times in (MS)') ;
figure('Name','Min');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MinB);
title('STATISTICS FOR 3000 LOOPS AND 500 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Mins of Waiting Times in (MS)') ;
figure('Name','Means');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MeanB);
title('STATISTICS FOR 3000 LOOPS AND 500 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Means of Waiting Times in (MS)') ;
figure('Name','Medians');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,MedianB);
title('STATISTICS FOR 3000 LOOPS AND 500 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Medians of Waiting Times in (MS)') ;
figure('Name','Range');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,RangeB);
title('STATISTICS FOR 3000 LOOPS AND 500 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Range of Waiting Times in (MS)');
figure('Name','Standar Deviation');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,StdB);
title('STATISTICS FOR 3000 LOOPS AND 500 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('StD of Waiting Times in (MS)') ;
figure('Name','CV');
X = categorical({'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
X = reordercats(X,{'1/1';'1/2';'2/2';'4/2';'4/4';'6/2';'6/4';'6/6';'8/2';'8/4';'8/6';'8/8';'100/100';'10/10';'10/2';'20/2';'20/20'});
bar(X,CV_B);
title('STATISTICS FOR 3000 LOOPS AND 500 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('CV % of Waiting Times in (MS)') ;
%

LL_STATS=[datastats(TestLL22);datastats(TestLL42);datastats(TestLL44);datastats(TestLL66)];
ML_STATS=[datastats(TestML22);datastats(TestML42);datastats(TestML44);datastats(TestML66)];
LM_STATS=[datastats(TestLM22);datastats(TestLM42);datastats(TestLM44);datastats(TestLM66)];
MM_STATS=[datastats(TestMM22);datastats(TestMM42);datastats(TestMM44);datastats(TestMM66)];


for i=1:4
MaxLL(i)=[LL_STATS(i).max];
MinLL(i)=[LL_STATS(i).min];
MeanLL(i)=[LL_STATS(i).mean];
MedianLL(i)=[LL_STATS(i).median];
RangeLL(i)=[LL_STATS(i).range];
StdLL(i)=[LL_STATS(i).std];
CV_LL(i)=(StdLL(i)/MeanLL(i))*100;
if CV_LL(i) > 100 
    CV_LL(i)=100;
end
end


figure('Name','Mean');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,MeanLL);
title('STATISTICS FOR 30 LOOPS AND 50 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Means of Waiting Times in (MS)') ;

figure('Name','StDeviations');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,StdLL);
title('STATISTICS FOR 30 LOOPS AND 50 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('StDevations of Waiting Times in (MS)') ;

figure('Name','CVs');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,CV_LL);
title('STATISTICS FOR 30 LOOPS AND 50 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('CVs of Waiting Times in (MS)') ;

for i=1:4
MaxML(i)=[ML_STATS(i).max];
MinML(i)=[ML_STATS(i).min];
MeanML(i)=[ML_STATS(i).mean];
MedianML(i)=[ML_STATS(i).median];
RangeML(i)=[ML_STATS(i).range];
StdML(i)=[ML_STATS(i).std];
CV_ML(i)=(StdML(i)/MeanML(i))*100;
if CV_ML(i) > 100 
    CV_ML(i)=100;
end
end

figure('Name','Mean');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,MeanML);
title('STATISTICS FOR 300000 LOOPS AND 50 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Means of Waiting Times in (MS)') ;

figure('Name','StDeviations');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,StdML);
title('STATISTICS FOR 300000 LOOPS AND 50 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('StDevations of Waiting Times in (MS)') ;

figure('Name','CVs');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,CV_ML);
title('STATISTICS FOR 300000 LOOPS AND 50 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('CVs of Waiting Times in (MS)') ;

for i=1:4
MaxLM(i)=[LM_STATS(i).max];
MinLM(i)=[LM_STATS(i).min];
MeanLM(i)=[LM_STATS(i).mean];
MedianLM(i)=[LM_STATS(i).median];
RangeLM(i)=[LM_STATS(i).range];
StdLM(i)=[LM_STATS(i).std];
CV_LM(i)=(StdLM(i)/MeanLM(i))*100;
if CV_LM(i) > 100 
    CV_LM(i)=100;
end
end


figure('Name','Mean');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,MeanLM);
title('STATISTICS FOR 30 LOOPS AND 50000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Means of Waiting Times in (MS)') ;

figure('Name','StDeviations');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,StdLM);
title('STATISTICS FOR 30 LOOPS AND 50000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('StDevations of Waiting Times in (MS)') ;

figure('Name','CVs');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,CV_LM);
title('STATISTICS FOR 30 LOOPS AND 50000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('CVs of Waiting Times in (MS)') ;


for i=1:4
MaxMM(i)=[MM_STATS(i).max];
MinMM(i)=[MM_STATS(i).min];
MeanMM(i)=[MM_STATS(i).mean];
MedianMM(i)=[MM_STATS(i).median];
RangeMM(i)=[MM_STATS(i).range];
StdMM(i)=[MM_STATS(i).std];
CV_MM(i)=(StdMM(i)/MeanMM(i))*100;
if CV_MM(i) > 100 
    CV_MM(i)=100;
end
end

figure('Name','Mean');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,MeanMM);
title('STATISTICS FOR 300000 LOOPS AND 50000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('Means of Waiting Times in (MS)') ;

figure('Name','StDeviations');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,StdMM);
title('STATISTICS FOR 300000 LOOPS AND 50000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('StDevations of Waiting Times in (MS)') ;

figure('Name','CVs');
X = categorical({'4/4';'4/2';'2/2';'6/6'});
X = reordercats(X,{'4/4';'4/2';'2/2';'6/6'});
bar(X,CV_MM);
title('STATISTICS FOR 300000 LOOPS AND 50000 QUEUESIZE');
xlabel('Producer/Consumer') ;
ylabel('CVs of Waiting Times in (MS)') ;

