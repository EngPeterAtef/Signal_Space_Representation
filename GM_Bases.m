function [phi1, phi2] = GM_Bases(s1, s2)
	% Calculate the first basis vector
	phi1 = s1 / norm(s1);
	
	phi2 = s2;
	phi2 = phi2 - dot(phi1, phi2) * phi1;
	phi2 = phi2 / norm(phi2);
end
