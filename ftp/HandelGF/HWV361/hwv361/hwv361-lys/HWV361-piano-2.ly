% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartII = \relative c' {
    \key a \major
    \time 4/4
    \noTupletBracket

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Staff.Rest #'staff-position = #0

% 1st Voice
        \voiceOne
	| << { r1 
	| r4 r8 e fis4 e~
	| e r4 r4 a~ 
	| a8 gis b4~ b8 a16 gis fis8 e16  dis \break
	| e8 fis b4 a8 b16 cis b8 b 
	| b4 r fis b~
	| b a2 <d, gis b>4
	| <e a cis> a e g 
	| fis <d fis b> <b e gis!> r \pageBreak
	| r8 e d cis b cis d b
% 10
	| <a fis'> <b e> e4 d8 e16 fis gis8 <gis b>
	| a2 gis
	| <cis, fis>8 <b eis> <a fis'>4 b fis' \break
	| <g, b g'> r8 e' <cis e>4 <a a'>
	| fis' g fis cis'
	| b fis8 b gis!4 r8 gis
	| fis4 dis e8 fis gis4 \break
	| fis2 e4 r8 <b fis'>
	| gis' fis gis fis gis4 r8 e
	| e2 e4 r8 e
% 20
	| fis e fis e fis4 r8 fis \break
	| gis fis gis fis gis4 r8 gis
	| a gis a gis a4 r8 <cis, a'>
	| <b e b'>4 r8 \once \override NoteColumn #'force-hshift = #-1.5 <e e'> <e e'>4 <e e'> \pageBreak
	| <e cis' e> <b' fis'> b r8 gis
	| fis cis fis cis' d4 r8 fis,
	| e b e b' cis4 r8 e, \break
	| d a d a' b4 r8 d, 
	| cis gis cis gis' fis4 r8 <a, cis fis>
	| <a b fis'>4 r8 <a d fis> <b d gis>4 r8 <b e b'> \break
% 30	
	| <cis e cis'>4 r8 e fis2~
	| fis8 d e fis gis4 gis
	| a r4 r2 \break
	| a,4 e' d8 cis b4
	| a r8 e'8 e4 r8 <a, e'>
	| <a fis'>4 r8 dis8 e fis gis4
	| fis2 gis8 r8 r4 \pageBreak
	| r8 gis a b a e e4
	| fis e a a 
	| b cis~ cis b~ \break
% 40
	| b a~ a8 gis16 a b8 gis
	| a2. g4
	| a2. a8 b 
	| cis4 d e cis \break
	| b4. b8 b gis a cis
	| <fis, d'>4 <e e'>8 cis fis e d gis
	| a2 b8 a b gis
	| a b cis4 b b \break
	| e8 cis a4 a4. d8 
	| d4 b d b 
% 50	
	| <e, gis b> <e gis b e> <e a e'> r8 <fis a d>
	| <e a cis>4 <d e gis> <cis e a>2 \bar "|." \break
	} 
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	| s1
	| s4 s8 e d cis b4
	| cis s s e8 fis
	| b,4. gis'8 fis4 s
	| s e2 fis8 <dis fis> 
	| e4 e fis2
	| e fis4 s
	| s d2 cis4 
	| d s2.
	| s2 e,8\rest a b gis
% 10
	| s4 a8 b16 cis d4~ d8 e
	| e4 fis2 eis4
	| s2 \once \override NoteColumn #'force-hshift = #1.6 <a, b>2
	| s4. d8 \once \override NoteColumn #'force-hshift = #1.8 e2
	| d4 cis cis <e fis>
	| <dis fis> b~ b s4
	 s1*2

	| b2 b4 s8 b8
	| cis b cis b cis4 s8 a
% 20
	| a2 a4 s8 b
	| b2 b4 s8 cis
	| cis2 cis4 s4
	| s4. b'8 cis b cis b
	| s4 a gis s8 e	
	| e4 b8\rest fis' fis4 s8 d
	| d4 a8\rest e' e4 s8 cis
	| cis4 gis8\rest d' d4 s8 b
	| b4 fis8\rest cis' cis4 s4
	| s1
% 30
	| s2 fis,8\rest a b cis
	| b2 b4 e 
	| e8 fis16 e d8 cis b4 cis8 a
	| s1*2

	| s2. b4
	| cis b~ b8 e e e
	| e4. d8 d4 cis
	| d d cis <d fis>
	| <d e> <cis e> d2
% 40
	| cis d
	| fis4 e8 fis16 e d8 cis b d
	| cis4 fis e2
	| e4 b'2 ais4
	| b8 dis, e fis e4. e8
	| s2. d4
	| cis8 e d cis e2
	| e4. <e a>8 <fis a>4 <e gis>
	| <e a> fis8 e d e fis <d a'> 
	| <d gis>2 <d gis>
% 50	


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

pianoLeftPartII = \relative c {
    \key a \major
    \clef bass
    \time 4/4
    \noTupletBracket
	
	| r2 r8 e e e 
	| fis gis a2 gis4
	| a a8 b cis cis, cis d 
	| e2 b' 
	| a4 gis fis8 gis,16 a b8 a'
	| gis e e'2 d!4~
	| d cis b e,
	| a fis g a 
	| d, b e r
	| a2 e
% 10
	| d4 cis b8 cis16 d e8 d
	| cis a d cis b gis cis b
	| a gis fis4 b dis
	| e r8 g a4 cis,
	| d e fis ais, 
	| b dis e8 gis fis e
	| dis b' b b cis dis e4~
	| e dis e r8 dis, 
	| e dis e dis e4 r8 gis 
	| a gis a gis a4 r8 cis,
% 20	
	| d cis d cis d4 r8 dis
	| e dis e dis e4 r8 eis
	| fis eis fis eis fis4 r8 fis
	| gis4 r8 gis, a gis a gis
	| a4 d e r8 cis
	| ais4 r8 ais8 b b, b' a
	| gis4 r8 gis a a, a' gis
	| fis4 r8 fis gis fis gis e
	| a4 r8 e a b cis d
	| e4 r8 b e,4 r8 gis'
% 30	
	| a4 r8 cis, a fis gis a
	| d b cis d e e d cis16 b
	| cis8 d16 cis b8 a gis4 a8 cis
	| d4 a e' r8 e
	| fis fis fis gis a e a cis, 
	| dis b b b cis dis! e4 
	| e dis e r
	| r8 e e e fis gis a4
	| a gis fis b
	| gis a fis gis
% 40	
	| a2 e2
	| d4 cis b4. e8
	| a, d d d e fis g4
	| fis8 b b b cis dis e fis16 e
	| dis8 b cis dis e d cis a
	| d,4 cis8 fis d cis b e
	| a cis b a gis fis gis e 
	| fis gis a cis, d b e d
	| cis a d cis fis e d fis
	| e2 e,2
% 50
	| e'4 d cis r8 d
	| e4 e,4 a2
	
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsII = {
  s2-\f

}
