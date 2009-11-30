% Het daghet in den Oosten
% Second song from:
% (Front page)

%      XXIe Nederlandsch
% Taal- en Letterkundig Congres
%           -----
%             6 
%  Oude Nederlandsche Liederen
%        bewerkt door
%       Fl. van Duyse
%         voor koor
% met begeleiding van harmonium
%           =====
%               Uitgevoerd op het Concert ingericht door de
% Regelingscommissie ter gelegenheid van het avondsfeest door haren Voorsitter
%                      Jhr. A. de MAERE-LIMNANDER
%         aan de Congresleden aangeboden op Dinsdag 25 Augusti 1891
%
% A. Vanderghinste & K. Vanderauwera, Grav:Drukk:Brussel. (V&V.161)

% (Dedication, p.3)
% Deze liederen worden den Heere Voorzitter van het
% XXIe Nederlandsch Taal- en Letterkundig Congres,
% Jhr.A. de MAERE-LIMNANDER, hartelijk opgedragen
% door zijn medelid der Regelingscommissie.
%                               FL. VAN DUYSE.

%#(set-default-paper-size "a4")
#(set-global-staff-size 16)
\version "2.12.1"
\header 
{
  mutopiatitle = "Het daghet in den Oosten"
  mutopiacomposer = "DuyseFv"
  mutopiainstrument = "SATB and Harmonium"
  date = "1891-08-25" % first performance
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2009-11-06"
  title =   "6 Oude Nederlandsche Liederen"
  subtitle = "II. Het daghet in den Oosten"
  poet = "15de eeuw"
  composer = "Florimond Van Duyse (1843-1910)"
  source = "A. Vanderghinste & K. Vanderauwera, Brussel, 1891. (V&V.161)"
%  meter = "Lento"
  style = "Classical"

 footer = "Mutopia-2009/11/30-1726"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \time 2/2
   \key a \minor
   \partial 4*1 
}

sop = \relative c'' {
\clef "treble"
r4^\markup {\bold {Lento}} |
% 1
R1 |
% 2
\time 3/2
R1. |
% 3
\time 2/2
R1 |
% 4
r2\fermata r4 a4\p |
% 5
e e g a |
% 6
\time 3/2
c2\>\( b\)\! r4 e |
% 7
\time 2/2
\times 2/3 {d2->\( c4\) }
\times 2/3 {a2\( b4} |
% 8
\times 2/3 {d4 ~ d8[ c b a](} b2\)) |
% 9
r4 b\< c d\!
% 10
e2(\> d4)\! \breathe e |
% 11
\time 3/2
c2(\> b\! c4. b8)\( |
% 12
\time 2/2
a2\) r4 b4\p |
% 13
\times 2/3 {e,2 fis4} \times 2/3 {g2 a4} |
% 14
\time 3/2
\times 2/3 {c4( ~ c8[ b a g]} a2)\fermata r2\fermata |
% 15
\time 2/2 R1 |
% 16
\time 3/2 R1. |
% 17
\time 2/2 R1 |
% 18
r2\fermata r4 a4\p |
% 19
e e g a |
% 20
\time 3/2
c2\>\( b\)\! r4 e |
% 21
\time 2/2
\times 2/3 {d2->\( c4\) }
\times 2/3 {a2\( b4} |
% 22
\times 2/3 {d4 ~ d8[ c b a](} b2\)) |
% 23
r4 b\< c d\!
% 24
e2(\> d4)\! \breathe e |
% 25
\time 3/2
c2(\> b\! c4. b8)\( |
% 26
\time 2/2
a2\) r4 b4\p |
% 27
\times 2/3 {e,2 fis4} \times 2/3 {g2 a4} |
% 28
\time 3/2
\times 2/3 {c4( ~ c8[ b a g]} a2)\fermata r2\fermata |
% 29
\time 2/2
R1 |
% 30
\time 3/2
R1. |
% 31
\time 2/2
R1 |
% 32
r2\fermata r4 a4\p |
% 33
e \breathe e g a |
% 34
\time 3/2
c2\>\( b\)\! r4 e |
% 35
\time 2/2
\times 2/3 {d2->\( c4\) }
\times 2/3 {a2\( b4} |
% 36
\times 2/3 {d4 ~ d8[ c b a](} b2\)) |
% 37
r4 b\< c d\!
% 38
e2(\> d4)\! \breathe e |
% 39
\time 3/2
c2(\(\> b\! c4.) b8 |
% 40
\time 2/2
a2\) r4 b4\p |
% 41
\times 2/3 {e,2 fis4} \times 2/3 {g2 a4} |
% 42
\times 2/3 {c4( ~ c8[ b a g]} a2)\fermata 
\bar"|."
}

alt = \relative c'' {
\clef "treble"
r4 |
% 1
R1 |
% 2
\time 3/2
r1. |
% 3
\time 2/2
R1 |
% 4
r2\fermata r4 a4\p |
% 5
e e g a |
% 6
\time 3/2
c2\>\( b\)\! r4 e, |
% 7
\time 2/2
\times 2/3 {e2-> e4 }
\times 2/3 {e2\( e4\)} |
% 8
e1 |
% 9
r4 e\< e g\! |
% 10
g(\> a b) \breathe b |
% 11
\time 3/2
<< {e,1( d2)} {s2\> s2\! s2} >> |
% 12
\time 2/2
c2 r4 b\p |
% 13
\times 2/3 {e2 e4} \times 2/3 {e2 e4}
% 14
\time 3/2
e2 ~ e2\fermata r\fermata
% 15
\time 2/2 R1 |
% 16
\time 3/2 R1.
% 17
\time 2/2 R1 |
% 18
r2\fermata r4 a4\p |
% 19
e e g a |
% 20
\time 3/2
c2\>\( b\)\! r4 e, |
% 21
\time 2/2
\times 2/3 {e2-> e4 }
\times 2/3 {e2\( e4\)} |
% 22
e1 |
% 23
r4 e\< e g\! |
% 24
g(\> a b) \breathe b |
% 25
\time 3/2
<< {e,1( d2)} {s2\> s2\! s2} >> |
% 26
\time 2/2
c2 r4 b\p |
% 27
\times 2/3 {e2 e4} \times 2/3 {e2 e4}
% 28
\time 3/2
e2 ~ e2\fermata r\fermata
% 29
\time 2/2
R1 |
% 30
\time 3/2
r1. |
% 31
\time 2/2
R1 |
% 32
r2\fermata r4 a4\p |
% 33
e \breathe e g a |
% 34
\time 3/2
c2\>\( b\)\! r4 e, |
% 35
\time 2/2
\times 2/3 {e2-> e4 }
\times 2/3 {e2\( e4\)} |
% 36
e1 |
% 37
r4 e\< e g\! |
% 38
g(\> a b) \breathe b |
% 39
\time 3/2
<< {e,1 d2} {s2\> s2\! s2} >> |
% 40
\time 2/2
c2 r4 b\p |
% 41
\times 2/3 {e2 e4} \times 2/3 {e2 e4}
% 42
e2 ~ e2\fermata
\bar"|."
}

ten = \relative c' {
\clef "treble_8"
r4 |
% 1
R1 |
% 2
\time 3/2
r1. |
% 3
\time 2/2
R1 |
% 4
r2\fermata r4 a4\p |
% 5
e e g a |
% 6
\time 3/2
c2\>\( b\)\! r4 e, |
% 7
\time 2/2
\times 2/3 {a2-> a4 }
\times 2/3 {a2\( a4\)} |
% 8
\times 2/3 {a2( c4} b2) |
% 9
r4 e,\< a b\! |
% 10
c2(\> g4)\! \breathe g |
% 11
\time 3/2
a2\>( e1\!) |
% 12
\time 2/2
e2 r4 b'4\p |
% 13
\times 2/3 {e,2 e4} \times 2/3 {e2 fis4}
% 14
\times 2/3 {g4( a b} c2)\fermata r\fermata
% 15
\time 2/2 R1 |
% 16
\time 3/2 R1.
% 17
\time 2/2 R1 |
% 18
r2\fermata r4 a4\p |
% 19
e e g a |
% 20
\time 3/2
c2\>\( b\)\! r4 e, |
% 21
\time 2/2
\times 2/3 {a2-> a4 }
\times 2/3 {a2\( a4\)} |
% 22
\times 2/3 {a2( c4} b2) |
% 23
r4 e,\< a b\! |
% 24
c2(\> g4)\! \breathe g |
% 25
\time 3/2
a2\>( e1\!) |
% 26
\time 2/2
e2 r4 b'4\p |
% 27
\times 2/3 {e,2 e4} \times 2/3 {e2 fis4}
% 28
\times 2/3 {g4( a b} c2)\fermata r\fermata
% 29
\time 2/2
R1 |
% 30
\time 3/2
r1. |
% 31
\time 2/2
R1 |
% 32
r2\fermata r4 a4\p |
% 33
e \breathe e g a |
% 34
\time 3/2
c2\>\( b\)\! r4 e, |
% 35
\time 2/2
\times 2/3 {a2-> a4 }
\times 2/3 {a2\( a4\)} |
% 36
\times 2/3 {a2( c4} b2) |
% 37
r4 e,\< a b\! |
% 38
c2(\> g4)\! \breathe g |
% 39
\time 3/2
a2\>\( e1\!\) |
% 40
\time 2/2
e2 r4 b'4\p |
% 41
\times 2/3 {e,2 e4} \times 2/3 {e2 fis4}
% 42
\times 2/3 {g4( a b} c2)\fermata
\bar"|."
}

bas = \relative c' {
\clef bass
r4 |
% 1
R1 |
% 2
\time 3/2
r1. |
% 3
\time 2/2
R1 |
% 4
R1 |
% 5
R1 |
% 6
\time 3/2
R1. |
% 7
\time 2/2
\times 2/3 {r4 r4 a4\) }
\times 2/3 {a2\( a4\)} |
% 8
\times 2/3 {a,2\( a4\)} e'2 | |
% 9
r4 e\< a g\! |
% 10
c2(\> g4)\! \breathe g |
% 11
\time 3/2
a2(\> e1)\! |
% 12
\time 2/2
a,2 r4 b\p |
% 13
\times 2/3 {e2 e4} \times 2/3 {e2 e4} |
% 14
e2( a,2)\fermata r\fermata
% 15
\time 2/2 r1 |
% 16
\time 3/2 r1.
% 17
\time 2/2 r1 |
% 18
R1 |
% 19
R1 |
% 20
\time 3/2
R1. |
% 21
\time 2/2
\times 2/3 {r4 r4 a'4\) }
\times 2/3 {a2\( a4\)} |
% 22
\times 2/3 {a,2\( a4\)} e'2 | |
% 23
r4 e\< a g\! |
% 24
c2(\> g4)\! \breathe g |
% 25
\time 3/2
a2(\> e1)\! |
% 26
\time 2/2
a,2 r4 b\p |
% 27
\times 2/3 {e2 e4} \times 2/3 {e2 e4} |
% 28
e2( a,2)\fermata r\fermata
% 29
\time 2/2
R1 |
% 30
\time 3/2
r1. |
% 31
\time 2/2
R1 |
% 32
R1 |
% 33
R1 |
% 34
\time 3/2
R1. |
% 35
\time 2/2
\times 2/3 {r4 r4 a'4\) }
\times 2/3 {a2\( a4\)} |
% 36
\times 2/3 {a,2\( a4\)} e'2 | |
% 37
r4 e\< a g\! |
% 38
c2(\> g4)\! \breathe g |
% 39
\time 3/2
a2\(\> e1\)\! |
% 40
\time 2/2
a,2 r4 b\p |
% 41
\times 2/3 {e2 e4} \times 2/3 {e2 e4} |
% 42
e2( a,2)\fermata 
\bar"|."
}

toptekst = \lyricmode {
``Het da -- ghet in den Oos -- ten,
het lich -- tet o -- ver -- al; __
hoe lut -- tel weet __ mijn lief -- ken,
waer dat ic he -- nen sal! __
``Och wa -- rent al mijn vrien -- den
dat mijn vi -- an --den sijn, __
ic voerde u ui -- ten lan -- de,
mijn lief, mijn min -- ne -- kijn.´´ __
``Dats waer sou -- di mi voe -- ren,
stout rid -- der wel ghe -- meit? __
ic ligghe in mijns __ liefs ar -- rem -- kens,
met gro -- ter weer -- dich -- eit.´´ __
}

bastekst = \lyricmode {
Het lich -- tet o -- ver -- al;
hoe lut -- tel weet __ mijn lief -- ken,
waer dat ic he -- nen sal! __
dat mijn vi -- an --den sijn, __
ic voerde u ui -- ten lan -- de,
mijn lief, mijn min -- ne -- kijn.´´ __
``stout rid -- der wel ghe -- meit? __
ic ligghe in mijns __ liefs ar -- rem -- kens,
met gro -- ter weer -- dich -- eit.´´ __
}

organUp = \relative c'' {
a4\p^\markup {\bold {Lento}} |
% 1
e( e g a |
% 2
\time 3/2 
c2\> b2.\!) c4( |
% 3
\time 2/2
<< {e2 d4 c} \\ {g\> a e2\!} >> |
% 4
<e b'>2)\fermata r4 a\p( |
% 5
e2 g4 a |
% 6-
\time 3/2
c2 b) r4 
% 6+..8
<< {e( | \time 2/2 \times 2/3 {d2 c4} \times 2/3 { a2 b4 } \times 2/3 {d4 ~d8[ c b a] } b2) } 
\\ {s4 e,1 e1 } >> |
% 9
r4 << {b'( c d | e2 d4 e \time 3/2 c2 b c4. b8 | \time 2/2 a2) }
\\ {e2\< g4\! | g\> a b2\! e,1\> d2\! | c } >>
% 12+
r4 b'4\p |
% 13..14-
<< {\times 2/3 {e,2( fis4} \times 2/3 {g2 a4} \time 3/2 \times 2/3 {c4 ~ c8[ b a g]} a2)\fermata }
\\ {e1 | e2 ~ e2 } >>
% 14+
r4\fermata a4 |
% 15
\time 2/2
e( e g a |
% 16
\time 3/2 
c2\> b2.\!) c4( |
% 17
\time 2/2
<< {e2 d4 c} \\ {g\> a e2\!} >> |
% 18
<e b'>2)\fermata r4 a\p( |
% 19
e2 g4 a |
% 20
\time 3/2
c2 b) r4 e( |
% 21
\time 2/2
<< {\times 2/3 {d2 c4} \times 2/3 { a2 b4 } } \\ e,1 >> |
% 22
<< {\times 2/3 {d'4 ~d8[ c b a] } b2} \\ e,1 >> |
% 23..26-
r4 << {b'( c d | e2 d4 e \time 3/2 c2 b c4. b8 | \time 2/2 a2) }
\\ {e2\< g4\! | g\> a b2\! e,1\> d2\! | c } >>
% 26+
r4 b'4\p |
% 27..28-
<< {\times 2/3 {e,2( fis4} \times 2/3 {g2 a4} \time 3/2 \times 2/3 {c4 ~ c8[ b a g]} a2)\fermata }
\\ {e1 | e2 ~ e2 } >>
% 28+
r4\fermata a4 |
% 29
e( e g a |
% 30
\time 3/2 
c2\> b2.\!) c4( |
% 31
\time 2/2
<< {e2 d4 c} \\ {g\> a e2\!} >> |
% 32
<e b'>2)\fermata r4 a\p( |
% 33
e2 g4 a |
% 34
\time 3/2
c2 b) r4 
% 34+..36
<< {e( | \time 2/2 \times 2/3 {d2-> c4} \times 2/3 { a2 b4 } \times 2/3 {d4 ~d8[ c b a] } b2) } 
\\ {s4 e,1 e1 } >> |
% 37..
r4 << {b'( c d | e2 d4 e \time 3/2 c2 b c4. b8 | \time 2/2 a2) }
\\ {e2\< g4\! | g\> a b2\! e,1\> d2\! | c } >>
% 40+
r4 b'4\p |
% 41..42
<< {\times 2/3 {e,2( fis4} \times 2/3 {g2 a4} \times 2/3 {c4 ~ c8[ b a g]} a2)\fermata }
\\ {e1 | e2 ~ e2 } >>
\bar"|."
}

organDown = \relative c {
\clef bass
r4 |
% 1
R1 |
% 2
\time 3/2
r4 a'\p( e e g a |
% 3
\time 2/2
c2\> a2\! |
% 4
e2)\fermata r4 a\p( |
% 5
e2 g4 a |
% 6
\time 3/2
c2 b) r |
% 7
\time 2/2
a1( |
% 8
<< {\times 2/3 {a2 c4}} \\ a,2 >> <e' b'>2) |
% 9
r4 e4( a <g b> |
% 10
c2 g |
% 11
\time 3/2
a2 e1 |
% 12
\time 2/2
<e a,>2) r |
% 13 .. 14
<< {e2 ~ \times 2/3 {e2 fis4} | \times 2/3 {g4 a b} c2 }
\\ {e,1 e2 <e a,>\fermata} >>
r2\fermata |
% 15
\time 2/2
R1 |
% 16
\time 3/2
r4 a\p( e e g a |
% 17
\time 2/2
c2\> a2\! |
% 18
e2)\fermata r4 a\p( |
% 19
e2 g4 a |
% 20
\time 3/2
c2 b) r |
% 21
\time 2/2
a1( |
% 22
<< {\times 2/3 {a2 c4}} \\ a,2 >> <e' b'>2) |
% 23
r4 e4( a <g b> |
% 24
c2 g |
% 25
\time 3/2
a2 e1 |
% 26
\time 2/2
<e a,>2) r |
% 27 .. 28
<< {e2 ~ \times 2/3 {e2 fis4} | \times 2/3 {g4 a b} c2 }
\\ {e,1 e2 <e a,>\fermata} >>
r2\fermata |
% 29
R1 |
% 30
\time 3/2
r4 a\p( e e g a |
% 31
\time 2/2
c2\> a2\! |
% 32
e2)\fermata r4 a\p( |
% 33
e2 g4 a |
% 34
\time 3/2
c2 b) r |
% 35
\time 2/2
a1( |
% 36
<< {\times 2/3 {a2 c4}} \\ a,2 >> <e' b'>2) |
% 37
r4 e4( a <g b> |
% 38
c2 g |
% 39
\time 3/2
a2 e1 |
% 40
\time 2/2
<e a,>2) r |
% 41 .. 42
<< {e2 ~ \times 2/3 {e2 fis4} | \times 2/3 {g4 a b} c2 }
\\ {e,1 e2 a,\fermata} >>
\bar"|."
}

\score {
	<<
		\new ChoirStaff {
			<<
			\new Staff = sopStaff { 
			    \set Staff.instrumentName = "Sopraan."
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = sopVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\sop
			    } 
			}
			\new Lyrics \lyricsto sopVoice \toptekst
		
			\new Staff = altStaff { 
			    \set Staff.instrumentName = "Alt."
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\alt
			    } 
			}
			\new Lyrics \lyricsto altVoice \toptekst
		
			\new Staff = tenorStaff { 
			    \set Staff.instrumentName = "Tenor."
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = tenorVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\ten
			    } 
			}
			\new Lyrics \lyricsto tenorVoice \toptekst
		
			\new Staff = bassStaff { 
			    \set Staff.instrumentName = "Bas."
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = basVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\bas
			    } 
			}
			\new Lyrics \lyricsto basVoice \bastekst
		
			>>
		}
			\new PianoStaff <<
		        \set PianoStaff.midiInstrument = "reed organ"
		        \set PianoStaff.instrumentName = "Harmonium"
		        \new Staff = "up" {
		          #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
			  \global
		          \organUp
		        }
		        \new Staff = "down" {
		          #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
			  \global
		          \organDown
		        }
			>>
	>>
    
  \layout {
    \context {
      \RemoveEmptyStaffContext
      \override RemoveEmptyVerticalGroup #'remove-first = ##f
    }
  }
  \midi {
    \context {
      \Score
          tempoWholesPerMinute = #(ly:make-moment 66 4)
    }
  }
}
% EOF
