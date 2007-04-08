% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartIV = \relative c' {
    \key a \major
    \time 12/8
  \noTupletBracket

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Staff.Rest #'staff-position = #0
    \override PianoStaff.VerticalAlignment #'forced-distance = #11

% 1st Voice
	\noPageBreak
        \voiceOne
	| << { <cis a'>4. <d gis> <e a> <b gis'>
	| <a a'> <b fis'> <b gis'>4 b'8 e d cis
	| a4. a4 e'8 d4. e4 a,8
	| gis4. fis e e \break \noPageBreak
	| e4 a8 b4. <cis, a'> <b e>
	| <a cis>4 <a fis'>8 <a cis>4 <b d e>8 a cis e a, cis e
	| r8 b e gis b, e r a, dis a' a, dis
	| <b gis'>4 r8 <cis fis>4 <cis fis>8 dis fis b e, gis b \break \pageBreak
	| fis a b e, gis b dis, fis b e, gis b                                            
	| fis a b e, gis b dis, fis b e, fis b
% 10	
	| <cis, e cis'>4 r8 r r  <b dis> <b e>4 r8 r r cis 
	| dis4 e8 fis4 e8 dis4 e8 fis e dis \break
	| <b gis'>4 <e b'>8 <fis a>4 dis'8 e dis cis b a gis
	| e' dis cis b a gis cis4.~ cis4 b8
	| a4. e' b~ b4 a8
	| <b, gis'>4 <b e>8 <cis fis>4 <b fis' a>8 <b gis'> <cis a'> <dis fis> <e gis>4 r8 \bar ":|:" \break
	| \repeat volta 2 { gis4. a b fis 
	| e fis fis4 <fis dis'>8~ <fis dis'> <e cis'> <dis b'>
	| a'4. b cis gis
	| fis gis gis4 <gis eis'>8~ <gis eis'> <fis dis'> <eis cis'> \break
% 20
	| cis'4.~ cis4 b8 a4.~ a8 gis eis
	| cis'4.~ cis4 b8 a4.~ a8 gis fis
	| gis4. a b cis 
	| d cis b cis                    
	| <cis, a' cis>4 <d b'>8 <fis a>4 <gis b>8 a e'\rest e\rest e4\rest <dis, fis b>8
	| <e g b>4 <e c'>8 <e g>4 <fis a>8 g e'\rest e\rest e4\rest <cis, e a>8
	| <d fis a>4 <d b'>8 <d fis>4 <a e' g>8 fis' g fis a b a
	| gis! a gis fis gis fis e2.
	| e4. fis4 d8 b e gis cis, e a
	| d, e b' cis, e a b, e gis cis, e a
% 30
	| d, e b' cis, e a b, e gis a, e' a
	| <a, a'>2. gis'4. e 
	| <cis e>4 <b fis'>8 <b d>4 <b gis'>8 a' gis fis e d cis 
	| a' gis fis e d cis fis d fis a gis fis 
	| e4. fis4 d8 <b d>4. <e, b' e> 
	| } \alternative { { <e cis' e>4 <a e'>8 <b d>4 <b d e>8 <cis e> <d fis> <b d> <cis e>4 r8 \bar ":|" | }
	{ <e, cis' e>4 <a e' a>8 <b d a'>4 <b d e gis>8 <a cis e a>2. \bar "|." } } 

	} 
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	| s1.
	| s2. s4 gis'8 e4.
	| fis e fis e
	| d2. d4. b
	| cis4 e8 fis4 gis8 s2. 
	| s1.*2
        \override PianoStaff.NoteCollision #'merge-differently-dotted = ##t
	| s2. dis4. e
	| fis e dis e 
	| fis e dis e 
% 10
	| s2. s4. s4 b8
	| b1.
	| s2. e
	| e <e a>4. <dis fis>
	| <e a>2. fis4. dis
	| s1.
	| b1.
	| b4. cis dis4 s8 s4.
	| cis1.
	| cis4. d eis4 s8 s4.
% 20	
	| cis2. cis
	| cis cis 
	| fis fis 
	| fis fis4. <cis gis'>
	| s4. s4 cis8~ cis fis gis a4 s8
	| s4. s4 b,8~ b e fis g4 s8
	| s2. d2.
	| d2. d4. b8 cis d
	| cis4. a b cis
	| d cis b cis
% 30	
	| d cis b a
	| fis' e d2.
	| s2. a
	| a a4. a4 a8
	| b4 cis8 a4. s2. 
	| s2. a4.~ a4 
		
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

pianoLeftPartIV = \relative c {
    \key a \major
    \clef bass
    \time 12/8
     \noTupletBracket

	| a4. b cis d
	| cis d e4 d8 cis b a
	| d'4. cis4 cis,8 d4. cis
	| b a gis gis'
 	| a4 cis,8 d4 e8 fis4. gis
	| a4 d,8 e4 e,8 a4. r8 r a'
	| gis4. r8 r gis fis4. r8 r fis
	| e4 e,8 a4 a8 b2.
	| b b
	| b b4 a8 gis4. 
% 10	
	| a4 r8 r r fis' gis4 r8 r r e
	| fis4 e8 dis4 e8 fis4 e8 dis cis b
	| e4 gis,8 b4 b'8 cis b a gis fis e
	| cis b a gis fis e a4.~ a4 b8
	| cis4. cis dis b
	| e4 gis,8 a4 b8 e,4.~ e4 r8
	| e'4. fis gis a 
	| gis fis b b,
	| fis' gis a b
	| a b cis cis,
% 20	
	| a' eis fis cis 
	| a eis fis cis'4 a'8
	| b4. a d cis
	| b a gis eis 
	| fis4 b8 cis4 cis,8 fis4 e!8 dis4 b8
	| e4 a8 b4 b,8 e4 d!8 cis4 a8
	| d4 g8 a4 a,8 d e d cis d cis
	| b cis b a b a gis!4. gis'
	| a d,4 fis8 e2. 
	| e e
% 30	
	| e e4 d8 cis4.
	| d cis b gis'
	| a4 d,8 e4 e8 fis e d cis b a
	| fis' e d cis b a d4.~ d4 d8
	| gis,4 a8 d4 fis8 e4. gis, 
	| a4 cis8 e4 e,8 a4.~ a4 r8
	| a4 cis8 e4 e,8 a2.
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsIV = {
  s2-\f

}
