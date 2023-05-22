function [phi1, phi2] = GM_Bases(s1, s2)
	% Eenergy of s1 = dot(s1, s1)
	phi1 = s1 / sqrt(dot(s1, s1));
	% s21 = dot(s2, phi1) which is the projection of s2 onto phi1
	v2 = s2 - dot(s2, phi1) * phi1;
	phi2 = v2 / sqrt(dot(v2, v2));
	% to normalize the bases
	phi1 = phi1 * sqrt(length(s1));
	phi2 = phi2 * sqrt(length(s2));
end
