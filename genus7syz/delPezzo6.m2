load "mcsyzygy.m2"
-- Our aim is to check whether the del Pezzo surface of degree 6,
-- embedded in P^6 by the anti-canonical embedding gives a semi-stable
-- first syzygy point.

k = ZZ/101;

-- Let us first embed the del Pezzo surface parametrically
Sparam = k[X_0..X_6,x,y,z]
I = ideal{ X_0 - x*z^2,
     X_1 - y*z^2,
     X_2 - x^2*z,
     X_3 - x*y*z,
     X_4 - y^2*z,
     X_5 - x^2*y,
     X_6 - y^2*x}

(S, i) = selectVariables({0..6}, Sparam)
J = preimage(i, I)
J = ideal(mingens (J))

betti (res J)

(MG, stateGamma) = embedGamma(J, S);
result = syzygyMCStable(MG, apply(stateGamma, stateVector), 10, 10);
<< result << endl;

