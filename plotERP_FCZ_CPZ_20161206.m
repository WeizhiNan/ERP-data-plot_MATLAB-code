    set(0,'DefaultAxesColorOrder',[0 0 1;1 0 0],...
          'DefaultAxesLineStyleOrder','-|--')
     
    % x axis range; sample rate: 2 ms.
     x=[-200:2:800]; 
     
%% [1],[2],3-7:10_unLikely;8-12:1_0Up;13-17:2_0Down;18-23:3_180Up;24-28:4_180Down;
%%% 28-32:0; 33-37:180; 38-42:Up; 43-47:Down; 48-52:Likely
%%% FZ,FCZ,CZ,CPZ,PZ;
%%%%%-FZ
    y1=[data(8).data data(13).data data(18).data data(23).data]; %0Up 0Down 180Up 180Down
    y2=[data(38).data data(43).data ]; % Up Down
    y3=[data(28).data data(33).data ]; % CannonAngle 0 180
    y4=[data(48).data data(3).data ]; % Likely unlikely
%%%%%N200-FCZ
    y5=[data(9).data data(14).data data(19).data data(24).data]; %0Up 0Down 180Up 180Down
    y6=[data(39).data data(44).data ]; % Up Down
    y7=[data(29).data data(34).data ]; % CannonAngle 0 180
    y8=[data(49).data data(4).data ]; % Likely unlikely
%%%%%N200-CZ
    y9=[data(10).data data(15).data data(20).data data(25).data]; %0Up 0Down 180Up 180Down
    y10=[data(40).data data(45).data ]; % Up Down
    y11=[data(30).data data(35).data ]; % CannonAngle 0 180
    y12=[data(50).data data(5).data ]; % Likely unlikely    
%%%%%P300--CPZ
    y13=[data(11).data data(16).data data(21).data data(26).data]; %0Up 0Down 180Up 180Down
    y14=[data(41).data data(46).data ]; % Up Down
    y15=[data(31).data data(36).data ]; % CannonAngle 0 180
    y16=[data(51).data data(6).data ]; % Likely unlikely
%%%%%N200-FCZ
    y17=[data(12).data data(17).data data(22).data data(27).data]; %0Up 0Down 180Up 180Down
    y18=[data(42).data data(47).data ]; % Up Down
    y19=[data(32).data data(37).data ]; % CannonAngle 0 180
    y20=[data(52).data data(7).data ]; % Likely unlikely
    
    
    
%%
    % calculate range for y axis
    ylim = [min([min([y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,y19,y20])]) max([max([y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,y19,y20])])];
%%
N2_1=266
N2_2=336
P3_1_1=336
P3_1_2=461
P3_2_1=461
P3_2_2=661
P3_3_1=661
P3_3_2=800
%%
    
    %%
    %%FZ
    subplot(5,2,1);
    plot(x,y1(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('FZ','FontSize',12,'FontWeight','bold');
    h1 = legend('0Up', '0Down', '180Up', '180Down');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold')     


    
    subplot(5,2,2);
    plot(x,y4(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h2=legend('Likely', 'Unlikely','Location','Best');
    title('FZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
%%
    %%FCZ  
    subplot(5,2,3);
    plot(x,y5(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('FCZ','FontSize',12,'FontWeight','bold');
    h3 = legend('0Up', '0Down', '180Up', '180Down');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
  
    subplot(5,2,4);
    plot(x,y8(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h4=legend('Likely', 'Unlikely','Location','Best');
    title('FCZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
 %%
    %%CZ 
    subplot(5,2,5);
    plot(x,y9(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('CZ','FontSize',12,'FontWeight','bold');
    h5 = legend('0Up', '0Down', '180Up', '180Down');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
  
    subplot(5,2,6);
    plot(x,y12(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h6=legend('Likely', 'Unlikely','Location','Best');
    title('CZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
  %%
  %%CPZ
    subplot(5,2,7);
    plot(x,y13(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('CPZ','FontSize',12,'FontWeight','bold');
    h7=legend('0Up', '0Down', '180Up', '180Down','Location','Best');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
    
    subplot(5,2,8);
    plot(x,y16(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h8=legend('Likely', 'Unlikely','Location','Best');
    title('CPZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
  %%
  %%PZ
    subplot(5,2,9);
    plot(x,y17(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('PZ','FontSize',12,'FontWeight','bold');
    h9=legend('0Up', '0Down', '180Up', '180Down','Location','Best');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
    
    subplot(5,2,10);
    plot(x,y20(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h10=legend('Likely', 'Unlikely','Location','Best');
    title('PZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([N2_1 N2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([N2_2 N2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(N2_1+20,5,'N2','FontSize',8,'FontWeight','bold')   
    line([P3_1_1 P3_1_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_1_2 P3_1_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_1_1+20,4.5,'P3_1','FontSize',8,'FontWeight','bold') 
    line([P3_2_1 P3_2_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_2_2 P3_2_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_2_1+20,4.5,'P3_2','FontSize',8,'FontWeight','bold') 
    line([P3_3_1 P3_3_1], [-2 8],'Color',[0.5 0.5 0.5]);
    line([P3_3_2 P3_3_2], [-2 8],'Color',[0.5 0.5 0.5]);
    text(P3_3_1+20,4.5,'P3_3','FontSize',8,'FontWeight','bold') 
    %%
    %%
    %%
    %%
    %%
    
    
    
    
    
     %%
    %%FZ
    subplot(3,2,1);
    plot(x,y1(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('FZ','FontSize',12,'FontWeight','bold');
    h1 = legend('0Up', '0Down', '180Up', '180Down');
    PlotAxisAtOriginXL();
    line([280 280], [-2 8],'Color',[0.5 0.5 0.5]);
    line([330 330], [-2 8],'Color',[0.5 0.5 0.5]);
    text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')
    
    subplot(3,2,2);
    plot(x,y4(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h2=legend('Likely', 'Unlikely','Location','Best');
    title('FZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([280 280], [-2 8],'Color',[0.5 0.5 0.5]);
    line([330 330], [-2 8],'Color',[0.5 0.5 0.5]);
    text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')  
%%
    %%FCZ  
    subplot(3,2,3);
    plot(x,y5(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('FCZ','FontSize',12,'FontWeight','bold');
    h3 = legend('0Up', '0Down', '180Up', '180Down');
    PlotAxisAtOriginXL();
    line([280 280], [-2 8],'Color',[0.5 0.5 0.5]);
    line([330 330], [-2 8],'Color',[0.5 0.5 0.5]);
    text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')
  
    subplot(3,2,4);
    plot(x,y8(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h4=legend('Likely', 'Unlikely','Location','Best');
    title('FCZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([280 280], [-2 8],'Color',[0.5 0.5 0.5]);
    line([330 330], [-2 8],'Color',[0.5 0.5 0.5]);
    text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')  
 %%
    %%CZ 
    subplot(3,2,5);
    plot(x,y9(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('CZ','FontSize',12,'FontWeight','bold');
    h5 = legend('0Up', '0Down', '180Up', '180Down');
    PlotAxisAtOriginXL();
    line([280 280], [-2 8],'Color',[0.5 0.5 0.5]);
    line([330 330], [-2 8],'Color',[0.5 0.5 0.5]);
    text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')
  
    subplot(3,2,6);
    plot(x,y12(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h6=legend('Likely', 'Unlikely','Location','Best');
    title('CZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([280 280], [-2 8],'Color',[0.5 0.5 0.5]);
    line([330 330], [-2 8],'Color',[0.5 0.5 0.5]);
    text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')  
    %%
    figure;
    %%CZ 
    subplot(3,2,1);
    plot(x,y9(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('CZ','FontSize',12,'FontWeight','bold');
    h5 = legend('0Up', '0Down', '180Up', '180Down');
    PlotAxisAtOriginXL();
    line([450 450], [-2 8],'Color',[0.5 0.5 0.5]);
    line([750 750], [-2 8],'Color',[0.5 0.5 0.5]);
%     text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')
  
    subplot(3,2,2);
    plot(x,y12(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h6=legend('Likely', 'Unlikely','Location','Best');
    title('CZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([450 450], [-2 8],'Color',[0.5 0.5 0.5]);
    line([750 750], [-2 8],'Color',[0.5 0.5 0.5]);
%     text(340,3,'\leftarrow N200','FontSize',8,'FontWeight','bold')  
  %%
  %%CPZ
    subplot(3,2,3);
    plot(x,y13(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('CPZ','FontSize',12,'FontWeight','bold');
    h7=legend('0Up', '0Down', '180Up', '180Down','Location','Best');
    PlotAxisAtOriginXL();
    line([450 450], [-2 8],'Color',[0.5 0.5 0.5]);
    line([750 750], [-2 8],'Color',[0.5 0.5 0.5]);
    text(530,-1,'P300','FontSize',8,'FontWeight','bold') 
    
    subplot(3,2,4);
    plot(x,y16(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h8=legend('Likely', 'Unlikely','Location','Best');
    title('CPZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([450 450], [-2 8],'Color',[0.5 0.5 0.5]);
    line([750 750], [-2 8],'Color',[0.5 0.5 0.5]);
    text(530,-1,'P300','FontSize',8,'FontWeight','bold')  
  %%
  %%PZ
    subplot(3,2,5);
    plot(x,y17(:,1:4),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    title('PZ','FontSize',12,'FontWeight','bold');
    h9=legend('0Up', '0Down', '180Up', '180Down','Location','Best');
    PlotAxisAtOriginXL();
    line([450 450], [-2 8],'Color',[0.5 0.5 0.5]);
    line([750 750], [-2 8],'Color',[0.5 0.5 0.5]);
    text(530,-1,'P300','FontSize',8,'FontWeight','bold') 
    
    subplot(3,2,6);
    plot(x,y20(:,1:2),'LineWidth',2.5);
    axis([-200 800 ylim]);
    hold on;
    h10=legend('Likely', 'Unlikely','Location','Best');
    title('PZ','FontSize',12,'FontWeight','bold');
    PlotAxisAtOriginXL();
    line([450 450], [-2 8],'Color',[0.5 0.5 0.5]);
    line([750 750], [-2 8],'Color',[0.5 0.5 0.5]);
    text(530,-1,'P300','FontSize',8,'FontWeight','bold')  
    %%
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
%     %%上面先运行，然后调整对应的legend位置之后，再运行下面四句话
%     set(h1, 'Box', 'off')  
%     set(h2, 'Box', 'off')  
%     set(h3, 'Box', 'off')  
%     set(h4, 'Box', 'off')  
%     set(h5, 'Box', 'off')  
%     set(h6, 'Box', 'off')  
%     set(h7, 'Box', 'off')  
%     set(h8, 'Box', 'off')  
%     set(h9, 'Box', 'off')  
%     set(h10, 'Box', 'off')  
