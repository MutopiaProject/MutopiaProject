\version "2.12.3"
VioloncelloSpringTwo =  {
\clef bass 
\key cis \minor
\time 3/4

\mark "F"
<< { R2.*39 } { s_"Largo Tacet" } >>
%< R2. R2.*39 >_"Largo Tacet"
}


%\score {
%	\layout {
%		ragged-last = ##f
%		ragged-right = ##f
%	}
%<<
%	\set Score.skipBars = ##t
%	\context Staff = "cello" <<
%\VioloncelloSpringTwo
%>>
%>>
%}
