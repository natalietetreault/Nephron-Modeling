clear all;
Parameters

global C0 Fna Q1_0 alpha C_star L;
%% Without Feedback
x=0:0.1:L;

C1=conc1(x);
figure(1)
plot(x,C1);
xlabel('x (mm)','FontSize',16); ylabel('[Na]','FontSize',16); title('Descending Loop of Henle Concentration','FontSize',16)

C2=Conc2(x);
figure(2)
plot(x,C2);
xlabel('x (mm)','FontSize',16); ylabel('[Na]','FontSize',16); title('Ascending Loop of Henle Concentration','FontSize',16)

figure(3)
plot([C1 flip(C2)])
ylabel('[Na]','FontSize',16); title('Concentration Through Loop of Henle','FontSize',16);
xticks([]);
%% With Juxtaglomerular Feedback
    