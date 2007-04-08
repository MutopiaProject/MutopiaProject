% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartIII = \relative c' {
    \key a \major
    \time 4/4
  \noTupletBracket

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Staff.Rest #'staff-position = #0

% 1st Voice
        \pageBreak
        \voiceOne
	| << { <cis fis a>2 <eis gis>8 [fis eis gis] 
	| <gis b>2 a8[ cis eis, gis] \break \noPageBreak
	| <cis, fis>4. <e! fis ais>8 <d fis b>4 <b eis>
	| fis'4~ fis8. gis16 a8. fis16~ fis4
	| eis1


 \bar "|."
	} 
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	| s2 cis 
	| cis cis4. cis8	
	| s1
	| a!4 b a gis
	
        \oneVoice
	}
% % 3rd Voice
%        \new Voice { \voiceThree
%            s1 s s s s s s s s s s s s s e4
%        \oneVoice
%        } 
>>
 \oneVoice
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartIII = \relative c {
    \key a \major
    \clef bass
    \time 4/4
     \noTupletBracket

	| fis8[ gis a fis] gis[ a b gis]
	| eis[ gis eis cis] fis[ a cis b]
	| ais[ cis ais fis] b [b,] cis4
	| d2. d4
	| cis1
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsIII = {
  s2-\f

}
