function PlotAxisAtOriginXL() ;
%PlotAxisAtOrigin Plot 2D axes through the origin
%   This is a 2D version of Plot3AxisAtOrigin written by Michael Robbins
%   File exchange ID: 3245. 
 
% usage
% axis_lim is the display ragne of your figure; e.g, for color task
% y supposed tp represent SSC SRC SSI SRI SSD SRD
%  set defalut color order to blue - red 
% set(0,'DefaultAxesColorOrder',[0 0 1;1 0 0],...
%       'DefaultAxesLineStyleOrder','-|--')
% PLOT
% if nargin == 3
%     plot(x,y,'LineWidth',2);
%     axis(axis_lim); 
%     hold on;
% else
%     display('You must input x and y. Try again!')
% end;
 
% GET TICKS
X=get(gca,'Xtick');
Y=get(gca,'Ytick');
 
% GET LABELS
XL=get(gca,'XtickLabel');
%YL=get(gca,'YtickLabel');
YL=num2str(Y','%3.1f');
 
% GET OFFSETS
Xoff=diff(get(gca,'XLim'))./90;
Yoff=diff(get(gca,'YLim'))./50;
 
% DRAW AXIS LINEs
plot(get(gca,'XLim'),[0 0],'k');
plot([0 0],get(gca,'YLim'),'k');
 
% Plot new ticks  
for i=1:length(X)
    plot([X(i) X(i)],[0 Yoff],'-k');
end;
for i=1:length(Y)
   plot([Xoff, 0],[Y(i) Y(i)],'-k');
end;
 
% ADD LABELS
text(X,zeros(size(X))-2.*Yoff,XL,'HorizontalAlignment','center');
text(zeros(size(Y))-1.*Xoff,Y,YL,'HorizontalAlignment','right');
 
box off;
% axis square;
axis off;
set(gcf,'color','w');
