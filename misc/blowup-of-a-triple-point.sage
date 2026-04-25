var('x,y,z,t')
r=3
h=6
S = implicit_plot3d(x*z-y, (x,-r,r),(y,-r,r), (z,-r,r), opacity=.5, color='blue')
T = plot3d(lambda x,y: h, (x,-r,r),(y,-r,r), opacity=.5, color='darkblue')

f = [2*(t^3-3*t)/(1+t^2)^2,2*t*(t^3-3*t)/(1+t^2)^2]
C = parametric_plot3d([2*cos(3*t)*cos(t),3*cos(3*t)*sin(t),h],(0,2*pi),color='red',thickness=2,plot_points=1000)
D = parametric_plot3d([f[0],f[1],t],(-r,r),color='red',thickness=2,plot_points=1000)

show(S+T+C+D,frame=false,alpha=1,backgroundColor='black',viewer='threejs',online=true)

