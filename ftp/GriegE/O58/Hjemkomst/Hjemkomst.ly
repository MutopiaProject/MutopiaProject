\version "2.16.2"
\language "norsk"
\header {
  title = "Hjemkomst"
  %english "Homeward"
  composer = "Edvard Grieg"
  %(1851-1924)
  poet = "John Olaf Paulsen"
  %(1851-1924)
  opus="Opus 58, Nº1"
  %Published  1894
  %as part of:
  %Norge - Fem Digte af John Paulsen
  %(5 songs of Norway)
  date = "1894"
  style = "Romantic"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainerEmail = "helge.hafting@ntebb.no"
  maintainer = "Helge Hafting"
  
  mutopiatitle="Hjemkomst"
  mutopiacomposer="GriegE"
  mutopiapoet="John Olaf Paulsen"
  mutopiaopus = "Op. 58, No.1"
  mutopiainstrument = "Piano, Voice"
  mutopiasource = "Norge - Fem Digte af John Paulsen, 1894"

 footer = "Mutopia-2013/12/21-1896"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%Override forcing grace slurs to go down. Prettier in this piece.
startAcciaccaturaMusic = {
  \once\override Slur #'direction = #DOWN
  <>\startGraceSlur
  \override Flag  #'stroke-style = #"grace"
}

%Not needed after all:
%stopAcciaccaturaMusic = {
%  \revert Flag #'stroke-style
%  <>\stopGraceSlur
%}

temaUPa = {\time 3/4 r4 <fis a c e>^.\arpeggio \stemUp <a c e fis>^.\arpeggio }
temalowAa = {\time 3/4 <e,, e'>4\p\sustainOff\sustainOn s2 }
temalowBa = {\time 3/4 s4 <fis'' a c e>4\arpeggio <a c e fis>\arpeggio }

temaUPb = {\stemUp <c e fis a>4^.\arpeggio\< <e fis a c>^.\arpeggio <fis a c e>\arpeggio\! \stemNeutral}
temaUPbdot = {\stemUp <c e fis a>4^.\arpeggio\< <e fis a c>^.\arpeggio <fis a c e>^.\arpeggio\! \stemNeutral}
temalowAb = {s2 s8 s8\sustainOff\sustainOn }
temalowBb = {\change Staff = "up" \stemDown <c e fis a>4\arpeggio <e fis a c>\arpeggio <fis a c e>8\arpeggio \change Staff="down" \stemUp <e,,, e'>-> \stemDown }


\parallelMusic #'(sang pianoupper pianolowA pianolowB pianoC) {
  
  \time 3/4 r2. |
  \temaUPa |
  \dynamicUp \time 3/4 <e,, e'>4\p\sustainOn s2 |
  \temalowBa |
  \time 3/4 s2. |
  
  r2. |
  \temaUPbdot |
  \temalowAb | 
  \temalowBb |
  s2. |

  \time 4/4 r8 e8\mf e8. fis16 fis4 h, |
  \time 4/4 e,2 e4(\< dis)\! |
  \time 4/4 \crossStaff { <g'' h>2\mf} <fis h> |
  \time 4/4 <e' h' e>2 <h  h'> |
  \time 4/4 s1 |
  
  r8 e4\< e8 h'2\! |
  <cis e>2 <h e> |
  h4(\< a) a(  gis)\!|
  <a a'>2 <e e'>|
  s1 |
  
  r8 cis4\f cis16 a16 h2 | 
  <cis e>2 e |
  \crossStaff {g2\f h} |
  <a a'>2 <e e'>|
  s2 a4( gis) |

  r8 cis cis8. a16 e'4( e,) |
  <cis e>2 e |
  \crossStaff {g2 h} |  
  <a a'>2 <e e'>|
  s2 a4( gis) |
  
  r8 b'\pp \tempo \markup {\italic "tranq."} b b c4. c8 |
  es2 <c es>2 |
  \crossStaff {<g b>2\pp ges} |
  <g g'>2 \set doubleSlurs = ##t <aes aes'>4( <a a'>) |
  s1 |
  
  c8. f,16 f2 f8[( h]) |
  es2 d2 |
  \crossStaff <f b>2 a4( h) |
  <b b'>2 <f f'>4( <g g'>) |
  s2 f2 |
  
  h4. e,8 e4( a8) a8 |
  d4( cis) c2 |
  <e, a>2 <e g>4 <es a> |
  <a a'>2 \set doubleSlurs = ##f <e e'>4( <f f'>8 <fis fis'>) |
  s1 |
  
  a4( d2.) |
  c2( h) |
  <d g>1 |
  <g g'>1 |
  s1 |
  
  r8^\markup { \italic parlando } f, b b\cresc c\! d e f |
  <f' b d f>1\arpeggio |
  <f b d>1\arpeggio\sustainOff\sustainOn |
  <d' d'>1\arpeggio |
  s4^\cresc s2.\! |
  
  %Manuelt brekk?
  \break
  
  \time 2/4 gis,2 |
  \time 2/4 \arpeggioBracket <d~ e_~ gis_~>2^>\arpeggio |
  \time 2/4 \crossStaff{\arpeggioBracket gis2~\arpeggio} |
  \time 2/4 <e~ h'~ e~>2 |
  \time 2/4 s2  |
  
  \time 4/4 r8^\markup { \italic "ben ten." } gis gis\< gis gis gis a h\! |
  \time 4/4 <d e gis>1 |
  \time 4/4 gis1 |
  \time 4/4 <e h' e>1 | 
  \time 4/4 s1 |
  
  d8--\f( cis-- c2--) c4 |
  \arpeggioNormal <f a>1\arpeggio |
  <f a>1\f\arpeggio\sustainOff\sustainOn |
  <a, a'>1\arpeggio |
  \change Staff="up" <d' d'>8--( <cis cis'>-- \acciaccatura c8 <c c'>2.) |
  
  dis,4.\dim dis8\! dis4( e8^\espressivo) e8 |
  s1 |
  \arpeggioBracket <dis a' h dis>1\arpeggio^> |
  <h fis' h>1 |
  \change Staff="down" s4^\dim s2.\! |
  
  \time 3/4 e2.~\p |
  \temaUPa |
  \temalowAa |
  \temalowBa |
  s2. |
  
  e4 r4 r4 |
  \temaUPb |
  \temalowAb |
  \temalowBb |
  s2. |
  
  \time 4/4 r4 e\mf e8 fis fis h, |
  \time 4/4 e,2\mf e4( dis) |
  \time 4/4 \crossStaff <g'' h>2 <fis h> |
  \time 4/4 <e' h' e>2 <h h'> |
  \time 4/4 s1 |
  
  e4. e8 h'2 |
  <cis e>2 <h e> |
  h4( a) a(  gis)|
  <a a'>2 <e e'>|
  s1 |
  
  r8 cis8\f cis8. a16 h4 e, | 
  <cis e>2 <h e> |
  \crossStaff g2\f a4( gis) |
  <a a'>2 <e e'>|
  s1  |

  r8 cis'4\< a8 e'4(\! e,) |
  <cis e>2 <h e> |
  \crossStaff g2\< a4( gis)\! |  
  <a a'>2 <e e'>|
  s1 |
  
  r8 b'\pp \tempo \markup {\italic "tranq."} b b c4. c8 |
  es2 <c es>2 |
  \crossStaff {<g b>2\pp ges} |
  <g g'>2 \set doubleSlurs = ##t <aes aes'>4( <a a'>) |
  s1 |
  
  c8. f,16 f2 f8[( h]) |
  es2 d2 |
  \crossStaff {<f b>2 f}  |
  <b b'>2 <f f'>4( <g g'>) |
  s2 a4( h) |

  h4. e,8 e4( a8) a8 |
  d4( cis) c2 |
  <e a>2 <e g>4 <es a> |
  <a a'>2 \set doubleSlurs = ##f <e e'>4( <f f'>8 <fis fis'>) |
  s1 |
  
  a4( d,2.) |
  c2( h) |
  <d g>1 |
  <g g'>1 |
  s1 |
  
  r8^\markup { \italic parlando } f b-> b\cresc c\! d-- e-- f-- |
  <f' b d f>1\arpeggio |
  <f b d>1\arpeggio\sustainOff\sustainOn |
  <d' d'>1\arpeggio |
  s4^\cresc s2.\! |
  
  %Avoid bad breaking
  \break
  
  \time 2/4 gis,2-- |
  \time 2/4 <d~ e_~ gis_~>2^> |
  \time 2/4 \crossStaff{ gis2~} |
  \time 2/4 <e~ h'~ e~>2 |
  \time 2/4 s2  |
  
  \time 4/4 r8^\markup { \italic "ben ten." } gis gis\< gis gis gis a h\! |
  \time 4/4 <d e gis>1 |
  \time 4/4 gis1 |
  \time 4/4 <e h' e>1 | 
  \time 4/4 s1 |

  d8[--\f( cis]-- c2--) c4 |
  \arpeggioNormal <f a>1\arpeggio |
  <f a>1\f\arpeggio\sustainOff\sustainOn |
  <a, a'>1\arpeggio |
  \change Staff="up" <d d'>8--( <cis cis'>-- \acciaccatura c8 <c c'>2.--) |
  
  dis,2\dim dis4\! dis8 e8 |
  s1 |
  \arpeggioBracket <dis a' h dis>1\arpeggio^> |
  <h fis' h>1 |
  \change Staff="down" s4^\dim s2.\! |
  
  \time 3/4 e2.~\p |
  \temaUPa |
  \temalowAa |
  \temalowBa |
  s2. |
  
  e4 r4 r4 |
  \temaUPb |
  \temalowAb |
  \temalowBb |
  s2. |
  
  \time 4/4 r4 e\mf e8 fis fis h, |
  \time 4/4 e,2\mf e4( dis) |
  \time 4/4 \crossStaff <g'' h>2 <fis h> |
  \time 4/4 <e' h' e>2 <h h'> |
  \time 4/4 s1 |
  
  e4.\< e8 h'2\! |
  <cis e>2 <h e> |
  h4( a)\< a(  gis)\!|
  <a a'>2 <e e'>|
  s1 |
  
  r4 cis8[\f a] h4 e, | 
  <cis e>2 <h e> |
  \crossStaff g2\f a4( gis) |
  <a a'>2 <e e'>|
  s1  |

  cis'8^\markup { \italic "ben ten." } cis cis a e'4->( e,) |
  <cis e>2 e |
  \crossStaff {g2 h} |  
  <a a'>2 <e e'>|
  s2 a4( gis) |
  
  r4 b'\p \tempo \markup {\italic "tranq."} c4. c8 |
  es2 <c es>2 |
  \crossStaff {<g b>2\pp ges} |
  <g g'>2 \set doubleSlurs = ##t <aes aes'>4( <a a'>) |
  s1 |

  c8. f,16 f2 f8[( h]) |
  es2 d2 |
  \crossStaff {<f b>2 f}  |
  <b b'>2 <f f'>4( <g g'>) |
  s2 a4( h) |

  h4. e,8 e e a a |
  d4( cis) c2 |
  <e a>2 <e g>4 <es a> |
  <a a'>2 \set doubleSlurs = ##f <e e'>4( <f f'>8 <fis fis'>) |
  s1 |
  
  a4( d,2.) |
  c2( h) |
  <d g>1 |
  <g g'>1 |
  s1 |
  
  r8^\markup { \italic parlando } f b b\cresc c\!^\markup {\italic "molto"} d e f |
  <f' b d f>1\arpeggio |
  <f b d>1\arpeggio\sustainOff\sustainOn |
  <d' d'>1\arpeggio |
  s4^\cresc s2.\! |

  f,2~^>\f f8 f f f |
  \stemUp b2^( a) \stemNeutral |
  \crossStaff{b2\f a} |
  <c f c'>1 |
  \change Staff = "up" <es f>1 |
  
  e4\< e e8( e'4) d8 \! |
  << {a2 gis} \\ <d e>1 >> |
  \crossStaff{ a2 gis } |
  <h h'>2.^\< <b b'>4\! |
  \change Staff = "down" e,,1 |
  
  d8--->[( cis--->] c2)--->\< c4\ff\! |
  << { <d d'>8-> <cis cis'>->\< <c c'>4 <b e b'>-> <a e' a>->\! } \\ <f' a>2 >> |
  s2\sustainOff\sustainOn <g, g'>8_>\sustainOff\sustainOn <ges ges'>_> <f c' f>4_>\sustainOff\sustainOn |
  \grace { <a a'>8 } <a' f' a>2^\markup {\italic "più"}^\f c4 s4 |
  s1 |
  
  dis,2^> dis4 dis16\<[ e] e8\! |
  s1 |
  <h, fis' h dis a' h dis>1\ff\sustainOff\sustainOn |
  s1 |
  s1 |
  
  \time 3/4 e2.^>~ |
  \temaUPa |
  {\time 3/4 \arpeggioNormal <e, e'>4\ff\arpeggio\sustainOff\sustainOn s2 } |
  {\time 3/4 s4 <fis a c e>4\arpeggio \change Staff="up" <a c e fis>\arpeggio } |
  s2. |
  
  e4 r4 r4 |
  \temaUPbdot |
  \temalowAb |
  \temalowBb |
  s2. |
  
  \time 4/4 r1 |
  \time 4/4 e,1^>~ |
  \time 4/4 <e'' gis h>1~\fff |
  \time 4/4 <e' h'>1~ |
  \time 4/4 s1 |
  
  r1 \bar "|." |
  e4 r4 r2 |
  q4\sustainOff r4 r2 |
  q4 s2. |
  s1 |
}  

\paper {
  systems-per-page = 4
}

\score {
  <<
    \new Staff \relative g' { 
      \dynamicUp \autoBeamOff 
      \clef treble \key g \major
      \tempo "Andantino un poco marcato."
      \sang } \addlyrics { Jeg stod på dæk -- ket,  og jeg så  höjt o -- ver hav 
      din stej -- le kyst  med nög -- ne skjær og |
      hol -- mer grå, hvor | må -- gen flag -- rer | tyst. 
      Hvi rö -- res nu med ét mit | sind? 
      Hvi rul -- ler lang -- somt o -- ver | kind en | tå -- re varm og |
      lind?
      Jeg kom -- mer fra et sol -- skins -- land, hvor guld -- o -- rang -- en 
      duf -- ter söd.  Nu lar en fat -- tig | tå -- ge -- strand mig |
      glem -- me sy -- dens | glöd. 
      Å Nor -- ge, hvor du er mig | kjær! 
      Net -- top med dis -- se nög -- ne | skjær! Min
      barn -- doms jo de | er. 
      Å, tag mig i din | stær -- ke favn  
      og sig mig, | at du er min mor! 
      Din sön jeg | al -- tid var, dit |
      navn jeg pri -- ste, hvor jeg | for. 
      Ja, lær mig klang, som det -- te |
      hav, at jeg kan | syn -- ge ud dit |
      krav, din | skald bli til min | grav! 
    }
    %Some bar checks removed from the lyrics, because lilypond 2.16.2
    %otherwise COMPLAINS whenever a measure start with a rest!
    \new PianoStaff <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "up" \relative g' {\clef treble \key g \major \pianoupper}
      \new Staff = "down" 
      <<
        \clef bass \key g \major
        \relative g {\pianolowA}
        \\
        \relative g,, {\pianolowB}
        \\
        \relative g {\pianoC}
      >>
    >>
  >>
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
  \midi {}
}
