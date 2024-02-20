clc; clear all;
%% Cdd,Cgd,Csd,Cbd 
Vd=-1.3:0.01:1.3;%1;
Vg=0.7;%0.1:0.1:0.7;%
Vs=0;
Vb=0.1;%:0.1:0.5;
W=8e-6;%:1e-9:10e-6;
L=1e-6;%:1e-9:2e-6;
% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
for L=1e-6:2e-6:9e-6;
%     create Legend
Legnd=sprintf('L=%sum',num2str(L/1E-6));
[Ids,Vth,Qd, Qg, Qs, Qb,Qd_overlap, Qg_overlap, Qs_overlap] = N_18_MM_V2_C(Vd,Vg,Vs,Vb,W,L);
del_Qd=diff(Qd);
del_Qg=diff(Qg);
del_Qs=diff(Qs);
del_Qb=diff(Qb);
del_Vd=diff(Vd);
Cdd=(del_Qd./del_Vd).*1e15;
Cgd=(del_Qg./del_Vd).*1e15;
Csd=(del_Qs./del_Vd).*1e15;
Cbd=(del_Qb./del_Vd).*1e15;
plot(Vd(1:length(Vd)-1),Cgd,'Parent',axes1,'Color',[rand() rand() rand()],'LineWidth',1.5,'DisplayName',Legnd);
grid on;
hold on;
xlabel('Vds');
ylabel('Cgd(fF)');
title('Cgd Vs Vds for different L for NMOS');
end

legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.761684981684982 0.164296998420225 0.117582417582418 0.232227488151659]);

%% Cdg,Cgg,Csg,Cbg 
Vd=1;
Vg=-1.1:0.01:1.1;%0.7;%
Vs=0;
Vb=0.1;%:0.1:0.5;
W=8e-6;%:1e-9:10e-6;
L=1e-6;%:1e-9:2e-6;
% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
for L=1e-6:2e-6:9e-6
%     create Legend
Legnd=sprintf('L=%sum',num2str(L/1E-6));
[Ids,Vth,Qd, Qg, Qs, Qb,Qd_overlap, Qg_overlap, Qs_overlap] = N_18_MM_V2_C(Vd,Vg,Vs,Vb,W,L);
del_Qd=diff(Qd);
del_Qg=diff(Qg);
del_Qs=diff(Qs);
del_Qb=diff(Qb);
del_Vg=diff(Vg);
Cdg=(del_Qd./del_Vg).*1e15;
Cgg=(del_Qg./del_Vg).*1e15;
Csg=(del_Qs./del_Vg).*1e15;
Cbg=(del_Qb./del_Vg).*1e15;
plot(Vg(1:length(Vg)-1),Cdg,'Parent',axes1,'Color',[rand() rand() rand()],'LineWidth',1.5,'DisplayName',Legnd);
grid on;
hold on;
xlabel('Vds');
ylabel('Cdg(fF)');
title('Cdg Vs Vgs for different L for NMOS');
end

legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.201684981684982 0.164296998420225 0.117582417582418 0.232227488151659]);

%% Cds,Cgs,Css,Cbs 
Vd=1;
Vg=0.7;%0.7;%
Vs=-0.8:0.01:1.8;
Vb=0.1;%:0.1:0.5;
W=8e-6;%:1e-9:10e-6;
L=1e-6;%:1e-9:2e-6;
% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
for L=1e-6:2e-6:9e-6
%     create Legend
Legnd=sprintf('L=%sum',num2str(L/1E-6));
[Ids,Vth,Qd, Qg, Qs, Qb,Qd_overlap, Qg_overlap, Qs_overlap] = N_18_MM_V2_C(Vd,Vg,Vs,Vb,W,L);
del_Qd=diff(Qd);
del_Qg=diff(Qg);
del_Qs=diff(Qs);
del_Qb=diff(Qb);
del_Vs=diff(Vs);
Cds=(del_Qd./del_Vs).*1e15;
Cgs=(del_Qg./del_Vs).*1e15;
Css=(del_Qs./del_Vs).*1e15;
Cbs=(del_Qb./del_Vs).*1e15;
plot(Vs(1:length(Vs)-1),Cgs,'Parent',axes1,'Color',[rand() rand() rand()],'LineWidth',1.5,'DisplayName',Legnd);
grid on;
hold on;
xlabel('Vds');
ylabel('Cbs(fF)');
title('Cgs Vs Vgs for different L for NMOS');
end

legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.201684981684982 0.164296998420225 0.117582417582418 0.232227488151659]);
%% Cdb,Cgb,Csb,Cbb 
Vd=1;
Vg=0.7;%0.7;%
Vs=0;
Vb=-1:0.01:1;%:0.1:0.5;
W=8e-6;%:1e-9:10e-6;
L=1e-6;%:1e-9:2e-6;
% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
for L=1e-6:2e-6:9e-6;
%     create Legend
Legnd=sprintf('L=%sum',num2str(L/1E-6));
[Ids,Vth,Qd, Qg, Qs, Qb,Qd_overlap, Qg_overlap, Qs_overlap] = N_18_MM_V2_C(Vd,Vg,Vs,Vb,W,L);
del_Qd=diff(Qd);
del_Qg=diff(Qg);
del_Qs=diff(Qs);
del_Qb=diff(Qb);
del_Vb=diff(Vb);
Cdb=(del_Qd./del_Vb).*1e15;
Cgb=(del_Qg./del_Vb).*1e15;
Csb=(del_Qs./del_Vb).*1e15;
Cbb=(del_Qb./del_Vb).*1e15;
plot(Vb(1:length(Vb)-1),Cdb,'Parent',axes1,'Color',[rand() rand() rand()],'LineWidth',1.5,'DisplayName',Legnd);
grid on;
hold on;
xlabel('Vds');
ylabel('Cgb(fF)');
title('Cgb Vs Vbs for different L for NMOS');
end

legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.201684981684982 0.164296998420225 0.117582417582418 0.232227488151659]);

