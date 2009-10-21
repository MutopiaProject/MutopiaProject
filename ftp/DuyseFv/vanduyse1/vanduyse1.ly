% Here Halewijn sanc een liedekijn
% First song from:
% (Front page)

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
\version "2.10.33"
\header 
{
  mutopiatitle = "Here Halewijn sanc een liedekijn"
  mutopiacomposer = "DuyseFv"
  mutopiainstrument = "SATB and Harmonium"
  date = "1891-08-25"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2009-10-14"
  title =   "6 Oude Nederlandsche Liederen"
  subtitle = "I. Here Halewijn sanc een liedekijn"
  poet = "14de eeuw"
  composer = "Florimond Van Duyse (1843-1910)"
  source = "A. Vanderghinste & K. Vanderauwera, Brussel, 1891. (V&V.161)"
%  meter = "Moderato"
  style = "Classical"
 footer = "Mutopia-2009/10/21-1718"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \time 6/4
   \key b \major
}

sop = \relative c'' {
\clef treble
\partial 4*3 
r2.^\markup {\bold {Moderato}} |
% 1
R1. |
% 2
r4\fermata r cis\p\( cis ais b |
% 3
cis2 cis4 dis( cis) b |
% 4
ais2.\) \breathe cis4\( b ais | 
% 5
gis( fis) gis\< ais b cis \! |
% 6
dis2.\)-> \breathe dis4\( e dis |
% 7
cis2\> dis4\!^\markup {\italic { rall.} } cis-- ais-- b-- |
% 8
cis2.\)\fermata r2. |
% 9
R1. |
% 10
r2.\fermata cis4(\p dis) cis |
% 11
e2-> e4 dis2\> cis4\! |
% 12
b2. \breathe b4\(( cis) b |
% 13
dis2-> dis4 dis^\markup {\italic { rall.} } cis b |
% 14
dis2.\)\fermata r2. |
% 15-16
R1. | r2.\fermata cis4\( ais b |
% 17
cis2 cis4 dis( cis) b |
% 18
ais2.\) \breathe cis4\( b ais |
% 19
gis( fis) gis\< ais b cis \! |
% 20
dis2.\)-> \breathe  dis4\( e dis |
% 21
cis2\> dis4\!^\markup {\italic { rall.} } cis-- ais-- b-- |
% 22
cis2.\)\fermata r2. |
% 23
R1. |
% 24
r2.\fermata cis4\p dis cis |
% 25
e2-> e4 dis2\> cis4\! |
% 26
b2. \breathe b4\(( cis) b |
% 27
dis2-> dis4 dis(^\markup {\italic { rall.} } cis) b |
% 28
dis2.\)\fermata r2. |
% 29-30
R1. | r2\fermata cis4\p\( cis ais b |
% 31
cis2 cis4 dis( cis) b |
% 32
ais2.\) \breathe cis4\( b ais | 
% 33
gis( fis) gis\< ais b cis \! |
% 34
dis2.\)-> \breathe dis4\p\( e dis |
% 35
cis2\> dis4\!^\markup {\italic { rall.} } cis-- ais-- b-- |
% 36
cis1.\)\fermata  \bar"|."
}

alt = \relative c' {
\clef treble
\partial 4*3 
r2. |
% 1
R1. |
% 2
r4\fermata r4 fis\p\( fis fis fis |
% 3
fis2 fis4 fis2 fis4 |
% 4
fis2.\) \breathe fis4\(  fis fis |
% 5
dis2 dis4\< fis fis fis \!|
% 6
fis2.\)-> \breathe fis4\( fis fis |
% 7
fis2\> fis4\! dis-- dis-- dis-- |
% 8
fis2.\)\fermata r2. |
% 9
R1. |
% 10
r2.\fermata fis2\p fis4 |
% 11
gis2-> gis4 fis2\> fis4\! |
% 12
dis2. \breathe gis2 gis4 |
% 13
gis2-> gis4 gis^\markup {\italic { rall.} } gis gis |
% 14
fis2.\fermata r |
% 15-16
R1. | r2.\fermata fis4\( fis fis |
% 17
fis2 fis4 fis2 fis4 |
% 18
fis2.\) \breathe fis4\(  fis fis |
% 19
dis2 dis4\< fis fis fis \!|
% 20
fis2.\)-> \breathe fis4\( fis fis |
% 21
fis2\> fis4\! dis-- dis-- dis-- |
% 22
fis2.\)\fermata r2. |
% 23
R1. |
% 24
r2.\fermata fis4\p fis fis |
% 25
gis2-> gis4 fis2\> fis4\! |
% 26
dis2. \breathe gis2 gis4 |
% 27
gis2-> gis4 gis2^\markup {\italic { rall.} } gis4 |
% 28
fis2.\fermata r |
% 29-30
R1. | r2\fermata fis4\p\( fis fis fis |
% 31
fis2 fis4 fis2 fis4 |
% 32
fis2.\) \breathe fis4\(  fis fis |
% 33
dis2 dis4\< fis fis fis \!|
% 34
fis2.\)-> \breathe fis4\p\( fis fis |
% 35
fis2\> fis4\! dis-- dis-- dis-- |
% 36
fis1.\)\fermata  \bar"|."
}  

tenor = \relative c' {
\clef "treble_8"
\partial 4*3 
r2. |
% 1
R1. |
% 2
r4\fermata r4 cis\p\( cis cis b |
% 3
ais2 ais4 b2 b4 |
% 4
cis2.\) \breathe ais4\( ais ais |
% 5
b2 b4\< cis cis cis \! |
% 6
b2.\)-> \breathe b4\( b b |
% 7
ais2\> ais4\! fis-- fis-- fis-- |
% 8
fis2.\)\fermata r2. |
% 9
R1. |
% 10
r2.\fermata ais2\p ais4 |
% 11
b2-> b4 ais2\> ais4\! |
% 12
b2. \breathe gis2 gis4 |
% 13
b2-> b4 b^\markup {\italic { rall.} } b b |
% 14
b2.\fermata r |
% 15-16
R1. | r2.\fermata cis4\( cis b |
% 17
ais2 ais4 b2 b4 |
% 18
cis2.\) \breathe ais4\( ais ais |
% 19
b2 b4\< cis cis cis \! |
% 20
b2.\)-> \breathe b4\( b b |
% 21
ais2\> ais4\! fis-- fis-- fis-- |
% 22
fis2.\)\fermata r2. |
% 23
R1. |
% 24
r2.\fermata ais4\p ais ais |
% 25
b2-> b4 ais2\> ais4\! |
% 26
b2. \breathe gis2 gis4 |
% 27
b2-> b4 b2^\markup {\italic { rall.} } b4 |
% 28
b2.\fermata r |
% 29-30
R1. | r2\fermata cis4\p\( cis cis b |
% 31
ais2 ais4 b2 b4 |
% 32
cis2.\) \breathe ais4\( ais ais |
% 33
b2 b4\< cis cis cis \! |
% 34
b2.\)-> \breathe b4\p\( b b |
% 35
ais2\> ais4\! fis-- fis-- fis-- |
% 36
fis1.\)\fermata  \bar"|."
}  

bas = \relative c {
\clef bass
\partial 4*3
r2. |
% 1
R1. |
% 2
r4\fermata r4 fis\p\( fis fis fis |
% 3
fis2 fis4 dis2 dis4 |
% 4
fis2.\) \breathe fis4\( fis fis |
% 5
gis2 gis4\< fis fis fis \! |
% 6
b,2.->\) \breathe b4\( b b |
% 7
fis'2\> fis4\! b,-- b-- b-- |
% 8
<cis fis,>2.\)\fermata r2. |
% 9
R1. |
% 10
r2.\fermata fis2\p fis4 |
% 11
e2-> e4 fis2\> fis4\! |
% 12
gis2. \breathe e2 e4 |
% 13
b2-> b4 e^\markup {\italic { rall.} } e e |
% 14
b2.\fermata r |
% 15-16
R1. | r2.\fermata fis'4\( fis fis |
% 17
fis2 fis4 dis2 dis4 |
% 18
fis2.\) \breathe fis4\( fis fis |
% 19
gis2 gis4\< fis fis fis \! |
% 20
b,2.\)-> \breathe  b4\( b b |
% 21
fis'2\> fis4\! b,-- b-- b-- |
% 22
<cis fis,>2.\)\fermata r2. |
% 23
R1. |
% 24
r2.\fermata fis4\p fis fis4 |
% 25
e2-> e4 fis2\> fis4\! |
% 26
gis2. \breathe e2 e4 |
% 27
b2-> b4 e2^\markup {\italic { rall.} } e4 |
% 28
b2.\fermata r |
% 29-30
R1. | r2\fermata fis'4\p\( fis fis fis |
% 31
fis2 fis4 dis2 dis4 |
% 32
fis2.\) \breathe fis4\( fis fis |
% 33
gis2 gis4\< fis fis fis \! |
% 34
b,2.->\) \breathe b4\p\( b b |
% 35
fis'2\> fis4\! b,-- b-- b-- |
% 36
<cis fis,>1.\)\fermata  \bar"|."
}

tekst = \lyricmode {
Here Ha -- le -- wijn sanc een lie -- de -- kijn;
al wie dat hoor -- de wou der bi sijn,
al wie dat hoor -- de wou der bi sijn.	 
Dat ver -- nam een co -- nincs kint,
her -- de sco -- ne en -- de be -- mint. 
En -- de si ghinc voor va -- der staen,
``Va -- der, mach ic__ naer Hal -- wi -- ne gaen?
Va -- der, mach ic__ naer Hal -- wi -- ne gaen?''
Neen, mi -- ne doch -- ter, neen, ghi siet;
die daer gaen, en kee -- ren niet."
Here Ha -- le -- wijn sanc een lie -- de -- kijn;
al wie dat hoor -- de wou der bi sijn,
al wie dat hoor -- de wou der bi sijn.	 
}

organUp = \relative c'' {
\partial 4*3 
cis4(\p ais b |
% 1
<cis fis,>2 <e gis,>4 << { dis cis b } \\ fis2. >> |
% 2
<cis' fis,>2\fermata) r4 cis( ais b | 
% 3
<< { cis2 cis4 dis cis b } \\ fis1. >> |
% 4-
<fis ais>2.) 
% 4+..6-
<< { cis'4( b ais gis4 fis gis\< ais b cis\! dis2.)} 
\\ {fis,2. dis2.  fis2. fis2.} >> 
% 6+ .. 8-
<< {dis'4( e dis cis2\> dis4\!_\markup {\italic { rall.} } cis-- ais-- b-- cis)} \\ 
{fis,2. fis2. dis <fis cis>2.\fermata} >> 
% 8+ .. 10-
<< {b4( gis b dis2. dis4 cis b cis2.)\fermata} \\ 
{ dis,2.~-"tempo" dis2. ~ dis4 fis2 fis2. } >> 
% 10+ .. 12-
<< { cis'4(\p dis cis e2-> e4 dis2 cis4 b2.)} \\ 
{fis2. gis2. fis2.\> dis2.\!} >> 
% 12+ .. 14-
<< {b'4( cis b dis2 dis4 dis cis b dis2.)\fermata} \\ 
{ gis,2. ~ gis2. gis2. fis2. } >>
% 14+ .. 16-
<< {b4( cis b dis2 gis,4 dis' cis b dis2.)\fermata} \\ 
{ gis,2.-"tempo" ~ gis2. gis2. fis2. } >>
% 16+ .. 18-
<< {cis'4( ais b cis2 cis4 dis cis b ais2.)} \\ {s2. fis1. fis2.} >> 
% 18+ .. 20-
<< { cis'4( b ais gis4 fis gis\< ais b cis \! dis2.)} \\ { fis,2. dis2.  fis2. fis2.} >>
% 20+ .. 22-
<< {dis'4( e dis cis2\> dis4\!_\markup {\italic { rall.} } cis-- ais-- b-- <cis fis,>2.)\fermata} \\ 
{fis,2. fis2. dis  cis2.} >> 
% 22+ .. 24-
<< {b'4( gis b dis2. dis4 cis b cis2.)\fermata} \\ 
{ dis,2.~-"tempo" dis2. ~ dis4 fis2 fis2. } >> 
% 24+ .. 26-
<< { cis'4(\p dis cis e2-> e4 dis2 cis4 b2.)} \\ 
{fis2. gis2. fis2.\> dis2.\!} >> 
% 26+ .. 28-
<< {b'4( cis b dis2 dis4 dis cis b dis2.)\fermata } \\ 
{ gis,2. ~ gis2. gis2. fis2. } >>
% 28+ .. 30-
<< {b4( cis b dis2 gis,4 dis' cis b dis2)\fermata} \\ 
{ gis,2.-"tempo" ~ gis2. gis2. fis2 } >>
% 30+ .. 32-
<< {cis'4( cis ais b cis2 cis4 dis cis b ais2.)} \\ {s1 fis1. fis2.} >> 
% 32+ .. 34-
<< { cis'4( b ais gis4 fis gis\< ais b cis \! dis2.->)} \\ { fis,2. dis2.  fis2. fis2.} >>
% 34+ .. 36
<< {dis'4( e dis cis2\> dis4\! cis-- ais-- b-- <cis fis,>1.)\fermata} \\ 
{fis,2.\p fis2. dis cis1.} >>  \bar"|."
}

organDown = \relative c {
\clef bass
\partial 4*3 
r2 r4 |
% 1
<fis ais>2( <e b'>4 << { b' cis dis } \\ b2. >> |
% 2
<cis fis,>2\fermata) r4 r2 r4 |
% 3
<fis, ais>2.( <dis b'>2. |
% 4
<fis cis'>2.) <fis ais>2.( |
% 5
<gis b>2. <fis cis'>2. |
% 6
<b, b'>2.) <b b'>2.( |
% 7
<ais' fis>2. <fis b,>2. |
% 8-
<fis cis fis,>2.)\fermata 
% 8+ .. 10-
<< {<gis ~ fis>2.( gis2 ais4 b cis dis cis2.)\fermata} \\ 
{s2. fis,1.~ fis2.\fermata} >> 
% 10+
<fis ais>2.( |
% 11
<e b'>2.-> <fis ais> |
% 12
<gis b>2.) <e gis>2.( |
% 13
<b b'>2. <e b'>2.^\markup {\italic { rall.} } |
% 14
<b b'>2.)\fermata <e gis>2.( |
% 15
<b b'>2. <b gis'> |
% 16
<b b'>2.) r2. |
% 17
<fis' ais>2.( <dis b'>2. |
% 18
<fis cis'>2.) 
<< {ais2.( b cis b->)} \\ { fis2. gis fis b,} >> 
% 20+
<b b'>2.( |
% 21
<ais' fis>2. <fis b,>2. |
% 22-
<fis cis fis,>2.)\fermata 
% 22+ .. 24-
<< {gis2.(~  gis2 ais4 b cis dis cis2.)\fermata} \\ 
{s2. fis,1.~ fis2.\fermata} >>
% 24+
<fis ais>2.( |
% 25
<e b'>2.-> <fis ais> |
% 26
<gis b>2.) <e gis>2.( |
% 27
<b b'>2. <e b'>2.^\markup {\italic { rall.} } |
% 28
<b b'>2.)\fermata <e gis>2.( |
% 29
<b b'>2. <b gis'> |
% 30
<b b'>2)\fermata cis'4( cis ais b |
% 31
<fis ais>2. <dis b'>2. |
% 32
<fis cis'>2.) <fis ais>2.( |
% 33
<gis b>2. <fis cis'>2. |
% 34
<b, b'>2.)-> <b b'>2.( |
% 35
<< {s2 s4^\markup {\italic { rall.} } s2 s4 } \\
{<ais' fis>2. <fis b,>2.} >> |
% 36
<fis cis fis,>1.)\fermata  \bar"|."
}

\score {
	<<
		\new ChoirStaff {
			<<
			\new Staff = sopStaff { 
			    \set Staff.instrumentName = "Sopraan" 
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = sopVoice { 
				\global 
				\autoBeamOff \dynamicUp
				\sop
			    } 
			}
			\new Lyrics \lyricsto sopVoice \tekst
			
			\new Staff = altStaff { 
			    \set Staff.instrumentName = "Alt"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altVoice { 
				\global
				\autoBeamOff \dynamicUp
				\alt
			    } 
			}
			\new Lyrics \lyricsto altVoice \tekst
		
			\new Staff = tenorStaff { 
			    \set Staff.instrumentName = "Tenor"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = tenorVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\tenor
			    } 
			}
			\new Lyrics \lyricsto tenorVoice \tekst
		
			\new Staff = bassStaff { 
			    \set Staff.instrumentName = "Bas"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = basVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\bas
			    } 
			}
			\new Lyrics \lyricsto basVoice \tekst
		
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
          tempoWholesPerMinute = #(ly:make-moment 145 4)
    }
  }
}
% EOF
