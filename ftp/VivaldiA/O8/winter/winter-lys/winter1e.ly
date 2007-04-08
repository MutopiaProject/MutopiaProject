\version "1.7.13"
% figured bass

OrganoWinterOne = \notes {
\clef bass
\key f \minor
\time 4/4

\mark "A"
<f1 aes c'>
<f g bes des'>			% 246
<f aes c'>
<f aes c'>
<e g bes des'>			% 57
<f aes c'>
<f bes des'>			% 46
<f a c' ees'>			% 3n7
<f b d'>			% 4n6n
<fis a c' ees'>			% 57
<g2 c' d'> <g, b, des>		% 45n	% 3n
\mark "B"
<c4 ees g> r2.
r2 <c2 ees g>
<c2. ees g> r4
r1
<c1 ees g>
<c4 ees g> r2.
R1*2
<f2 aes c'> <f ges bes>		% -	% 2f4
<ees a c'> <des f aes>		% 4n6	% -
<des f b> \mark "C" <c4 e g> r4	% 36n	% n
<f,2 aes, c> <bes,4 des f> r
<ees,2 g, bes,> <aes,4 c ees> r	
<des,2 f, a,> <g,4 bes, des> r
<c,2 e, g,> <f4 aes c'> <ees g bes>	% n	% - -
<f aes c'> <g bes des'> <aes2 c' ees'>
<aes1 c' ees'>
<bes4 des' f'> <g2. bes des'>
<g2 bes des'> <aes4 c' ees'> <f aes c'>
<f2> <e8 g bes des'> <ees g c'> <d f aes c'> <des f bes>	% -	% 7 6 7 6
<c1 e g bes>			% n7
<c e g bes>
<f4 aes c'> r <f2 a c' ees'>	% -	% 3n7
<bes,4 des f> r <g2 b des' f'>	% -	% 3n7
<c4 ees g> r <bes,2 d f aes>	% -	% 3n7
<ees4 g bes> r <aes,2 c ees f>	% - 	% 56
<bes,2 d f> <ees g bes>		% n	% -
<ees1 f aes bes>		% 245
<ees2 f aes bes> <d f aes bes>	% -	% 56
<ees g bes> <ees g bes des'>	% -	% 7f (flat written thru the 7)
<aes, c ees> <f, a, c ees>	% - 	% 3n7
<bes, d f> <bes, d f aes>	% n	% 3n7
<ees4 g bes> r <g bes des'> <ees g bes>
<aes, c ees> r <a c' ees'> <f aes c'>
<bes, des f> r <b des' f'> <g bes des'>
\mark "D"
<c ees g> r r2
R1*8
<c4 e g> r <f,2 aes, c>		% n	% -
<bes,4 des f> r <ees,2 g, bes,>
<aes,4 c ees> r <des,2 f, aes,>
<g,4 bes, des> r <c2 e g bes>	% -	% 3n7 (nat written in front of 3)
<f aes c'> <bes, des f g>	% -	% 56
<c e g> <f aes c'>		% 3n	% -
<bes, des f g> <c e g>		% 56	% n
<f,1 aes, c>
}

\score {
<
	\context Voice \OrganoWinterOne
	\context FiguredBase \OrganoWinterOne
> 
}
