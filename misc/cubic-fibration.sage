var('x','y','z')
J = 5
I = 20

S = implicit_plot3d(x^3+y^3+z^3+1,(x,-J,J), (y,-J,J), (z,-J,J), opacity='0.8', frame=False)
L = parametric_plot3d((x,-x,-1), (x,-J,J), color='orange', thickness=2)

t = 1
def plot_parabola(t):
    sol = solve([x+y==t*(z+1), t*(x^2-x*y+y^2)+(z^2-z+1)==0], [x,y])
    P = implicit_plot3d(x+y==t*(z+1),(x,-J,J), (y,-J,J), (z,-J,J), opacity='0.1', color='grey')
    for s in sol:
        L = parametric_plot3d((s[0].rhs(), s[1].rhs(), z), (z,-I,I), plot_points=1000).points
        L = [point3d(p, size=20, color='red') for  p in L if all([coord <= J and -J <= coord for coord in p])]	
        P = P + sum(L)
    return P

plots = [(S+L+plot_parabola(t)) for t in sxrange(-3,0,0.1)]
A = animate(plots)
