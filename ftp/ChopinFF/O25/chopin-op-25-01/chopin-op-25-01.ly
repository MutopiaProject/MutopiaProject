\version "2.16.1"

\header {
  filename      =       "op-25-01.ly"
  title         =       "13. Etüde As-Dur"
  composer      =       "Frédéric Chopin (1810 - 1849)"
  opus          =       "Opus 25, Nr. 1"
  enteredby     =       "Roland Goretzki"

 mutopiatitle = "Etüde As-Dur"
 mutopiacomposer = "ChopinFF"
 mutopiaopus = "Op. 25, No. 1"
 mutopiainstrument = "Piano"
 date = "1828-1831"
 source = "Peters, Herrmann Scholtz, 1900b"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Roland Goretzki"
 maintainerEmail = "roland@roland-goretzki.de"

 footer = "Mutopia-2013/03/23-489"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\include "deutsch.ly"

global =   {
  \key as \major
  \partial 4
  \time 4/4
  s4
  s1*49
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %

oben = \change Staff = up
unten = \change Staff = down

%%%   Für den Pedalwechsel des normalen Pedals (PC für Pedal Change):
PH = \sustainOff
PR = \sustainOn

cresc = \markup { \italic cresc. }
dimin = \markup { \italic dimin. }
dim = \markup { \italic dim. }
rit = \markup { \italic rit. }
nuto = \markup { \italic ritenuto }
appa = \markup { \italic appassionato }
tempO = \markup { \italic { a tempo } }
smorzando = \markup { \italic { smorzando } }

Axdefault = \accidentalStyle "default"
Axpiano = \accidentalStyle "piano"

KlammerWeg = \override TupletBracket #'stencil = ##f
TriolenZahlWeg = \override TupletNumber #'stencil = ##f

DecoratedHairpin = #(define-music-function (parser location text) (markup?)
#{
\once\override Hairpin #'height = #'1.5
\once\override Hairpin #'stencil = #(lambda (grob)
(ly:stencil-aligned-to
(ly:stencil-add
(ly:stencil-aligned-to
(ly:stencil-aligned-to
(ly:hairpin::print grob)
Y CENTER) X CENTER)
(ly:stencil-translate
(ly:stencil-aligned-to (grob-interpret-markup grob text) Y CENTER) '(1 . 0)))
X LEFT))
#})

%%% Für den ständigen Wechsel der Größe der Notenköpfe:

KlK = {
        \override Fingering #'font-size = #-6
        \override NoteHead #'font-size = #-3
      }                                         % Kl ein K opf

NoK = {
        \revert Fingering #'font-size
        \revert NoteHead #'font-size
      }                                         % No rmal K opf

%                                                                       %
%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rechts =  \new Voice = "rechts" \relative c''{
    \tempo "Allegro sostenuto" 4=104
    \override DynamicLineSpanner #'avoid-slur = #'inside
    \override DynamicLineSpanner #'direction = #UP
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
    \KlammerWeg
    es4(                 % Auftakt
  %%%%======== -------------------------------------------------------- ---------
    \times 2/3 {
       es16-4 \KlK as,_2 c_3 es, as c
    \TriolenZahlWeg
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c                                  | % Takt  1
  %%%%======== -------------------------------------------------------- ---------
      \NoK f-5 \KlK as, c es, as c
      \NoK  es-4 \KlK as, c es, as c
      \NoK es \KlK as, c es, as c)
      \NoK es( \KlK as, c es, as c)                 | % Takt  2
  %%%%======== -------------------------------------------------------- ---------
      \NoK  es-4( \KlK b des es, b' des
      \NoK es \KlK b des es, b' des
      \NoK  f-5 \KlK b, des es, b' des
      \NoK  es-4 \KlK b des es, b' des          | % Takt  3
  %%%%======== -------------------------------------------------------- ---------
      \NoK  b' \KlK c,-2 es-3 es, c' es
      \NoK as \KlK c, es es, c' es
      \NoK  as \KlK c,-2  e-4 e, c' e)
      \NoK as( \KlK c, e e, c' e)                  | % Takt  4
  %%%%======== -------------------------------------------------------- ---------
      \NoK as-5( \KlK  des,-2 f-4 as, des f-3
      \NoK  as-4 \KlK des, f as, des f
      \NoK as \KlK des, f as, des f
      \NoK  b-5 \KlK des,-2 f g, des' f                         | % Takt  5
  %%%%======== -------------------------------------------------------- ---------
      \NoK  c'-5 \KlK c,-2  f-4 g, c  f
      \NoK  b-5 \KlK c,-2  e-3 g, c e
      \NoK  as-5 \KlK c, f-4 as, c f)
      \NoK  f-5( \KlK ces-2  es-3 f, ces' es)                       | % Takt  6
  %%%%======== -------------------------------------------------------- ---------
      \NoK  f-5( \KlK  b,-2 es-4 f,  b es-3
      \NoK g \KlK b, es f, b es
      \NoK  as-5 \KlK  b,-2 d-3 f, as b)
      \NoK b-4( \KlK f as b, f' as                   | % Takt  7
  %%%%======== -------------------------------------------------------- ---------
      \NoK b-4 \KlK es, as b, es as
      \NoK  c-5 \KlK es, as b, es  as
      \NoK des! \KlK es, g b, des_2 es_3)
      \NoK es_4( \KlK b des es, b' des)            | % Takt  8
  %%%%======== -------------------------------------------------------- ---------
      \NoK  es'16-5( \KlK as,-2  c-4 es, as  c-3
      \NoK  es-4 \KlK as, c es, as c
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c                                  | % Takt  9
  %%%%======== -------------------------------------------------------- ---------
      \NoK   f-5 \KlK as, c es, as c
      \NoK  es-4 \KlK as, c es, as c
      \NoK es \KlK as, c es, as c)
      \NoK es( \KlK as, c es, as c)                 | % Takt 10
  %%%%======== -------------------------------------------------------- ---------
      \NoK   es-4( \KlK b des es, b'  des-3
      \NoK  b'-5 \KlK b,-2  des-3 es, b' des
      \NoK c' \KlK b, des es,  b' des
      \NoK g \KlK b, des es, b' des                                   | % Takt 11
  %%%%======== -------------------------------------------------------- ---------
      \NoK b' \KlK  c,-2 es-3 es, c' es
      \NoK as \KlK c, es es, c' es
      \NoK as \KlK  c,-2 e-4 e, c' e)
      \NoK as( \KlK c, e e, c' e)                      | % Takt 12
  %%%%======== -------------------------------------------------------- ---------
      \NoK  as-5( \KlK des,-2 f-4 as, des f-3
      \NoK  as-4 \KlK des, f as, des f
      \NoK as \KlK des, f as, des f
      \NoK  b-5 \KlK des,-2 f g, des' f                      | % Takt 13
  %%%%======== -------------------------------------------------------- ---------
      \NoK   c'-5 \KlK c,-2 f-4 g, c f
      \NoK g \KlK c, f g, c f
      \NoK g \KlK c,  e-4 g, c e)
      \NoK g( \KlK c, e-- g, c e)                    | % Takt 14
  %%%%======== -------------------------------------------------------- ---------
      \NoK g( \KlK  h, e---4 f, h e
      \NoK g \KlK h, d---3 f, h d
      \NoK g \KlK h, f'---4 f, h f'
      \NoK g \KlK h, e---4 f, h e                  | % Takt 15
  %%%%======== -------------------------------------------------------- ---------
      \NoK  d->-5 \KlK f,---2 g c, f g
      \NoK c \KlK e,-- g c, e g
      \NoK c \KlK d,-- g c, d g)
      \NoK  c( \KlK e,-- g c, e g)                   | % Takt 16
  %%%%======== -------------------------------------------------------- ---------
      \NoK  c-5( \KlK g b! c, g'-2  b-3
      \NoK c-4 \< \KlK g b c, g' b
      \NoK  des!-5 \!  \KlK g,  b \> c, g'  b-3
      \NoK  c-4 \KlK g b c, g' \! b                | % Takt 17
  %%%%======== -------------------------------------------------------- ---------
      \NoK  c-4 \KlK f, b \< c, f b
      \NoK  d-5  \KlK f,-2  as-3 c, f as
      \NoK e' \KlK  g,-2 c-4 c, g' c \!
      \NoK f \KlK  as,-2 c-4 c, as' c)               | % Takt 18
  %%%%======== -------------------------------------------------------- ---------
      \NoK  es!-5( \KlK b des!  es, \<  b'-2 des-3
      \NoK  es-4 \KlK b des es, b' des
      \NoK  f-5 \! \KlK b, \> des es, b' des-3
      \NoK  es-4 \KlK b des es, \! b' des           | % Takt 19
  %%%%======== -------------------------------------------------------- ---------
      \NoK es \KlK as,  des-3 es, \< as des
      \NoK  f-5 \KlK as, c-3 es, as c
      \NoK g' \KlK  as,-2 c-3 es, as c \!
      \NoK as' \KlK  as,-2 c-3 es, as c)              | % Takt 20
  %%%%======== -------------------------------------------------------- ---------
      \NoK  g'-5( \KlK c, es-4 g, c es
      \NoK g \KlK c, es g, c es
      \NoK  as \KlK c, d-3 as c d
      \NoK  f-5 \KlK h, d-3 f, h   d-4        | % Takt 21
  %%%%======== -------------------------------------------------------- ---------
      \NoK  e-5 \KlK g,-2 c-4 e, g c
      \NoK  d-5 \KlK  as!-2 h-3 d, as' h
      \NoK  f' \KlK as, h f as h
      \NoK e! \KlK as,! h! e,! as h)               | % Takt 22
  %%%%======== -------------------------------------------------------- ---------
      \NoK e( \KlK g, c e, g c-4
      \NoK d \KlK  gis, h-3 d, gis h
      \NoK  f' \KlK gis, h f gis h
      \NoK e \KlK gis, h e, \! gis h                                  | % Takt 23
  %%%%======== -------------------------------------------------------- ---------
      \NoK e \KlK a,  
    \crescTextCresc
    \once\set crescendoText = \nuto
        cis-4^\< e, a cis
      \NoK d \KlK a  h-3 d, a' h
      \NoK fis' \KlK a, h fis a h
      \NoK e \KlK  gis,-2 d'-4 e, gis d')             | % Takt 24
  %%%%======== -------------------------------------------------------- ---------
      \NoK  e-5( \KlK a, cis-3 e, a cis)
      \NoK  a'-5( \KlK cis,-2 e a, cis e
      \NoK h' \KlK  \Axpiano dis,-2 \Axdefault fis-3 a, dis fis
      \NoK c'! \KlK es, ges as, es' ges \!                            | % Takt 25
  %%%%======== -------------------------------------------------------- ---------
      \NoK c \KlK  des,!-2 f!-4 f,  des'-2 f-3
      \NoK b! \KlK des, f f, des' f
      \NoK  des' \KlK  b,-2 des-3 f, b des)
      \NoK f( \KlK b, des f, b des)                 | % Takt 26
  %%%%======== -------------------------------------------------------- ---------
      \NoK b'16( \KlK  c,-2 es-3 es, c' es
      \NoK  as \KlK c, es es, c' es
      \NoK  c' \KlK as,-2  c-4 es, as c)
      \NoK es( \KlK as, c es, as c                                 | % Takt 27
  %%%%======== -------------------------------------------------------- ---------
      \NoK es \KlK  g,-2 b-3 des, g b
      \NoK  e \KlK g, b des, g b
      \NoK  f' \KlK g, b des, g b
      \NoK es \KlK g, b des, g b)                      | % Takt 28
  %%%%======== -------------------------------------------------------- ---------
      \NoK  des( \KlK f, as des, f as
      \NoK c \KlK f, as c, f as
      \NoK c \KlK es, f c es f)
      \NoK c''->( \KlK  es,-2 f-3 c es f                                  | % Takt 29
  %%%%======== -------------------------------------------------------- ---------
      \NoK c' \KlK  des,-2 f-4 f, des'  f-3
      \NoK b \KlK des, f f, des' f
      \NoK des' \KlK  b,-2 des-3 fes, b des)
      \NoK fes( \KlK b, des fes, b des)             | % Takt 30
  %%%%======== -------------------------------------------------------- ---------
      \NoK b'16( \KlK  c,-2 es-3 es, c' es
      \NoK as \KlK c, es es, c' es
      \NoK  c' \KlK as,-2  c-4 es, as c)
      \NoK es( \KlK as, c es, as c                                 | % Takt 31
  %%%%======== -------------------------------------------------------- ---------
      \NoK  es-5 \KlK a,-2 c-3 es, a c
      \NoK f \KlK a, c es, a c
      \NoK ges' \KlK a, c es, a c
      \NoK f \KlK a, c es, a c)                     | % Takt 32
  %%%%======== -------------------------------------------------------- ---------
      \NoK f( \KlK  b,-2 des-3 des, b' des
      \NoK g! \KlK b, des f, b des
      \NoK as' \KlK  h,-2 d-3 f, h d
      \NoK g \KlK h, d f, h d                                        | % Takt 33
  %%%%======== -------------------------------------------------------- ---------
      \NoK g \KlK  c,-2 es-3 es, c' es
      \NoK as \KlK c, es as, c es
      \NoK a \KlK c, es a, c es)
      \NoK ges'^\appa( \KlK a,!-2 c-3 es, a c)         | % Takt 34
  %%%%======== -------------------------------------------------------- ---------
      \NoK f( \KlK  f,-2 as!-3 b, f' as
      \NoK  b-4 \KlK f as b, f'  as
      \NoK des! \KlK fes, as-3 b, fes'  as-4
      \NoK  g!-5 \KlK des es g, des' es            | % Takt 35
  %%%%======== -------------------------------------------------------- ---------
      \NoK  as-5^\tempO \KlK as,-2 \p c-3 es, as c)
      \NoK   es-4( \KlK as, c es, as c
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c)                 | % Takt 36
  %%%%======== -------------------------------------------------------- ---------
      \NoK f( \KlK  b,-2 des-3 es, b' des
      \NoK  es-4 \KlK b des es, b' des
      \NoK c'  \KlK b,-2  des-3 es, b' des
      \NoK g \KlK b, des es, b' des                                   | % Takt 37
  %%%%======== -------------------------------------------------------- ---------
      \NoK as' \KlK  as,-2 c-4 es, as c-3)
      \NoK  es-4( \KlK as, c es, as  c
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c)                                 | % Takt 38
  %%%%======== -------------------------------------------------------- ---------
      \NoK  f( \KlK b, des es, b' des
      \NoK  es-4 \KlK b des es, b' des
      \NoK  f' \KlK b,,-2  des-3 es, b' des
      \NoK g \KlK b, des es, b' des                                   | % Takt 39
  %%%%======== -------------------------------------------------------- ---------
      \NoK as' \KlK  as,-2 c-3  es, as c)
      \NoK  es-4( \KlK as, c es, as c
      \NoK  f \KlK as, c es, as c
      \NoK es-4 \KlK  as,-2 c-3 es, as c-4)                                    | % Takt 40
  %%%%======== -------------------------------------------------------- ---------
      \NoK  des^5( \KlK es,^2  as^3 \NoK des, \KlK es as
      \NoK  c^5 \KlK es,^2 as \NoK c, \KlK es as
      \NoK des \KlK es, as \NoK des, \KlK es as
      \NoK c \KlK es, as \NoK c, \KlK es as                           | % Takt 41
  %%%%======== -------------------------------------------------------- ---------
      \NoK  b^5 \KlK c,^2  es^3 \NoK b \KlK c es
      \NoK as \KlK c, es \NoK as, \KlK c es
      \NoK b' \KlK c, es \NoK b \KlK c es
      \NoK  as \KlK c, es \NoK as, \KlK c es)                                | % Takt 42
  %%%%======== -------------------------------------------------------- ---------
      \NoK b'( \KlK c, es \NoK b \KlK c es
      \NoK as \KlK c, es \NoK as, \KlK c es
      \NoK b' \KlK c, es \NoK b \KlK c es
      \NoK as \KlK c, es \NoK as, \KlK c es)                       | % Takt 43
  %%%%======== -------------------------------------------------------- ---------
      r \unten \voiceOne
        c,_1^\markup { \italic leggierissimo }(
         es_2  as_4
        \oben \oneVoice c_1 es
      as  c-1 es \ottava #1 as c-1 es
      \NoK  as-4 \KlK es c as-4 es  c-1
      \NoK  as-2 \KlK c-1 es as  c-1 es)         | % Takt 44
  %%%%======== -------------------------------------------------------- ---------
      \NoK   as-4( \KlK es c  as-4 es c
      \NoK  as-2 \KlK c-1 es as  c-1 es
      \NoK  as-4 \KlK es c as-4 es c
      \NoK  as-2 \KlK c-1 es as  c-1 es                          | % Takt 45
  %%%%======== -------------------------------------------------------- ---------
      \NoK  as-4 \KlK es c as-4 es c \ottava #0
       as-2 c-1 as'-3 c-5 as  c,-1
       as-2 c-1 as' c as c,
       as-2 c-1 as' c as c,)                       | % Takt 46
  %%%%======== -------------------------------------------------------- ---------
      as-2( c-1 as' c as c,
      as c as' c as c,
      as c as' c as c,
      as c as' c as c,
    }                                                                 | % Takt 47
  %%%%======== -------------------------------------------------------- ---------
     \NoK as4-.)
      <as' as'>-. r
      <es,-2 c'-5>(                                                   | % Takt 48
  %%%%======== -------------------------------------------------------- ---------
     <c-1 as'-4>1\arpeggio)                        | % Takt 49
  %%%%======== -------------------------------------------------------- ---------
}

Dynamics =  \new Dynamics {
    s4\p                                                  % Auftakt
  %%%%======== ---------------------------------------- --------------
    \times 2/3 {
      s16 s s s s s \<  s s s s s s
      s s s s s s  s s s s s s \! | % Takt  1
  %%%%======== -------------------------------------------------------- ---------
      s \> s s s s s  s s s s s s
      s s s s s s  s s s \! s s s | % Takt  2
  %%%%======== -------------------------------------------------------- ---------
      s s s s \< s s  s s s s s s \!
      s \> s s s s s  s s s s s s \! % Takt  3
  %%%%======== -------------------------------------------------------- ---------
      s s \> s s s s  s s \! s s s s
      s \< s s s s s  s s s s s s \! % Takt  4
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s  s s \< s s s s
      s s s s s s  s s s s s s % Takt  5
  %%%%======== -------------------------------------------------------- ---------
      s \! s s s s s  \> s s s s s s
      s s s s s s  s s \! s s s s % Takt  6
  %%%%======== -------------------------------------------------------- ---------
      s s s s s \< s  s s s s s s
      s s s s s s  s s \! s s s s % Takt  7
  %%%%======== -------------------------------------------------------- ---------
      s \f s s s s s  s s s s s s \>
      s s s s s s  s s s s s s % Takt  8
  %%%%======== -------------------------------------------------------- ---------
      s \p s s s s s  s \< s s s s s
      s s s s s s  s s s s s s \! % Takt  9
  %%%%======== -------------------------------------------------------- ---------
      s \> s s s s s  s s s s s s
      s s s s s s  s s s s s \! s % Takt 10
  %%%%======== -------------------------------------------------------- ---------
      s \< s s s s s  s s s s s s
      s \! s s s s \> s  s s s s s s % Takt 11
  %%%%======== -------------------------------------------------------- ---------
      s \! s \> s s s s  s s s s s s
      s \! s s s s s  s s s s s s % Takt 12
  %%%%======== -------------------------------------------------------- ---------
      s s s s \< s s  s s s s s s
      s s s s s s  s s s s s s \! % Takt 13
  %%%%======== -------------------------------------------------------- ---------
      s \> s s s s s  s s s s s s
      s s s s s s  s s s \! s s s % Takt 14
  %%%%======== -------------------------------------------------------- ---------
      s s \< s s s s  s s s s s s
      s s s s s s \!  s s \> s s s s % Takt 15
  %%%%======== -------------------------------------------------------- ---------
      s s \! s s s s  s s s s s s
      s s s s s s  s \p s s s s s % Takt 16
  %%%%======== -------------------------------------------------------- ---------
    s16 s s s s s s s s s s s
    s s s s s s s s s s s s \>
    s16 s s s s s s s s s s s
    s s s s s s \! s s s s s s                       | % Takt 17 - 18
  %%%%======== ---------------------------------------- --------------
    s s s s s s s s s s s s
    s s s s s s s s s s s  s \>
    s s s s s s s s s s s s
    s s s s s s \!  s s s s s s                      | % Takt 19 - 20
  %%%%======== ---------------------------------------- --------------
      s s s \< s s s  s s s s s s \!
      s \> s s s s s  s s s s s s \! % Takt 21
  %%%%======== -------------------------------------------------------- ---------
      s \p s s \< s s s  s s s \! s s s
      s \> s s s s s  s s s s s \! s % Takt 22
  %%%%======== -------------------------------------------------------- ---------
      s s s \< s s s  s s s s s s \!
      s \> s s s s s  s s s s \! s s % Takt 23
  %%%%======== -------------------------------------------------------- ---------
      s16 s s \< s s s
      s s s s s s \!
      s \> s s s s s
      s s s s \! s s                        | % Takt 24
  %%%%======== ---------------------------------------- --------------
      s \DecoratedHairpin \markup {\italic cresc.}
      s\< s s s s
      s s s s s s
      s s s s s s
      s s s s s s                           | % Takt 25
  %%%%======== ---------------------------------------- --------------
      s\f s s s s s \<
      s s s s s \! s
      s \> s s s s s
      s s s \! s s s                        | % Takt 26
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s
      s \< s s s s s \!
      s \> s s s s s
      s s \! s s s s                        | % Takt 27
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s
      s \< s s s s s \!
      s \> s s s s s \!
      s s s s s s                        | % Takt 28
  %%%%======== -------------------------------------------------------- ---------
      s \> s s s s s
      s s s s s s
      s s s s s s \!
      s s s s s s                        | % Takt 29
  %%%%======== -------------------------------------------------------- ---------
      s s s s \< s s
      s s s s s s \!
      s \> s s s s s
      s s s \! s s s                        | % Takt 30
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s
      s s s \< s s s \!
      s \> s s s s s
      s s s s \! s s                        | % Takt 31
  %%%%======== -------------------------------------------------------- ---------
      \crescTextCresc
      s \p s s s s s
      \once\set crescendoText = \markup { \italic cre }
      s \< s s s s s
      s s s s s s
      s s s s s s                        | % Takt 32
  %%%%======== -------------------------------------------------------- ---------
      \once\set crescendoText = \markup { \italic scen }
      s \< s s s s s
      s s s s s s
      s s s s s s
      s s s s s s                        | % Takt 33
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s
      s s s s s s
      s s s s
      \once\set crescendoText = \markup { \italic do }
      s \< s
      s \f s s s s s                        | % Takt 34
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s
      s s s s s s-\rit
      s s s s s s
      s s s s s s                        | % Takt 35
  %%%%======== -------------------------------------------------------- ---------
      \crescHairpin
      s \fz s s s s s
      s \< s s s s s
      s s s s s s
      s s s s \! s s                        | % Takt 36
  %%%%======== -------------------------------------------------------- ---------
      s s \> s s s s
      s s s s s s
      s \! s s s s s
      s s s s s s                        | % Takt 37
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s
      s s s s s s \<
      s s s s s s
      s s s s \! s s                        | % Takt 38
  %%%%======== -------------------------------------------------------- ---------
      s \> s s s s s
      s s s s s s \!
      s \pp s s s s s
      s s s s s s                        | % Takt 39
  %%%%======== -------------------------------------------------------- ---------
      s s s s \< s s
      s s s s s s \!
      s \> s s s s s
      s s s s s s \!                       | % Takt 40
  %%%%======== -------------------------------------------------------- ---------
      \crescTextCresc
      \once\set crescendoText = \dimin
      s \< s s s s s
      s s s s s s
      s s s s s s
      s s s s s s                        | % Takt 41
  %%%%======== -------------------------------------------------------- ---------
      s s s s s s
      s s s s s s
      s s s s s s
      \once\set crescendoText = \smorzando
      s\< s s s s s                        | % Takt 42
  %%%%======== -------------------------------------------------------- ---------
      s16*24                       | % Takt 43
  %%%%======== -------------------------------------------------------- ---------
      s16 \pp s s s s s
      s s s s s s
      s s s s s s
      s s s s s s                        | % Takt 44
  %%%%======== -------------------------------------------------------- ---------
      s16*24                       | % Takt 45
  %%%%======== -------------------------------------------------------- ---------
      \crescHairpin
      s16 s s s s s \<
      s s s s s s
      s s s s s s
      s s s s s s                       | % Takt 46
  %%%%======== -------------------------------------------------------- ---------
      s \> s s s s s
      s s s s s s
      s s s s s s
      s s s s s s                        | % Takt 47
    }                                                                 | % Takt 47
  %%%%======== -------------------------------------------------------- ---------
     s4\pp                                                   % Takt 48
  %%%%======== ---------------------------------------- --------------
}

links =  \context Staff \relative c{
  %% -- %% Die linke Hand hat 113 Fingersätze!
  %% -- %% Davon sind 52 gesteuert und 61 Standard.
  \override DynamicLineSpanner #'avoid-slur = #'inside
  \override DynamicLineSpanner #'direction = #DOWN
    r4                                                                  % Auftakt
  %%%%======== -------------------------------------------------------- ---------
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \KlammerWeg
    \times 2/3 {
      as,16 \PR \KlK es''_3
      as c as es
  \TriolenZahlWeg
      \NoK as,16 \KlK es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                            | % Takt  1
  %%%%======== -------------------------------------------------------- ---------
      as,16 es' as c as es
      as,16 \PH\PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                                        | % Takt  2
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR es'-3 g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g, es                                | % Takt  3
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR es'-3 as c as es
      as,16 es' as c as es
      as,16 \PH\PR e'-3 as c as e
      as,16 e' as c as e                                    | % Takt  4
  %%%%======== -------------------------------------------------------- ---------
      \NoK des, \PH\PR \KlK
       as''-3 des f des as
      \NoK des, \KlK as' des f des as
      des, as' des f des as
      \NoK des, \PH\PR \KlK g-4 des' f des g,                  | % Takt  5
  %%%%======== -------------------------------------------------------- ---------
      \NoK c, \PH\PR \KlK g'-3 c f c g
      c, \PH\PR g'-3 c e c g-4
      f \PH\PR as c f c as
      \NoK ces,-> \PH\PR \KlK  f-3 as es' as,
        f                                                         | % Takt  6
  %%%%======== -------------------------------------------------------- ---------
      \NoK b, \PH\PR \KlK f' as es' as, f
      b, f' as es' as, f
      b, \PH\PR f' as d as f
      b, f' as d as f                                                         | % Takt  7
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PH\PR \KlK  b'-3 es-2 des'! es, b
      es, \PH\PR  b'-3 es-2 as es b
      es, \PH\PR b' es g es b
      es, b' es g es b                                      | % Takt  8
  %%%%======== -------------------------------------------------------- ---------
      \NoK as,16 \PH\PR \KlK es''_3 as c as es
      \NoK as,16 \KlK es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                            | % Takt  9
  %%%%======== -------------------------------------------------------- ---------
      as,16 es' as c as es
      as,16 \PH\PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                  | % Takt 10
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR  es'-3 g des' g, es
      as,16 es' g des' g, es
      as,16 \PH\PR es' g des' g, es
      as,16 es' g des' g, es                                | % Takt 11
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR es' as c as es
      as,16 es' as c as es
      as,16 \PH\PR  e'-3 as c as e
      as,16 e' as c as e                                    | % Takt 12
  %%%%======== -------------------------------------------------------- ---------
      \NoK des, \PH\PR \KlK as''-3 des f des as
      des, as' des f des as
      des, as' des f des as
      des, \PH\PR g-4 des' f des g,                            | % Takt 13
  %%%%======== -------------------------------------------------------- ---------
      \NoK c, \PH\PR \KlK g'-3 c f c g
      c, g' c f c g
      c, \PH\PR g'-3 c e c g
      c, g' c e c g                                         | % Takt 14
  %%%%======== -------------------------------------------------------- ---------
      \NoK g, \PH\PR \KlK d'-3 g h g d
      g, \PH\PR d' g h g d
      g, d' g d' g, d
      g, \PH\PR d' g d' g, d-3                             | % Takt 15
  %%%%======== -------------------------------------------------------- ---------
      \NoK c, \PH\PR \KlK  g'-3 c-2 g' c, g
      c, \PH\PR g' c g' c, g
      c, \PH\PR g' c g' c, g
      c, \PH\PR g' c
    }
      g' c,                                                          | % Takt 16
  %%%%======== -------------------------------------------------------- ---------
      \NoK e, \PH\PR  \KlK c'-2 \NoK b' \KlK c,
      e, c' \NoK b' \KlK c,
      e, \PH\PR c' \NoK b' \KlK c,
      e, \PH\PR c' \NoK b' \KlK c,                           | % Takt 17
  %%%%======== -------------------------------------------------------- ---------
  \noBreak
      \NoK f, \PH\PR \KlK c' \NoK b' \KlK c,
      f, \PH\PR c' \NoK  as'_1 \KlK c,
      f, \PH\PR c' \NoK  g'_1 \KlK c,
      f, \PH\PR c' \NoK  f_1 \KlK c           | % Takt 18
  %%%%======== -------------------------------------------------------- ---------
      \NoK g \PH\PR \KlK  es'!-2 \NoK des'! \KlK es,
      g, es' \NoK des' \KlK es,
      g, \PH\PR es' \NoK des' \KlK es,
      g, \PH\PR es' \NoK des' \KlK es,               | % Takt 19
  %%%%======== -------------------------------------------------------- ---------
  \noBreak
      \NoK as, \PH\PR \KlK es' \NoK des' \KlK es,
      as, \PH\PR es' \NoK  c'_1 \KlK es,
      as, \PH\PR es' \NoK  b'_1 \KlK es,
      as, \PH\PR es' \NoK  as_1 \KlK es        | % Takt 20
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PH\PR \KlK g'-2 c g c, g' c g
      \NoK f, \PH\PR \KlK  d'-4 c' d,
      \NoK g, \PH\PR \KlK  d'-4
    \times 2/3 {
      h' g d                                                          | % Takt 21
  %%%%======== -------------------------------------------------------- ---------
      \NoK c \PH\PR \KlK  e-3 g c g e-4
      c \PH\PR  f-3 as! h as f
      c f as d as f
      c \PH\PR e!-4 as! d! as e                                       | % Takt 22
  %%%%======== -------------------------------------------------------- ---------
      \NoK  c \PH\PR \KlK e-3 g c g e
      \NoK  h \PH\PR \KlK f' gis h gis f
      h, f' gis d' gis, f
      h, \PH\PR e-3 gis d' gis, e                                       | % Takt 23
  %%%%======== -------------------------------------------------------- ---------
      \NoK a, \PH\PR \KlK  e'-3 a cis a e
      a, \PH\PR  fis'-3 a h a fis
      a, fis' a d a fis
      a, \PH\PR e'-3 gis d' gis, e                                    | % Takt 24
  %%%%======== -------------------------------------------------------- ---------
      \NoK a, \PH\PR \KlK e'-3 a cis a e
      a, e' a cis a e
      a, \PH\PR
        \accidentalStyle "piano"
           dis-3 fis c'
        \accidentalStyle "default"
          fis, dis
      \NoK as \PH\PR \KlK es' ges c ges es                     | % Takt 25
  %%%%======== -------------------------------------------------------- ---------
      \NoK des,! \PH\PR \KlK as''!-3 b! des b as
      des, \PH\PR as' b des b as
      \NoK des,, \KlK as''-3 b des b as
      des, as' b des b as                                             | % Takt 26
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PH\PR \KlK es'-3 as c as es-4
      c-5 \PH\PR es as c as es
      \NoK es, \KlK  es'-3 as c as es-4
       c-5 es as c as es                                              | % Takt 27
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PH\PR \KlK es'-3 g es' g, es
      b \PH\PR es g es' g, es
      \NoK es, \PH\PR \KlK es' g es' g, es
      b \PH\PR es g es' g, es                                         | % Takt 28
  %%%%======== -------------------------------------------------------- ---------
    }
      \NoK f, \PH\PR \KlK f'-2 as-1 f
      c-4 \PH\PR f
        \times 2/3 { as f c }
      \NoK f, \PH\PR \KlK f'-2
         a-1 f
       c-4 f
        \times 2/3 { a f c }                      | % Takt 29
  %%%%======== -------------------------------------------------------- ---------
    \times 2/3 {
      \NoK b,! \PH\PR \KlK
        f''-3 b des b f
      b, \PH\PR f' b des b f
      \NoK b,, \PH\PR \KlK
         fes''-3 as des as fes
      b, fes' as des as fes                                           | % Takt 30
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PH\PR \KlK
        es'-3 as c as es-4
      c-5 \PH\PR es as c as es
      \NoK es, \KlK es'-3 as c as es-4
       c-5 es as c as es                                              | % Takt 31
  %%%%======== -------------------------------------------------------- ---------
    }
      \NoK es, \PH\PR \KlK
         a'-2 c a
       es-4 a \times 2/3 { c a es }
      \NoK es, \PH\PR \KlK a'-2 c a-3
       es-5 \PH\PR a
        \times 2/3 { f' a, es }                                       | % Takt 32
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PH\PR \KlK b''-2 f' b, es,-5 b'
        \times 2/3 { des b es, }
      \NoK es, \PH\PR \KlK
       h''-2 d h
       es,-5 h'
        \times 2/3 { g' h, es, }                                      | % Takt 33
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PH\PR \KlK c''-2 g' c, 
        es, \PH\PR c'
    \times 2/3 {
      es c
      es, }
      \NoK es,
        \PH\PR \KlK c''-2
         ges'-1 c,
      \times 2/3 { es, c'-3 es a es
        c }                                                           | % Takt 34
  %%%%======== -------------------------------------------------------- ---------
    \times 2/3 {
      \NoK es, \PH\PR \KlK b'-3 d as'! d, b
      es, b' d as' d, b
      es, \PH\PR b' des as' des, b
      es, \PH\PR b' des es des b                                      | % Takt 35
  %%%%======== -------------------------------------------------------- ---------
      \NoK as,16 \PH\PR \KlK es'-3 as c as es
      as,16 \PH\PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                            | % Takt 36
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR  es'-3 g des' g, es
      as,16 \PH\PR es' g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g, es                                         | % Takt 37
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR  es'-3 as c as es
      as,16 \PH\PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                           | % Takt 38
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR  es'-3 g des' g, es
      as,16 \PH\PR es' g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g, es                                            | % Takt 39
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PH\PR  es'-3 as c as es
      as,16 es' as c as es
      as,16 \PH\PR es' as c as es
      as,16 \PH\PR es' as c as es                                        | % Takt 40
  %%%%======== -------------------------------------------------------- ---------
      \NoK es,16 \PH\PR \KlK as_4 es'_2 as es as,
      es16 \PH\PR as es' as es as,
      es16 \PH\PR as es' as es as,
      es16 \PH\PR as es' as es as,                             | % Takt 41
  %%%%======== -------------------------------------------------------- ---------
      \NoK as,16 \PH\PR \KlK es'_3 as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, es                                         | % Takt 42
  %%%%======== -------------------------------------------------------- ---------
      as,16 es'_3 as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, es                | % Takt 43
  %%%%======== -------------------------------------------------------- ---------
      \voiceTwo \NoK as,16_5 \PH\PR \KlK es'_3 as_2 c_1 es_3 as
      \oneVoice \clef violin c es_3 as c es_3 as
      \NoK c \KlK as es c_1 as es_3
      \NoK as, \KlK es' as c es_3 as                                  | % Takt 44
  %%%%======== -------------------------------------------------------- ---------
      \NoK c \KlK as es  c-1 as es
      \NoK as, \KlK es' as c  es-3 as
      \NoK c \KlK as es  c-1 as es
      \NoK as, \KlK es' as c  es-3 as                | % Takt 45
  %%%%======== -------------------------------------------------------- ---------
      \NoK c \KlK as es  c-1 as es
      \NoK as,_5 \KlK es'_3  as_2 es'_1 as, es
      as, es' as es' as, es
      as, es' as es' as, es                                           | % Takt 46
  %%%%======== -------------------------------------------------------- ---------
      as, es' as es' as, es
      as, es' as es' as, es
      as, es' as es' as, es
      as, es' as es' as, es
    }                                                                 | % Takt 47
  %%%%======== -------------------------------------------------------- ---------
    \NoK as,4-.
      \clef bass
    <as, es' c'>-.\arpeggio r \PH
    \grace { d,16_3[ es] \override Flag #'stroke-style = #"grace" f8}
    \afterGrace es4\startTrillSpan {d16[ es] \stopTrillSpan }         | % Takt 48
  %%%%======== -------------------------------------------------------- ---------
    <as, as'-1 es'-2>1*1/4 \arpeggio \PR s s s \PH        | % Takt 49
  %%%%======== -------------------------------------------------------- ---------
}

\score {
    \new PianoStaff <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "up" <<
        \global 
        \clef violin
        \rechts
      >>
      \Dynamics
      \new Staff = "down" <<
        \global
        \clef bass
        \links
      >>
    >>
  \layout {
  }

  \midi {
    \tempo 4 = 50
    }
}
