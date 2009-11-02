% Het wasser te nacht also soete nacht.
% Third song from:
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
  mutopiatitle = "Het wasser te nacht also soete nacht"
  mutopiacomposer = "DuyseFv"
  mutopiainstrument = "SATB and Harmonium"
  date = "1891-08-25" % First performance
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2009-10-29"
  title =   "6 Oude Nederlandsche Liederen"
  subtitle = "3. Het wasser te nacht also soete nacht"
  poet = "16de eeuw"
  composer = "Florimond Van Duyse (1843-1910)"
  source = "A. Vanderghinste & K. Vanderauwera, Brussel, 1891. (V&V.161)"
%  meter = "Andante"
  style = "Classical"
 footer = "Mutopia-2009/11/02-1719"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \time 4/4
   \key d \minor
}

sop = \relative c'' {
\clef treble
\partial 4*1 
r4^\markup {\bold {Andante}} |
% 1
R1 |
% 2
r2 r4\fermata a\(\p |
% 3
bes4 bes8 a g4 g8 f |
% 4
g4\> g\! f\) \breathe f\( |
% 5
g4\< g8 a! bes4\> bes8 a\! |
% 6
g2\( g4\)\) \breathe c,\( |
% 7
f8 f f g a4\) \breathe a8[\( c] |
% 8
bes4\> g8[ f]\! e4\) \breathe g8\([\p a] |
% 9
bes8[^\markup {\italic {rall.}} a g] f e4 f |
% 10
g2\> f4\!\) 
\partial 4
\new Voice = "sopverse" 
\repeat volta 2 {
r4 |
% 11
R1*3 |
% 14
r2 r4 a\mf |
% 15
d c8 d f4\> e8\! \breathe d |
% 16
c-- d-- e-- c-- d4 \breathe d\p-> |
% 17
a8 bes a g f4 f |
% 18
c'2\(\> a4\!\) \breathe a4
% 19
d8 c bes d c4 f, |
% 20
bes bes a \breathe a\p |
% 21
e8 g f e d4 e |
% 22
e2\> e\! |
% 23
R1 |
% 24
r2 r4 a4\(\p |
% 25
bes4 bes8 a g4 g8 f |
% 26
g4\> g\! f\) \breathe f\( |
% 27
g4\< g8 a! bes4\> bes8 a\! |
% 28
g2\( g4\)\) \breathe c,\( |
% 29
f8 f f g a4\) \breathe a8[\(( c]) |
% 30
bes4\> g8[( f])\! e4\) \breathe g8\([( a]) |
% 31
bes8[(^\markup {\italic {rall.}} a g]) f e4 f |
}
% 32
\alternative {
    {\partial 4*3 g2\> f4\!\) }
    {g2 f2\)\fermata\bar"|."}
}
}

alt = \relative c' {
\clef treble
\partial 4*1
r4 |
% 1
R1 |
% 2
r2 r4\fermata f4\(\p |
% 3
g4 g8 f d4 d8 f |
% 4
d4\> e\! c\) \breathe c\( |
% 5
e4\< e8 f\! f4\> d8 f\! |
% 6 
f4( e8[ d]) e4\) \breathe c |
% 7
f8 f f e f4 \breathe f |
% 8
d4\> d\! c \breathe e\p |
% 9
d4.^\markup {\italic {rall.}} d8 c4 f8[ c] |
% 10
d4(\> e)\! c 
\partial 4
\new Voice = "altverse" 
\repeat volta 2 {
r |
% 11
R1*5 |
% 16
r2 r4 d'4\p->
% 17
a8 bes a g f4 f |
% 18
g4(\> e)\! a4 \breathe f |
% 19
f e f f
% 20
% \breathe below missing in original score, added by KVB
f8 e d e f4 \breathe a\p |
% 21
e8 g f e d4 e |
% 22
e2\> a,\! |
% 23
R1 |
% 24
r2 r4 f'\p |
% 25
g4 g8 f d4 d8 f |
% 26
d4\> e\! c\) \breathe c\( |
% 27
e4\< e8 f\! f4\> d8 f\! |
% 28
f4( e8[ d]) e4\) \breathe c |
% 29
f8 f f e f4 \breathe f |
% 30
d4\> d\! c \breathe e |
% 31
d4.^\markup {\italic {rall.}} d8 c4 f8[( c]) |
% 32
}
\alternative {
{\partial 4*3 d4( e) c }
{d4( e) c2\fermata\bar"|." }
}
}

tenor = \relative c' {
\clef "treble_8"
\partial 4*1
r4 |
% 1
R1 |
% 2
r2 r4\fermata d4\(\p |
% 3
d4 d8 c bes4 d8 c |
% 4
bes4\> c\! a\) \breathe a\( |
% 5
c4\< c8 c\! bes4\> g8 a16[ bes]\! |
% 6
c2\( c4\)\) \breathe c, |
% 7
c'8 d c bes a4 \breathe c8[ a] |
% 8
f4\> g\! g c\p |
% 9
g8[^\markup {\italic {rall.}} a] bes4 c8[ bes] a4 |
% 10
g4(\> c8[ bes])\! a4 
\partial 4
\new Voice = "tenverse"
\repeat volta 2 {
r |
% 11
R1*3 |
% 14
r2 r4 a\mf |
% 15
d c8 d f4\> e8\! \breathe d |
% 16
c-- d-- e-- c-- d4 \breathe d\p-> |
% 17
a8 bes a g f4 f |
% 18
c2\(\> c4\!\) r4
% 19
R1 |
% 20
r2 r4 a'4\p |
% 21
e8 g f e d4 e |
% 22
e2\> e\! |
% 23
R1 |
% 24
r2 r4 d'4\p |
% 25
d4 d8 c bes4 d8 c |
% 26
bes4\> c\! a\) \breathe a\( |
% 27
c4\< c8 c\! bes4\> g8 a16[( bes])\! |
% 28
c2\( c4\)\) \breathe c, |
% 29
c'8 d c bes a4 \breathe c8[( a]) |
% 30
f4\> g\! g c |
% 31
g8[(^\markup {\italic {rall.}} a]) bes4 c8[( bes]) a4 |
% 32
}
\alternative {
{ \partial 4*3 g4( c8[ bes]) a4 }
{ g4( c8[ bes]) a2\fermata\bar"|." }
}
}

bas = \relative c {
\clef bass
\partial 4*1
r4 |
% 1
R1 |
% 2
r2 r4\fermata d4\(\p |
% 3
g4 g8 a bes4 bes8 a |
% 4
g4\> c,\! f\) \breathe a\( |
% 5
c4\< c,8 f\! d4\> g8 g\! |
% 6
c,2\( c4\)\) \breathe c |
% 7
a'8 bes a g f4 \breathe <f f,>4 |
% 8 
bes,\> bes c \breathe c\p |
% 9
g'4.^\markup {\italic {rall.}} g8 c,4 d8[ a] |
% 10
bes4(\> c)\! f, 
\partial 4
\new Voice = "basverse"
\repeat volta 2 {
r4
% 11
R1*5 |
% 16
r2 r4 d''\p-> |
% 17
a8 bes a g f4 d |
% 18
f\>( c\!) f \breathe f |
% 19
bes g a8 g a \breathe d, |
% 20
g4 c, f \breathe a\p |
% 21
e8 g f e d4 e |
% 22
e2\> a,\! |
% 23
R1 |
% 24
r2 r4 d\p |
% 25
g4 g8 a bes4 bes8 a |
% 26
g4\> c,\! f\) \breathe a\( |
% 27
c4\< c,8 f\! d4\> g8 g\! |
% 28
c,2\( c4\)\) \breathe c |
% 29
a'8 bes a g f4 \breathe <f f,>4 |
% 30
bes,\> bes\! c \breathe c |
% 31
g'4.^\markup {\italic {rall.}} g8 c,4 d8[( a]) |
}
% 32
\alternative {
{ \partial 4*3 bes4( c) f, }
{ bes4( c) f,2\fermata\bar"|." }
}
}

refrein = \lyricmode {
Het was -- ser te nacht, al -- so soe -- te nacht,
dat al -- le die vo -- ghe -- len son -- ghen;
die fie -- re nach -- te -- gael hief op een liet
met sijn -- der wil -- der 
}

strofeEenA = \lyricmode {
Wi wa -- ren ge -- schei -- den, mijn soe -- te lief en ic;
}
strofeEenB = \lyricmode {
het is haer na so wel be -- rou -- wen. 
}
strofeEenC = \lyricmode {
Wi sou -- den al -- so saen ver -- ga -- dert sijn,
}
strofeEenD = \lyricmode {
\skip4 wou -- de si mi sijn ghe -- trou -- we.
}

strofeTweeA = \lyricmode {
Nu wil ic gaen trec -- ken al in dat groe -- ne wout,
}
strofeTweeB = \lyricmode {
die fie -- re nach -- te -- ga -- le vra -- ghen,
}
strofeTweeC = \lyricmode {
waer om -- me dat si nu ghe -- schei -- den sijn,
}
strofeTweeD = \lyricmode {
die eens twee goe -- de lief -- kens wa -- ren.
}

sopLyricsEen = \lyricmode {
    \strofeEenA 
    \strofeEenB 
    \strofeEenC 
    \strofeEenD 
    \refrein
    ton -- ghen.
}

sopLyricsTwee = \lyricmode {
    \strofeTweeA 
    \strofeTweeB 
    \strofeTweeC 
    \strofeTweeD 
    \refrein
    \skip 4 \skip 4
    ton -- ghen.
}


altLyricsEen = \lyricmode {
    \strofeEenB 
    \strofeEenC 
    \strofeEenD 
    \refrein
    ton -- ghen.
}

altLyricsTwee = \lyricmode {
    \strofeTweeB 
    \strofeTweeC 
    \strofeTweeD 
    \refrein
    \skip 4 \skip 4
    ton -- ghen.
}

tenLyricsEen = \lyricmode {
    \strofeEenA 
    \strofeEenB 
    \strofeEenD 
    \refrein
    ton -- ghen.
}

tenLyricsTwee = \lyricmode {
    \strofeTweeA 
    \strofeTweeB 
    \strofeTweeD 
    \refrein
    \skip 4 \skip 4
    ton -- ghen.
}

basLyricsEen = \lyricmode {
    \strofeEenB 
    \strofeEenC 
    \strofeEenD 
    \refrein
    ton -- ghen.
}

basLyricsTwee = \lyricmode {
    \strofeTweeB 
    \strofeTweeC 
    \strofeTweeD 
    \refrein
    \skip 4 \skip 4
    ton -- ghen.
}

organUp = \relative c'' {
\partial 4*1
% 1-
<< {a4( bes bes8 a g4) } \\ {d4\p d2.} >>
% 2-
<< {a'4( f g a)\fermata} \\ {e4 d2 a'4} >>
% 3-
<< {a( bes bes8 a g4 g8 f} \\ {f4\p g4 g8 f d4 d8 s} >>
% 4 .. 6-
<< {g4 g f) f g4 g8[ a] bes4 bes8[ a] g2.} 
\\ {d4\> e c\! c\(  e4\< e8[ f]\! f4\> d8[ f]\! f4 e8[ d] e4\)} >>
% 6+
c4( f4. <e g>8 <f a>4)
% 7+
<< {a8[( c] bes4 g8[ f] e4)} \\ {f4 d2\> c4\!} >>
% 8+
<< {g'8[( a] bes[ a g f] e4 f4 g2 f4)} \\ 
{e4\p d2 c4 f8[ c] d4\> e c\!} >> 
% 10 +
%\partial 4
\repeat volta 2 {
\once \override TextScript #'extra-offset = #'( -2.0 . 0.0 )
<e' g>8[(\p-"Tempo" <f a>] 
% 11
<g bes>[ <a f> <g e> <f d>] <c e>4 <d f> |
% 12
<e g>4 <f a>8[ <g bes>] <a c>4) 
% 12+
<< {s4 | s4 e8[ f] g[-- a-- f-- g]-- | e2 f4 } \\
{c4( | d4 c8[ d] e[ c d bes] | c4 g a) } >>
% 14+
\once \override TextScript #'extra-offset = #'( -4.0 . 0.0 )
a4-"tempo." |
% 15 .. 16
<< {d-> c8[ d] f4 e8[ d] c[-- d-- e-- c]-- d4  } \\
{a2\mf a2 a2 a4 } >>
% 17
d(\p-> a8[ bes a g] f4) f |
% 18 .. 19
<< {c'2( a4) a( d8[ c bes d] c4)} \\ 
{ g e a f f e f } >>
% 19+ .. 20
<< {f4( bes2 a4) } \\ 
{s4 f8[ e d e] f4 } >>
% 21
<a a,>4( e8[ g f e] d4) 
% 22 .. 24
<<{ e4( e2\> r4)\! a\p( e8[-- g-- f-- e]-- d4) e4( e2\> a,4\!)} \\
{s4 s2 a2 s1 s2.} >>
% 25
<< {a'4( bes bes8 a g4 g8 f} \\ 
{
\once \override TextScript #'extra-offset = #'( -3.0 . 0.0 )
f4-"tempo."\p g4 g8 f d4 d8 s} >>
% 26 .. 28-
<< {g2 f4) f g4 g8[ a] bes4 bes8[ a] g2.} 
\\ {d4\> e c\! c\(  e4\< e8[ f]\! f4\> d8[ f]\! f4 e8[ d] e4\)} >>
% 28+..29+
<< {c4( f4. <e g>8 a4) a8[( c] bes4 g8[ f] e4)} \\ 
{s4 s2 f2 d2\> c4\!} >>
% 30+
<< {g'8[( a] bes[ a g f] e4 f4 }  \\ 
{e4 d2^\markup {\italic {rall.}} e4 f8[ c] } >> 
}
\alternative {
        { << {\partial 4*3 g'2 f4) } \\ {\partial 4*3 d4\> e c\!} >> }
        { << { g'2 f2\fermata\bar"|." } \\ {d4 e c2} >> }
    }
}

organDown = \relative c {
\clef bass
\partial 4*1
% 1-
d4( g g8 a bes4)
% 2-
c( d8 c bes4 a)\fermata
% 3-
<d d,>4( <d g,> <d g,>8 <c a> bes4 bes8 <c a> |
% 4
<bes g>4 <c c,> <a f>) a( |
% 5
<< {c2 bes4 g8 a16 bes} \\ {c4 c,8 f d g4} >> |
% 6
<c c,>2.) c,4( |
% 7
<a' c>8[ <bes d> <a c> <g bes>] <f a>4)
% 7+
<< {c'8[ a] f4 g g} \\ {f4( bes,2 c4)} >>
% 8+
<< {c'4 g8[ a] bes4 c8[ bes] a4 g c8[ bes] a4 } \\ 
{c,4( g'4.^\markup {\italic {rall.}} g8 c,4 d8[ a] bes4 c <c f,>) } >>
% 11
%\partial 4
\repeat volta 2 {
r4
% 11
\clef treble
r4 <e' g>8[( <f a>] <g bes>[ <f a> <e g> <d f>] |
% 12
<e c>[ <bes d> <a c> <g bes>] <f a>) 
% 12+..14
<< {a'8[\( g a] | bes[ a g f] 
\clef bass e4^\markup {\italic {rall.}} d c8[-- d-- bes-- c--] a4\)} \\
{ f'8[ e f] | g[ f e d] \clef bass c8[ a d g,] c4 c, f} >>
% 14+
a4 |
% 15
\clef bass
f'2 d |
% 16
<e a,> <f d>4 d->(
% 17
a8[ bes a g] f4) 
% 17+..18
<< {a4 c2 ~ c4 } \\
{d,4( e c f)} >>
% 18+ ..19
f4( bes g a8[ g a d,] |
% 20..21
g4 c, f) a,( e'8[ g f e] d4)
% 21+ .. 24-
<< {e4( e2 r4) a4( e8--[^\markup {\italic {rall.}} g-- f-- e]-- d4) e( e2 a,4)} \\ 
{s4 r4 e a2 a1 r4 e a} >>
% 24+
<d' d,>4( <d g,> <d g,>8 <c a> bes4 bes8 <c a> |
% 
<bes g>4 <c c,> <a f>) 
% 27
<< {s4 c2 bes4 g8 a16 bes} \\ {a4( c,4) c8[ f] d4 g4} >> |
% 28
<c c,>2. c,4( |
% 29-
<a' c>8[ <bes d> <a c> <g bes>] <f a>4)
% 29+..30-
<< {c'8[ a] f4 g g} \\ {f4( bes,2 c4)} >>
% 30+
<< {c'4 g8[ a] bes4 c8[ bes] a4}  \\ 
{c,4( g'4. g8 c,4 d8[ a] } >>
}
\alternative {
        {<< {\partial 4*3 g'4 c8[ bes] a4 } \\ {\partial 4*3 bes,4 c f,) } >> }
        {<< {g'4 c8[ bes] a2\fermata\bar"|." } \\ {bes,4 c f,2\fermata } >> }
    }
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
			\new Lyrics = "sopmainlyrics" \lyricsto sopVoice \refrein
			\context Lyrics = "sopmainlyrics" \lyricsto sopverse \sopLyricsEen
			\new Lyrics = "soprepeatlyrics" \lyricsto sopverse \sopLyricsTwee
			
			\new Staff = altStaff { 
			    \set Staff.instrumentName = "Alt"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altVoice { 
				\global
				\autoBeamOff \dynamicUp
				\alt
			    } 
			}
			\new Lyrics = "altmainlyrics" \lyricsto altVoice \refrein
			\context Lyrics = "altmainlyrics" \lyricsto altverse \altLyricsEen
			\new Lyrics = "altrepeatlyrics" \lyricsto altverse \altLyricsTwee
		
			\new Staff = tenorStaff { 
			    \set Staff.instrumentName = "Tenor"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = tenVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\tenor
			    } 
			}
			\new Lyrics = "tenmainlyrics" \lyricsto tenVoice \refrein
			\context Lyrics = "tenmainlyrics" \lyricsto tenverse \tenLyricsEen
			\new Lyrics = "tenrepeatlyrics" \lyricsto tenverse \tenLyricsTwee
		
			\new Staff = bassStaff { 
			    \set Staff.instrumentName = "Bas"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = basVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\bas
			    } 
			}
			\new Lyrics = "basmainlyrics" \lyricsto basVoice \refrein
			\context Lyrics = "basmainlyrics" \lyricsto basverse \basLyricsEen
			\new Lyrics = "basrepeatlyrics" \lyricsto basverse \basLyricsTwee
		
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
          tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}
% EOF
