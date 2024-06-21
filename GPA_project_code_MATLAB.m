T = readtable('cleanwholedata1_csv.csv');
b = T{:,1};
P = prctile(b,[25 50 75],1) ;
% 1 is Calculate the 25th, 50th, and 75th percentiles for each column of u
% 1 is Calculate the 25th, 50th, and 75th percentiles for each row of u


econ2010 = readtable('cleanwholedata1_csv.csv','Range','B2:B909');
econ2010con = countlabels(econ2010);

%[counts, gradenames] = groupcounts(T1)
subplot(2,2,1);
pecon = bar(econ2010con{:,1},econ2010con{:,2});
a1 = econ2010con{:,2};
a2 = {};
for i=1:numel(a1)
    a2{i}=num2str(a1(i));
end
text([1:numel(econ2010con{:,2})]',econ2010con{:,2},a2','vert','bottom','horiz','center','FontSize', 12); 
pecon.FaceColor = "#80B3FF";
pecon.EdgeColor = "#80B3FF";
title('ECON 2010');
set(gca,'fontsize',20,'fontweight','bold','color',[0.99,0.98,0.98]);
set(gca,'ylim',[0,300])
xlabel('Grade')
ylabel('Number of students')
set(gcf,'color','w','position',[100,100,900,600]);
h.EdgeColor = 'w';
alpha(.5);
grid on;

% Econ2020
subplot(2,2,2);
econ2020 = readtable('cleanwholedata1_csv.csv','Range','C2:C909');
econ2020con = countlabels(econ2020);
pecon20 = bar(econ2020con{:,1},econ2020con{:,2});
a1 = econ2020con{:,2};
a2 = {};
for i=1:numel(a1)
    a2{i}=num2str(a1(i));
end
text([1:numel(econ2020con{:,2})]',econ2020con{:,2},a2','vert','bottom','horiz','center','FontSize', 12); 

pecon20.FaceColor = "#FF6A6A";
pecon20.EdgeColor = "#FF6A6A";
set(gca,'fontsize',20,'fontweight','bold','color',[0.99,0.98,0.98]);
set(gca,'ylim',[0,300])
title('ECON 2020')
xlabel('Grade')
ylabel('Number of students')
set(gcf,'color','w','position',[100,100,900,600]);
h.EdgeColor = 'w';
alpha(.5);
grid on;

% math1112
subplot(2,2,3);
math1112 = readtable('cleanwholedata1_csv.csv','Range','D2:D909');
math1112con = countlabels(math1112);
pmath1112 = bar(math1112con{:,1},math1112con{:,2});
a1 = math1112con{:,2};
a2 = {};
for i=1:numel(a1)
    a2{i}=num2str(a1(i));
end
text([1:numel(math1112con{:,2})]',math1112con{:,2},a2','vert','bottom','horiz','center','FontSize', 12); 
pmath1112.FaceColor = "#FFB90F";
pmath1112.EdgeColor = "#FFB90F";
title('MATH 1112')
set(gca,'fontsize',20,'fontweight','bold','color',[0.99,0.98,0.98]);
set(gca,'ylim',[0 300]);
xlabel('Grade')
ylabel('Number of students')
set(gcf,'color','w','position',[100,100,900,600]);
h.EdgeColor = 'w';
alpha(.5);
grid on;

% math2510
subplot(2,2,4);
math2510 = readtable('cleanwholedata1_csv.csv','Range','E2:E909');
math2510con = countlabels(math2510);
pmath2510 = bar(math2510con{:,1},math2510con{:,2});
a1 = math2510con{:,2};
a2 = {};
for i=1:numel(a1)
    a2{i}=num2str(a1(i));
end
text([1:numel(math2510con{:,2})]',math2510con{:,2},a2','vert','bottom','horiz','center','FontSize', 12); 

pmath2510.FaceColor = "#9370DB";
pmath2510.EdgeColor = "#9370DB";
title('MATH 2510')
set(gca,'fontsize',20,'fontweight','bold','color',[0.99,0.98,0.98]);
set(gca,'ylim',[0,300])
xlabel('Grade')
ylabel('Number of students')
set(gcf,'color','w','position',[100,100,900,600]);
h.EdgeColor = 'w';
alpha(.5);
grid on;

