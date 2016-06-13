\version "2.18.2"

% the header including the information needed on www.mutopiaproject.org
\header {
  title = \markup { \fontsize #3.2 \normal-text "Aus tiefer Not schrei’ ich zu dir" }
  composer = "Felix Mendelssohn Bartholdy (1809-1847)"

  mutopiatitle = "Aus tiefer Not schrei’ ich zu dir"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiaopus = "23"
  mutopiainstrument ="SATB, Organ"
  date = "1830"
  source = "Breitkopf & Härtel, 1877"
  style = "Romantic"
  license = "Public Domain"
  maintainer = "Jonathan Scholbach"
  maintainerEmail = "j[dot]scholbach[at]posteo[dot]de"
  maintainerWeb "www.jonathan-scholbach.de"
  moreInfo = "This is No. 1 of Mendelssohn's op. 23 *Drei Kirchenmusiken* (MWV B 20)"

 footer = "Mutopia-2016/06/13-2121"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

% defining the context SemiChoirStaff which will be used instead of ChoirStaff
\layout {
  \context {
    \ChoirStaff
    \name "SemiChoirStaff"
    \consists "Span_bar_engraver"
    \override SpanBar.stencil =
    #(lambda (grob)
       (if (string=? (ly:grob-property grob 'glyph-name) "|")
           (set! (ly:grob-property grob 'glyph-name) ""))
       (ly:span-bar::print grob))
  }
  \context {
    \Score
    \accepts SemiChoirStaff
  }
}

% the input

% Whenever a note of a certain voice has ocurred with different accidental
% in the antecendent bar - be it in this certain voice or be it in another voice -
% the accidental of this certain note is displayed in brackets as a reminder

cbreak = { \break }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                        %
%    No. 1: Choral "Aus tiefer Not"      %
%                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalOne = {
  \time 4/4
  \partial 2.
  \key as \major
  \autoBeamOff
  \dynamicUp
}

commonDynArtOne = {
  s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4\fermata s4\p s2|
  s1 |
  s4\fermata \bar "||"
}

sopOneTune = \relative c'' {
  c4 f, c' |
  des c8[ bes] as4 bes |
  c c des es |
  des bes as( g) |
  f c' f, c' |
  des c8[ bes] as4 bes |
  c c des es |
  des bes as( g) |
  f  bes as des |
  c bes es8[ des] c4 |
  bes des c des |
  es as, c bes |
  as as des c |
  bes f as( g) |
  f
}

sopOneVoice = <<
  \commonDynArtOne
  \sopOneTune
>>

altOneTune = \relative c' {
  as8[ bes] c4 c |
  f e f f |
  e f f ges |
  f f8[ e] f4( e) |
  c as8[ bes] c4 c |
  f e f g8[ f] |
  e4 f f ges |
  f f f( e) |
  f g es? f8[ g] |
  a4 bes bes a |
  bes f8[ g] a4 g8[ f] |
  es4 as as g |
  es f f e |
  f f f( e) |
  c
}

altOneVoice = <<
  \commonDynArtOne
  \altOneTune
>>

tenOneTune = \relative c {
  f8[ g] as4 f |
  f c' c f, |
  g as bes bes |
  bes f c'4.( bes8) |
  as4 f8[ g] as4 g8[ bes] |
  as4 g f e8[ f] |
  g4 as bes b8[ a] |
  bes4 f c'4.( bes8) |
  as4 bes c des |
  es des c c |
  f bes, c bes |
  bes c8[ des] es4 es8[ des] |
  c4 c bes g |
  f8[ g] as[ des] c4.( bes8) |
  as4
}

tenOneVoice = <<
  \commonDynArtOne
  \tenOneTune
>>

basOneTune = \relative c {
  f, f' as, |
  bes c f8[ es] des4 |
  c f bes es, |
  bes des c8([ bes] c4) |
  f f, f' e |
  f c des8[ c] des4 |
  c f bes es, |
  bes des c8([ bes] c4) |
  f es8[ des] c4 bes |
  f' ges es f8[ es] |
  des4 bes f' bes8[ as] |
  g4 f c8[ des] es4 |
  as, f' bes, c |
  des c8[ bes] c2 |
  f,4
}

basOneVoice = <<
  \commonDynArtOne
  \basOneTune
>>

commonOneLyrics = \lyricmode {
  Aus tie -- fer Not schrei’ ich zu dir!
  Herr Gott, er -- hör’ mein Ru -- fen!
  Dein gnä -- dig’n Oh -- ren kehr zu mir,
  und mei -- ner Bitt’ sie öf -- fne!
  Denn so du willst das se -- hen an,
  was Sünd und Un -- recht ist ge -- tan,
  wer kann, Herr, vor dir blei -- ben?
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                        %
%     No. 2: Fuge "Aus tiefer Not"       %
%                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalTwo = {
  \time 4/4
  \key as \major
  \dynamicUp
  \autoBeamOff
}

commonDynArtTwo = {
  s1*107
  s1\fermata \bar"||"
}

sopTwoTune = \relative c'' {
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  c2 f,4 c' |
  des c8[ bes] as4 bes |
  c2 r4 f |
  f2.( des8[ es] |
  f4 as8[ g] f4) es8[ d] |
  c4( b) c r |
  r g as bes |
  as f8[ g] as2 |
  g4 c es4( d
  c2. des?8[ es]
  des4 f8[ es] des4 c |
  bes des c bes |
  es) r es2 |
  d des |
  c8([ des c des] es2~ |
  es4) as, des2~( |
  des4 es8[ des]) c4 bes |
  as as c( bes8[ as]) |
  g2 r |
  r4 c des es |
  des bes8[ c] des2~( |
  des4 c8[ des] es2~
  es4 ges f es |
  f es) des2~ |
  des4 c8[ bes] es4 as, |
  c2( bes) |
  as r |
  R1 |
  r4 bes es2~ |
  es4 ges f es |
  des( es f2 |
  bes,) c4( des) |
  c2 r |
  R1 |
  r4 g c2~ |
  c4 es des? c |
  b( c des2~ |
  des4 f es des |
  c des es2~ |
  es4 ges f es |
  f bes, es2~ |
  es4) es des c |
  bes bes8[ c] des4 c8[ bes] |
  a2 r |
  R1 |
  f'2 bes,4 f' |
  ges( f8[ es] des4) es |
  f bes,8[ c] des2~ |
  des4 c8[ bes] es2~ |
  es4 des8[ c] des4 es |
  des2( c) |
  bes r |
  R1 |
  c2 f,4 c' |
  des c8[ bes] as4 bes |
  c( g c) bes |
  as( f8[ g] as4) a |
  bes bes8[ c] des4 d |
  es e f as |
  g1~( |
  g1~ |
  g4 f8[ es] d4 c |
  b c8[ d] g,2) |
  r4 g c2~( |
  c8 r c4 es d8[ c] |
  b4 c f es8[ d] |
  c2.) b4 |
  c es8[ d] c2~ |
  c4 es8[ d] c2~ |
  c4 es8[ d] c2~ |
  c4 b f'2~ |
  f4 es8[ d] g4 c, |
  c2( b) |
  c4 g c bes? |
  as c f4. f8 |
  e4 c8[ bes] as4 g |
  f c' f4. f8 |
  e2 r |
  R1 |
  R1 |
  r2 f\f |
  e es |
  d des |
  c c,4 r |
  c'2 f,4 c' |
  des c8[ bes] as4 bes |
  c2 r4 c |
  f des bes2~( |
  bes4 des c) bes |
  as2( g) |
  f r |
  R1 |
  r4 g c bes8[ as] |
  des4 bes des c8[ bes] |
  g'2 r4 as, |
  des2 c |
  bes f |
  as( g) |
  f1 |
}

sopTwoVoice = <<
  \commonDynArtTwo
  \sopTwoTune
>>

altTwoTune = \relative c' {
  R1 |
  R1 |
  R1 |
  R1 |
  f2 c4 f |
  as g8[ f] es4 f |
  g2 r4 e4 |
  f2. d4 |
  es?2 r4 d4 |
  c2. f4 |
  f r r2 |
  r4 c' des es |
  des( bes8[ c] des2 |
  c4 as8[ bes] c2~
  c4) g c( d8[ c]) |
  b2 r4 c |
  c2.( as8[ bes] |
  c4 bes8[ as] g4 f |
  es2. des?8[ c] |
  f4 g8[ a] bes4 as |
  g f8[ g] as4 g |
  as) r r es |
  f2.( g4) |
  as2 es4 as |
  c bes8[ as] g4 as |
  bes2 as4( g) |
  as( g8[ f] es4) f |
  g2 r4 c8[ bes] |
  a2( bes4) c |
  bes4.( as?8 g4 f |
  es c'8[ bes] as4 g |
  as2. ges4 |
  f as g? f |
  es) r r as |
  as( f) g2 |
  r4 es as2~ |
  as4 ces bes as |
  g( as bes c8[ bes] |
  a2) r4 f |
  bes( c des) f, |
  bes( g) e2 |
  f4 c f2~( |
  f4 as g f |
  e des? c)  bes |
  a2( bes4) r |
  R1 |
  bes'2 f4 bes |
  c c8[ bes] a4 bes |
  c( bes a c |
  f,2) c'4( bes) |
  a( c) f,( es) |
  des2 r4 ges4 |
  f2 r |
  bes f4 bes |
  a( g8[ a] bes[ des c bes] |
  a2) f4( ges) |
  f f bes2~ |
  bes4 a8[ bes] c2~ |
  c4 f, des' c |
  bes2 a |
  f bes,4 f' |
  ges f8[ es] des4 es |
  f2 r |
  r4 c f4. f8 |
  e4 c8[ d] es4 e |
  f2 r |
  r4 f f f|
  bes8[ as] g4 c c8[ b] |
  c1~(
  c4 es d c |
  b d f,2~ |
  f4) r r2 |
  g2 c,4 g' |
  as g8[ f] es4 f |
  g( f as) g8[ f] |
  es4( d8[ c]) d2 |
  c2 r |
  R1 |
  R1 |
  r2 r4 as' |
  g g g g |
  g2.( f4) |
  e c8[ d] es4 e |
  f f8[ g] as4 b |
  c c,( c') bes |
  as( f8[ g] as4) g8[ f] |
  c'2 r |
  R1 |
  c2\f f,4 c' |
  des( c8[ bes] as4) bes |
  c( bes8[ as] g4 a |
  bes f e f |
  g bes as g |
  f e f ges |
  f e as g?~ |
  g as8[ bes] c4 as8[ g]) |
  f2 r4 e8[ f] |
  g4 bes as g |
  f2( g) |
  c, r |
  r4 g g'( f |
  e d8[ e] f4) c |
  f f f e |
  bes'2 r4 f|
  f2 e |
  f f |
  f( e) |
  c1|
}

altTwoVoice = <<
  \commonDynArtTwo
  \altTwoTune
>>

tenTwoTune = \relative c' {
  R1 |
  R1 |
  r4 c des es |
  des bes8[ c] des2 |
  c4 as8[ bes] c2~( |
  c4 b c d8[ c] |
  b2) r |
  r4 c8[ b] c2 |
  r4 g c b |
  c8([ des? c des] es?4 des8[ c] |
  bes4 e f g8[ f] ) |
  e2 r |
  R1 |
  f2 c4 f |
  as g8[ f] es4 f |
  g2 f4( e) |
  f( c2) c4 |
  c2.( b4 |
  c) c f2~( |
  f4 des bes c8[ des] |
  es1) |
  es,4 r r2 |
  R1 |
  R1 |
  R1 |
  es'2 as,4 es' |
  f es8[ des] c4 des |
  es bes  es2~( |
  es4 f8[ es] des4) c |
  des( f8[ es] des4 c |
  bes es8[ des] c4 bes |
  c es des c |
  des2. c4 |
  bes as8[ g] as4) f' |
  es2( des8[ c] des4) |
  c2 r4 as |
  f'2 d |
  es4( f g) es |
  c2( f) |
  r4 f, bes2~ |
  bes4 des c bes |
  as( g as) f |
  b2. b4 |
  c r r2
  f2 bes,4 f' |
  ges4( f8[ es] des4) es |
  f2. bes,4 |
  es( des c2) |
  c2 f,4 c' |
  des c8[ bes] a4 bes |
  c( bes8[ a] bes4) a |
  bes( des8[ es] f4) es8[ des] |
  c4 c des es |
  des bes8[ c] des2 |
  c4 bes8[ c] des4 es8[ des] |
  c2( des4) c |
  des2 r4 des |
  ges2. es4 |
  c bes8[ a] bes4 ges' |
  f2.( es4) |
  des2 r |
  r4 f, bes4. bes8 |
  a4 f8[ g] as4 a |
  bes c des?4. des8 |
  c2 r |
  r4 f, f' es |
  des des8[ c] bes4 bes |
  b c8[ bes] as4 f' |
  es1~(
  es4 g f es |
  f) d b c|
  d b c d |
  g, r r2 |
  R1 |
  R1 |
  r2 r4 f' |
  f2 r4 c |
  f2 r4 f4 |
  c2 r4 c |
  f2 r4 f |
  d b c es8[ d] |
  e2( d) |
  c r |
  r4 as f'4. f8 |
  g4 r r2 |
  r4 as, des4. des8 |
  c2 r |
  r f\f |
  e es |
  des des |
  c2.( des8[ c] |
  bes1~ |
  bes4 des c bes |
  as bes c des8[ es] |
  des4 r f2 |
  e4 f8[ g]) c,4 r |
  r f, des'2~ |
  des4 g, as( des) |
  c c8[ d] es?4 e |
  f f, f' es? |
  d( bes8[ c] d2) |
  c c4 f |
  des f8[ es] des4 g, |
  c2 r4 f |
  f2 e |
  f f |
  f( e) |
  c1 |
}

tenTwoVoice = <<
  \commonDynArtTwo
  \tenTwoTune
>>

basTwoTune = \relative c {
  c'2 f,4 c' |
  des c8[ bes] as4 bes |
  c2 r4 a |
  bes2. g4 |
  as2 r4 as |
  f g as2 |
  r4 g as bes? |
  as f8[ g] as2 |
  g4 es8[ f] g2( |
  as a |
  bes4) c des2 |
  c bes4( a) |
  bes2 r4 g |
  as2 r4 f |
  f g as2( |
  g c) |
  f, r4 f |
  es( f) g2 |
  as( a) |
  bes4 r r2 |
  r4 bes c des |
  c as8[ bes] ces2 |
  bes4 g8[ as] bes2( |
  as) c4( as) |
  f f bes as |
  g( f8[ g]) as4 r |
  R1 |
  r4 es f ges |
  f2. f4 |
  bes4( des8[ c] bes4 as |
  g) r r2 |
  as2 des,4 as' |
  des( c bes) as |
  g( es) c( des) |
  es( des es2) |
  as, r |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4 f' bes2~ |
  bes4 des c bes |
  a bes c2~ |
  c4 r r2 |
  R1 |
  f,2 bes,4 f' |
  ges f8[ es] des4 es |
  f1~ |
  f1~ |
  f1~ |
  f4 f bes as |
  des2 r4 bes |
  es2. c4 |
  a f bes es, |
  f2( f,) |
  bes4 bes8[ c] des4 d |
  es f ges4. ges8 |
  f2 r |
  R1 |
  R1 |
  R1 |
  r4 bes, bes' as |
  g r r2 |
  c\f g4 c |
  es d8[ c] b4 c |
  d f, as4. as8 |
  g4 f es d |
  es2 r4 e |
  f( as c) bes8[ as] |
  g4( as f) f |
  g2 g,4 g' |
  as2 r4 f8[ g] |
  as2 r4 as |
  es2 r4 es |
  d2 r4 d' |
  b g es c |
  g'2( g,) |
  c r |
  r4 as'4 des4. des8 |
  c4 c,8[ d] es4 e |
  f r r2 |
  c'\f c,4 c' |
  des( c8[ bes] as4) bes |
  c( bes a g8[ a] |
  bes4 as?8[ g] f4 g |
  c,2 f |
  bes,4 as' g f) |
  e2 r4 c |
  f( g as a |
  bes c des2 |
  c4 bes as) f |
  des2. bes4 |
  e2 f4( bes,) |
  c2( c'4 bes) |
  a f8[ g] as4 a |
  bes( g8[ a] bes4) b |
  c bes? as f |
  bes des8[ c] bes4 g |
  e2 r4 f |
  bes,2 c |
  d bes |
  c1  |
  f, |
}

basTwoVoice = <<
  \commonDynArtTwo
  \basTwoTune
>>

sopTwoLyrics = \lyricmode {
  Aus tie -- fer Not schrei’ ich zu dir,
  er -- hör’ __ mein Ru -- fen,
  Herr Gott, er -- hör’ __ mein Ru -- fen,
  er -- hör’ __
  Herr Gott, er -- hör’ mein Ru -- fen,
  er -- hör’ mein Ru -- fen,
  Herr Gott, er -- hör’ mein Ru -- fen,
  er -- hör’ mein Ru -- fen,

  dein gnä -- dig’n Oh -- ren kehr __ zu __ mir,
  dein gnä -- dig’n Oh -- ren kehr, __
  dein gnä -- dig’n Oh -- ren kehr zu mir,
  dein gnä -- dig’n Oh -- ren kehr zu mir,
  und mei -- ner Bitt’ sie öf -- fne!

  Denn so du willst das se -- hen an, das se -- hen an,
  was Sünd und Un -- recht ist ge -- tan, __

  aus tie -- fer Not schrei’ ich zu dir, __
  Herr Gott, __ Herr Gott, __ er -- hör’ __ mein Ru -- fen,

  denn so du willst das se -- hen an,
  denn so du willst das se -- hen an,
  wer kann, Herr, vor dir blei -- ben?

  Aus tie -- fer Not schrei’ ich zu dir,
  wer kann, Herr, vor __ dir blei -- ben?
  was Sünd und Un -- recht ist ge -- tan,
  wer kann, Herr, vor dir blei -- ben?
}

altTwoLyrics = \lyricmode {
  Aus tie -- fer Not schrei’ ich zu dir,
  aus tie -- fer Not schrei’ ich zu dir,
  Herr Gott, er -- hör’ __ mein Ru -- fen, er -- hör’, __
  Herr Gott, __ aus tie -- fer Not schrei’ ich zu dir, schrei’ ich __ zu dir,
  Herr Gott, __ er -- hör’ __ mein Ru -- fen,
  dein gnä -- dig’n Oh -- ren kehr __ zu mir,
  dein gnä -- dig’n Oh -- ren kehr __ zu mir,
  aus tie -- fer Not schrei’ ich zu dir, __
  Herr __ Gott, __ Herr __ Gott, zu dir,
  dein gnä -- dig’n Oh -- ren kehr zu mir,
  und mei -- ner Bitt’ sie öf -- fne!

  Denn so du willst das se -- hen an,
  denn so du willst das se -- hen an,
  was Sünd und Un -- recht ist ge -- tan, __
  aus tie -- fer Not schrei’ ich zu dir, schrei’ ich zu dir,
  Herr Gott, er -- hör’ mein Ru -- fen,
  denn so du willst das se -- hen an,
  willst das se -- hen an,
  wer kann, Herr, vor __ dir blei -- ben?
  Wer kann, Herr, vor dir blei -- ben?
  Was Sünd __ und Un -- recht ist ge -- tan,
  wer kann, Herr, vor dir blei -- ben?
}

tenTwoLyrics = \lyricmode {
  Herr Gott, er -- hör’ mein Ru -- fen, er -- hör’, __
  Herr Gott, er -- hör’ mein Ru -- fen,
  aus tie -- fer Not schrei’ ich zu dir,
  Herr __ Gott, __ er -- hör’ __ mein Ru -- fen,
  aus tie -- fer Not schrei’ ich zu dir,
  Herr Gott, __ er -- hör’ __ mein Ru -- fen,
  dein gnä -- dig’n Oh -- ren kehr, __
  dein gnä -- dig’n Oh -- ren kehr __ zu mir, zu mir,

  aus tie -- fer Not __ schrei’ ich zu dir, __
  aus tie -- fer Not schrei’ ich zu dir, __
  schrei’ ich __ zu __ dir,
  Herr Gott, er -- hör’ mein Ru -- fen,
  dein gnä -- dig’n Oh -- ren kehr zu mir,
  und mei -- ner Bitt’ sie öf -- fne!

  Denn so du willst, denn so du willst das se -- hen an,
  das se -- hen an, was Sünd und Un -- recht ist ge -- tan __

  aus tie -- fer Not schrei’ ich zu dir,
  Herr Gott, Herr Gott, er -- hör’, er -- hör’,
  Herr Gott er -- hör’ mein Ru -- fen,
  denn so du willst das se -- hen an,
  wer kann, Herr, vor dir blei -- ben?
  Herr, vor dir blei -- ben?
  Denn so du willst das se -- hen an, __
  was Sünd und Un -- recht ist ge -- tan,
  wer kann, Herr, vor dir blei -- ben?
}

basTwoLyrics = \lyricmode {
  Aus tie -- fer Not schrei’ ich zu dir,
  aus tie -- fer Not schrei’ ich zu dir,
  Herr Gott, er -- hör’ mein Ru -- fen,
  er -- hör’ __ mein Ru -- fen,
  Herr __ Gott, er -- hör’,
  er -- hör’ mein Ru -- fen,
  er -- hör’ mein Ru -- fen,
  Herr Gott, er -- hör’ mein Ru -- fen,
  er -- hör’ __
  Herr __ Gott, er -- hör’ mein Ru -- fen,
  Herr Gott, er -- hör’,
  er -- hör’ __
  Herr Gott, er -- hör’, __ er -- hör’ __ mein __ Ru -- fen.

  Dein gnä -- dig’n Oh -- ren kehr zu mir, __
  aus tie -- fer Not schrei’ ich zu dir, __
  schrei’ ich zu dir, zu dir,
  und mei -- ner Bitt’ sie öf -- fne!
  Denn so du willst das se -- hen an,
  das seh -- en an,

  aus tie -- fer Not schrei’ ich zu dir,
  aus tie -- fer Not schrei’ ich zu dir,
  Herr Gott, __ er -- hör’ __ mein Ru -- fen,
  Herr Gott, Herr Gott, er -- hör’, er -- hör’,
  Herr Gott, er -- hör’ mein Ru -- fen,

  Denn so du willst das se -- hen an,
  wer kann, Herr, vor __ dir blei -- ben?
  wer kann, __ wer kann, Herr, vor dir __ blei -- ben?
  Denn willst du se -- hen an, was Sünd und Un -- recht ist ge -- tan,
  wer kann, Herr, vor dir blei -- ben?
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                        %
%   No. 3: Aria "Bei dir gilt nichts"    %
%                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalThree = {
  \time 3/8
  \key as \major
  \dynamicUp
  \autoBeamOff
}

commonDynArtThree = {
  s4.*53 |

  s4 s8\p |
  \break
  s4.*22 |
  s8\p s4 |
  s4.*7 |
  s8\< s4 |
  s4. |
  s8\! s4|
  s4.*6 |
  s4 s8\<
  s4.*3
  s8\! s4 |
  s4.*5 |
  s4.\fermata \bar "||" |
}

sopThreeTune = \relative c'' {
  R4.*53
  r8 r8^\markup{ Tutti }  as |
  c4 bes8 |
  as4 as8 |
  des4 des16[ c] |
  c4 r8 |
  c f es |
  des4 c8 |
  bes4. |
  c8 r r |
  c es c |
  a4 a8 |
  a[ bes] c |
  des4 r8 |
  des c bes |
  as([ bes c] |
  d[ es]) f |
  d4. |
  es4 r8 | 
  as, des? c16[ bes]  |
  c4 r8 |
  bes es des16[ c] |
  des4 r8 |
  des c bes |
  f'4.~( |
  f8[ c]) es |
  des4 c8 |
  bes8 r es |
  des4 c8 |
  bes4 as8 |
  es'4.~(|
  es~ |
  es8[ des c] |
  des[ es f] |
  es4) as,8\p |
  c4( bes8) |
  as4. | 
  R4. |
  R4. |
  R4. |
  c8^\markup{ \italic dolce } bes as |
  es'4.~(|
  es~ |
  es8[ des c] |
  des[ es f] |
  es4) as,8\p |
  c4( bes8 |
  as4.~ |
  as4.~ |
  as4.~ |
  as4.) |
  es4. |
}

sopThreeVoice = <<
  \commonDynArtThree
  \sopThreeTune
>>

altThreeTune = \relative c' {
  R4.*53
  r8 r8^\markup{ Tutti } es |
  as4 g8 |
  as4 c,8 |
  f[ as] g |
  as[ c,] des |
  es[ f] g |
  f[ es] as |
  as( g4) |
  as8 r r |
  as es ges |
  ges8[ f] es |
  f4 es8 |
  des4 r8 |
  bes' as g |
  f([ g as~] |
  as[ g]) f |
  f[ bes as] |
  g4 r8 |
  es f g |
  as4 r8 |
  des,8 ges4~( |
  ges8[ f]) es |
  f4( g?8) |
  a8 c bes |
  a4 c8 |
  bes4 as?8 |
  g4 r8 |
  R4. |
  r8 r as |
  g4( as8) |
  bes4( c8) |
  c8([ bes a] |
  bes4 as?8 |
  g) as4 |
  as8([\p es des~] |
  des[ c bes]) |
  c4 r8 |
  r8 bes'[\mf as] |
  g[ c] bes |
  as4 r8 |
  g\p bes as |
  g4( bes8 |
  c[ bes a] |
  bes[ c des] |
  g,) as?4 |
  as8[\p es des] |
  c4 as'8\pp |
  g4 f8 |
  es4 es8 |
  es4. |
  as4. |
}

altThreeVoice = <<
  \commonDynArtThree
  \altThreeTune
>>

tenThreeTune = \relative c' {
  \tempo "Adagio"
  R4.^\markup{ Solo }
  as8 c bes |
  as4 as8 |
  des4 des16[ c] |
  c8 r c |
  f4 es8 |
  des4 c8 |
  bes4. |
  c4 r8 |
  c8 es c |
  a4 a8 |
  a8[ bes] c |
  des4 r8 |
  des c bes |
  as([ bes c] |
  d[ es]) f |
  d4. |
  es4 r8 |
  as, des? c16[ bes]  |
  c4 r8 |
  bes es des16[ c] |
  des4 r8 |
  des\p c bes |
  f'4.~( |
  f8[ c]) es |
  des4 c8 |
  bes8 r es |
  des4 c8 |
  bes4 as8 |
  es'4.~^\markup{ \italic cresc. } |
  es~ |
  es8 des c |
  des[ es] f |
  g,[ as] des |
  c4( bes8) |
  as4 r8 |
  as des c16[ bes]  |
  c4 r8 |
  bes es des16[ c] |
  des4 r8 |
  des\p c bes |
  f'4.~( |
  f8[ c]) es |
  des4 c8 |
  bes8 r es |
  des4 c8 |
  bes4 as8 |
  es'4.~^\markup{ \italic cresc. } |
  es~ |
  es8 des c |
  des[ es] f |
  es4 as,8\p |
  c4( bes8) |
  as8 r^\markup{ Tutti } c8 |
  es4 des8 |
  c4 f,8 |
  as4 bes8 |
  as4 bes8 |
  c[ des] bes |
  as[ bes] c16[ des] |
  es4( des8)
  c8 r r |
  as c es |
  es[ des] c |
  f,[ g] a |
  b4 as?8 |
  g c4 |
  c4.( |
  bes4) c8 |
  bes4.~( |
  bes8[ es]) des? |
  c bes es |
  as,4 r8 |
  bes bes as |
  as4.( |
  des) |
  c8 es des |
  c4 c8 |
  des[ es] f |
  bes,4 r8 |
  r r es |
  des4 c8 |
  bes4( es8) |
  des4( c8) |
  f4.~( |
  f4 bes,8~ |
  bes[ c]) des |
  as4( g8) |
  as4.~ |
  as8 r r |
  r g'[\mf f] |
  e4 e8 |
  f4 r8 |
  bes,\p des c |
  bes( es4) |
  es r8 |
  f,4( bes8~ |
  bes[ c]) es\p |
  as,4( g8) |
  as4 f'8\pp |
  es4 des8 |
  c4 des8 |
  des[ c bes ] |
  c4. |
}

tenThreeVoice = <<
  \commonDynArtThree
  \tenThreeTune
>>

basThreeTune = \relative c {
  R4.*53
  r8 r^\markup{ Tutti }  as |
  as'4 es8 |
  f4 f8 |
  f4 es8 |
  as4 r8 |
  as8 des, es |
  f[ g] as |
  es4.( |
  as,8) c es |
  as4 es8 |
  f4. |
  es8 des c |
  b[ g'] f |
  e4 c8 |
  f4.~( |
  f8[ es]) as, |
  bes4. |
  es4 r8 |
  R4. |
  r8 es[ f] |
  ges[ es] as |
  des,4. |
  R |
  f~ |
  f4 a,8 |
  bes[ c] des |
  es4.~ |
  es4.~ |
  es8 r es |
  des4 c8 |
  bes4 as8 |
  des4.~( |
  des~ |
  des8[ c]) f\p |
  es4. |
  as,4 r8 |
  as'^\markup{ \italic cresc. } g f |
  c'4.~(\f |
  c |
  f,4) r8 |
  es?4.~( |
  es4 des8) |
  c4 f8 |
  des([ c bes] |
  des[ c]) f\p |
  es4.( |
  as,~
  as~
  as~
  as) |
  as |
}

basThreeVoice = <<
  \commonDynArtThree
  \basThreeTune
>>

organThreeRightVoice = \relative c' {
  \autoBeamOn
  r8 <as c>8( <bes des> |
  <c es>4 <es bes'>8) |
  <c as'>4 r8 |
  <<
    \voiceOne { des'4 des8 }
    \new Voice { \voiceTwo r8 as g }
  >> \oneVoice
  <c, c'es>8 es as |
  <<
    \voiceOne {
      f'4 es8 |
      des4 c8
      bes4.|
    }
    \new Voice {
      \voiceTwo
      f8 as g |
      f es as |
      <es as> g des |
    }
  >> \oneVoice
  <c c' es>8 <as c> <bes des> |
  <c es>4 <es ges>8~ |
  <es ges> <des f> <c es> |
  <<
    \voiceOne {
      f8 g? a |
      bes e f |
    }
    \new Voice {
      \voiceTwo
      f,4 es8 |
      des4.|
    }
  >> \oneVoice
  <bes' des>8 <as c> <g bes> |
  <f as> <g bes> <as c> |

  <<
    \voiceOne {
      d8 es f |
      d4. |
      es4
    }
    \new Voice {
      \voiceTwo
      as,8 g f~ |
      f bes as |
      g4
    }
  >> \oneVoice
  r8

  <<
    \voiceOne {
      as[ des] c16[ bes] |
      c4. |
      bes8[ es] des16[ c] |
      des4.~ |
      des8
    }
    \new Voice {
      \voiceTwo
      es,8 f g |
      as4. |
      des,8[ ges~] ges |
      f4.~ |
      f8
    }
  >> \oneVoice
  r8 r
  <c a'> <es c'> <des bes'>
  <<
    \voiceOne {
      a'8 \oneVoice r \voiceOne < c es> |
      des4 c8 |
    }
    \new Voice {
      \voiceTwo
      c, s f~ |
      f bes as? |
    }
  >> \oneVoice
  <g bes>8 r es'( |
  des4 <es, c'>8 |
  <des bes'>4 <c as'>8) |
  <bes g'>4 <c as'>8 |

  <<
    \voiceOne {
      bes'4 c8~ |
      c bes a |
      bes c des |
      g, as4 |
      c bes8 |
      as4
    }
    \new Voice {
      \voiceTwo
      <des, g>4 <c es>8 |
      f4. |
      f4. |
      es4 des8 |
      c es des |
      c4
    }
  >> \oneVoice
  r8

  <<
    \voiceOne {
      as'[ des] c16[ bes] |
      c4 \oneVoice r8 \voiceOne |
      bes8[ es] des16[ c] |
      des4.~ |
      des8
    }
    \new Voice {
      \voiceTwo
      es,8[ f] g |
      as4 s8 |
      des,8[ ges~] ges |
      f4.~ |
      f8
    }
  >> \oneVoice
  r8 r
  <c a'> <es c'> <des bes'>
  <<
    \voiceOne {
      a'8 \oneVoice r \voiceOne < c es> |
    }
    \new Voice {
      \voiceTwo
      c, s f |
    }
  >> \oneVoice
  <f bes des>4 <as? c>8 |
  <g bes>8 r es'( |
  des4 <es, c'>8 |
  <des bes'>4 <c as'>8) |
  <bes g'>4 <c es as>8 |

  <<
    \voiceOne {
      bes'4 c8~ |
      c bes a |
      bes c des |
      g, as4 |
    }
    \new Voice {
      \voiceTwo
      <des, g>4 <c ges'>8 |
      f4.~ |
      f4. |
      es4 des8 |
    }
  >> \oneVoice
  <c as' c>4( <des g bes>8) |
  <c es as>4. |
  R2. |
}

organThreeLeftVoice = \relative c {
  \autoBeamOn
  as4\p r8 |
  r <as'> <es g> |
  <f as>4 r8 |
  <<
    \voiceOne {
      r8 as bes |
    }
    \new Voice {
      \voiceTwo
      f4 es8 |
    }
  >> \oneVoice
  as,4 as'8 |
  <des, des'>4 <es bes'>8 |
  <f as> <g bes> <as c> |
  es4. |
  as,4 r8 |
  R4. |
  f4 f'8 |
  es des c |
  <<
    \voiceOne {
      bes'4. |
      g4 c8~ |
      c4. |
      bes4 c8
      bes4.~
      bes8 es des? |
    }
    \new Voice {
      \voiceTwo
      bes,8 g' f |
      e4. |
      f4.~ |
      f8 es? as |
      bes4 bes,8 |
      es4 r8 |
    }
  >> \oneVoice
  c'8 bes es |
  as, c es |

  <<
    \voiceOne {
      bes4 as8~ |
      as s s |
    }
    \new Voice {
      \voiceTwo
      ges8 es as |
      des, f as |
    }
  >> \oneVoice
  des8 r r
  f,,4.~ |
  f4 a8 |
  bes c des |
  es4. |
  es,4.~ |
  es4 es'8 |
  des4( c8) |
  bes4 as8 |
  des4.~ |
  des4. |
  des8 c f |
  << { as4 r8 } \\ { es4.} >> |
  as,8 c es |
  <<
    \voiceOne {
      c'8 bes es~ |
      es4 r8 |
      bes4 as8 |
    }
    \new Voice {
      \voiceTwo
      as4. |
      as8  es f |
      ges es as |
    }
  >> \oneVoice
  as8 f as |
  des r r |

  f,,4.~ |
  f4 a8 |
  bes( c des |
  es4.) |
  es,4.~ |
  es4 es'8 |
  des4 c8 |
  bes4 as8 |
  des4.~ |
  des4.~ |
  des8 c f |
  es4.( |
  as,4.)^\markup{ Orgel mit dem Bass } |
  R2.
}

sopThreeLyrics = \lyricmode {
  Da -- rum auf Gott will hof -- fen ich,
  auf mein Ver -- dienst nicht bau -- en,
  auf ihn mein Herz soll las -- sen sich
  und sei -- ner Gü -- te trau -- en,
  die mir zu -- sagt sein wer -- tes Wort,
  das ist mein Trost __ und treu -- er Hort,
  dess’ will ich all -- zeit, all -- zeit har -- ren,
  dess’ will ich all -- zeit har -- ren.
}

altThreeLyrics = \lyricmode {
  Da -- rum auf Gott will hof -- fen ich, __
  auf mein __ Ver -- dienst __ nicht bau -- en,
  auf ihn mein Herz __ soll las -- sen sich
  und sei -- ner Gü -- te trau -- en,
  die mir zu -- sagt sein wer -- tes Wort, __
  das ist mein Trost und treu -- er Hort,
  dess’ will __ ich all -- zeit har -- ren,
  das __ ist __ mein Trost,
  dess’ will ich all -- zeit har -- ren,
  dess’ will ich all -- zeit har -- ren.
}

tenThreeLyrics = \lyricmode {
  Bei dir gilt nichts denn Gnad’ und __ Gunst,
  die Sün -- de zu ver -- ge -- ben.
  es ist doch un -- ser Tun um -- sonst,
  auch in dem be -- sten Le -- ben,
  vor dir Nie -- mand sich rüh -- men __ kann,
  dess muss dich fürch -- ten Je -- der -- mann,
  und dei -- ner Gna -- de le -- ben,
  und dei -- ner Gna -- de le -- ben,
  vor dir Nie -- mand sich rüh -- men __ kann,
  dess muss dich fürch -- ten Je -- der -- mann,
  und dei -- ner Gna -- de le -- ben,
  und dei -- ner Gna -- de le -- ben.

  Da -- rum auf Gott will hof -- fen ich,
  auf mein __ Ver -- dienst __ nicht __ bau -- en,
  auf ihn mein Herz __ soll las -- sen sich
  und sei -- ner Gü -- te trau -- en,
  die mir zu -- sagt sein wer -- tes Wort, __
  das ist mein Trost und treu -- er Hort,
  dess’ will ich all -- zeit all -- zeit har -- ren, __
  das __ ist mein Trost,
  dess’ will ich all -- zeit all -- zeit har -- ren,
  dess’ will ich all -- zeit har -- ren.
}

basThreeLyrics = \lyricmode {
  Da -- rum auf Gott will hof -- fen ich,
  auf mein Ver -- dienst __ nicht bau -- en,
  auf ihn mein Herz soll las -- sen sich __
  und sei -- ner Gü -- te trau -- en,
  sein __ wer -- tes Wort,
  das, __ das ist mein Hort, __
  dess’ will ich all -- zeit, all -- zeit har -- ren,
  das ist mein Trost, __
  dess’ __ will ich all -- zeit har -- ren.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                        %
%    No. 4: Choral "Und ob es währt"     %
%                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalFour = {
  \time 4/4
  \partial 2.
  \key as \major
  \dynamicUp
  \autoBeamOff
}

commonDynArtFour = {
  \tempo "Andante"
  s2. |
  s1*58 |
  s1\fermata\bar"||"
}

sopFourTune = \relative c'' {
  r2. |
  R1 |
  R1 |
  R1 |
  r2 c\p^\markup{ Tutti } |
  f, c' |
  des c4( bes) |
  as2 bes |
  c1~ |
  c4 r r2 |
  R1 |
  r2 c |
  des es |
  des4( c) bes2 |
  as( g) |
  f1~ |
  f~ |
  f4 r r2 |
  R1 |
  r2 c'\p
  f, c' |
  des c4( bes) |
  as2 bes |
  c1 |
  R1|
  R1 |
  r2 c |
  des es |
  des2 bes2 |
  as( g) |
  f1~ |
  f~ |
  f~ |
  f4 r r2 |
  r2 bes |
  as des |
  c bes  |
  es4( des) c2 |
  bes1~ |
  bes2 r |
  r4 des\p des des |
  es2 as, |
  c bes |
  as1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2 as\p |
  des c |
  bes f4( g) |
  as2( g) |
  f1~ |
  f1~ |
  f1~ |
  f1~ |
  f1~ |
  f2 r |
  R1 |
}

sopFourVoice = <<
  \commonDynArtFour
  \sopFourTune
>>

altFourTune = \relative c' {
  r2. |
  R1  |
  r4^\markup{ Solo } e g f8[ es] |
  f4 des bes d |
  c( f2 e4 |
  f es?8[ des] c4 es |
  des) r r2 |
  r4 c des es8[ des] |
  c2 r |
  R1 |
  r4 des c bes |
  a( bes f') es |
  des2( ges |
  f4 as g? f8[ e] |
  f2.) e4 |
  r c f es? |
  des c8[ bes] es4 des |
  c ges' f2 |
  r4 as g?2 |
  r4 bes as g |
  f( as g) e |
  f( e f g |
  as c, des) es8[ des] |
  c4 es as ges |
  f ces' bes2~ |
  bes4 as8 g c?4 bes |
  a2 r |
  r c|
  bes4 des,8[ es] f4 g |
  as( f2 e4) |
  f2 r4 bes\f |
  bes( a) r bes |
  a bes es des8[ c] |
  des2 r4 as? |
  g as des c8[ bes] |
  c2 as4( f) |
  ges( f8[ es] des4) bes' |
  a( bes2) a4 |
  bes ges f2 |
  r4 ges f2~ |
  f4 des es f |
  bes( as8[ g] as2~ |
  as4) c, des es8[ des] |
  c4 as\f as'2~ |
  as4 as, as'2 |
  r4 bes as ges |
  f( des'8[ c] bes[ as]) g[ g] |
  c2 r4 c,\p |
  f2 g |
  as( f) |
  f e |
  f f |
  f( e) |
  f r4 des |
  des( c2) bes4 |
  f'(^\markup{ \italic cresc. } es d c |
  des es8[ des] c4 bes |
  es2) des4(\p f) |
  bes1 |
  a |
}

altFourVoice = <<
  \commonDynArtFour
  \altFourTune
>>

tenFourTune = \relative c' {
  r2. |
  R1 |
  r4^\markup{ Solo } g^\markup{ \italic dolce } bes as8[ g] |
  f4( as2) g4 |
  as2 g |
  f( f'~ |
  f4 e8[ f] g4) e |
  c( as2) g4 |
  as2 r |
  r4 c bes as |
  g f e2 |
  f r4 f |
  bes2 c |
  des r4 des |
  c2( bes) |
  a r4 f |
  bes( f8[ g] a4) bes |
  c2 r4 es |
  des2 r4 f |
  e2. e4 |
  f( c8[ b] c4 bes |
  as) bes c2~( |
  c8[ bes]) as4 as g |
  as2 r |
  r4 f'4 as,8[ g] as4 |
  g2 r |
  r4 ges' f es |
  des c8[ bes] a4 a |
  f' r des2 |
  c1 |
  f,2 r4 des'\f |
  des( c) r f |
  es des c bes8[ a] |
  bes2 r4 des8[ c] |
  des4 c f es8[ des] |
  c2 r4 bes4~( |
  bes a bes des|
  c) des8[ es] f2 |
  r4 es des2 |
  r4 es des2~ |
  des4 bes c bes |
  bes( c8[ des] es4) c |
  as2. g4 |
  as2 r4 f'\f |
  es2 r4 f |
  es2 r4 c |
  des( f2) bes,4 |
  e2 r4 c4\p |
  c2 c4( bes) |
  as1 |
  bes2 g |
  f des' |
  c2.( bes4) |
  a2 r4 bes |
  bes( a) r bes |
  c2 r4 a |
  bes2(^\markup{ \italic cresc. } a4) bes |
  a2 bes4(\p c) |
  des1 |
  c |
}

tenFourVoice = <<
  \commonDynArtFour
  \tenFourTune
>>

basFourTune = \relative c' {
  as4^\markup{ Solo } as^\markup{ \italic dolce } g8[ f] |
  e4 f es des |
  c1( |
  des2 es |
  as4 g8[ f] c2) |
  des4( c8[ bes]) a4 f' |
  bes g e c |
  f2( es?) |
  r4 c' g as |
  e2 f |
  bes,( c |
  des4 c8[ bes]) a4 r |
  r bes' bes a |
  bes2 r4 bes, |
  c( bes c2) |
  f, r |
  r4 bes c bes |
  a2 r4 a' |
  bes2 r4 bes |
  c( des c bes |
  as8[ g] f4 e c |
  f) g as e |
  f2 es? |
  as, c |
  des d |
  es( e |
  f a) |
  bes4 r r f |
  bes bes,8[ c] des4 es |
  f( as,8[ bes] c2) |
  f2 r4 bes\f |
  f2 r4 des' |
  c bes a f |
  bes f bes2~ |
  bes4 as as g |
  as( ges f es8[ des] |
  es4) f ges2 |
  r r4 f |
  bes2. bes,4 |
  bes'2 r4 bes, |
  bes'2. as?4 |
  g es c f |
  es2 es |
  as, r4 des'\f |
  c2 r4 des |
  c2 r4 as |
  des2 des, |
  c r4 c'\p |
  as2 e |
  f( des) |
  bes c |
  des bes |
  c4( bes c2) |
  f, r4 bes |
  f'2 des |
  a r4 f' |
  bes( f es)^\markup{ \italic cresc. } des |
  c2 bes\p |
  f' f, |
  R1 |
}

basFourVoice = <<
  \commonDynArtFour
  \basFourTune
>>

sopFourLyrics = \lyricmode {
  Und ob es währt bis __ in die Nacht, __
  und wie -- der an __ den Mor -- gen __
  doch soll mein Herz an__ Got -- tes Macht
  ver -- zwei -- feln nicht, noch sor -- gen, __
  so tu Is -- ra -- el rech -- ter Art, __
  der aus dem Geist er -- zeu -- get ward
  und sei -- nes Gott’s er -- har -- re! __
}

altFourLyrics = \lyricmode {
  Und ob es __ währt bis in die Nacht, __ bis in die __ Nacht,
  und wie -- der an __ den Mor -- gen,
  doch soll mein Herz an Got -- tes Macht,
  doch soll mein Herz, doch soll mein Herz __
  an Got -- tes Macht,
  ver -- zwei -- feln nicht, noch sor -- gen,
  ver -- zwei -- feln nicht, ver -- zwei -- feln nicht, noch sor -- gen,
  So tu __ Is -- ra -- el rech -- ter Art,
  Is -- ra -- el rech -- ter __ Art, Is -- ra -- el rech -- ter __ Art,
  der aus dem Geist, __ der aus dem Geist __ er -- zeu -- get ward,
  der aus __ dem Geist, dem Geist er -- zeu -- get ward
  und sei -- nes Gott’s, __ sei -- nes Gott’s er -- har -- re,
  und sei -- nes Gott’s, er -- har -- re!
}

tenFourLyrics = \lyricmode {
  Und ob es währt bis in die Nacht, __ bis in __ die Nacht,
  und wie -- der an den Mor -- gen,
  und wie -- der an den Mor -- gen
  doch soll __ mein Herz,
  doch soll mein Herz  an Got -- tes Macht __
  ver -- zwei -- feln nicht, ver -- zwei -- feln nicht, ver -- zwei -- feln nicht,
  ver -- zwei -- feln nicht, noch sor -- gen.
  So tu __ Is -- ra -- el rech -- ter Art,
  Is -- ra -- el rech -- ter __ Art, rech -- ter __ Art,
  der aus dem Geist, __ der aus dem Geist __ er -- zeu -- get ward,
  der aus dem Geist er -- zeu -- get ward
  und sei -- nes Gott’s, sei -- nes Gott’s er -- har -- re,
  und sei -- nes Gott’s, und sei -- nes Gott’s er -- har -- re!
}

basFourLyrics = \lyricmode {
  Und ob es währt bis in die Nacht, __
  und __ ob es währt bis in die Nacht, __
  und wie -- der an den Mor -- gen,
  und wie -- der an den Mor -- gen,
  doch soll mein Herz,
  doch soll mein Herz __ an Got -- tes Macht
  ver -- zwei -- feln nicht, noch sor -- gen,
  ver -- zwei -- feln nicht, noch sor -- gen.
  So tu Is -- ra -- el rech -- ter Art,
  so tu __ Is -- ra -- el rech -- ter Art,
  der aus dem Geist, dem Geist,
  der aus dem Geist er -- zeu -- get ward,
  der aus dem Geist er -- zeu -- get ward,
  und sei -- nes Gott’s, __ sei -- nes Gott’s er -- har -- re,
  und sei -- nes Gott’s, und sei -- nes Gott’s er -- har -- re!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                        %
%    No. 5: Choral "Ob bei uns ist"      %
%                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalFive = {
  \time 4/4
  \key as \major
  \autoBeamOff
  \dynamicUp
}

commonDynArtFive = {
  s1 |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4 \fermata s2. |
  s1 |
  s4\fermata s4\p s2|
  s1 |
  s1 |
  s2 s2 \bar "|."
}

sopFiveTune = \relative c'' {
  c2 f,4 c' |
  des c8[ bes] as4 bes |
  c c des es |
  des bes as( g) |
  f c' f, c' |
  des c8[ bes] as4 bes |
  c c des es |
  des bes as( g) |
  f  bes as des |
  c bes es8[ des] c4 |
  bes des c des |
  es as, c bes |
  as as des c |
  bes f as( g) |
  f1~ |
  f\fermata  |
}

sopFiveVoice = <<
  \commonDynArtFive
  \sopFiveTune
>>

altFiveTune = \relative c' {
  c4( f8[ e]) f4 as |
  bes as8[ g] f4 f |
  e f des as' |
  as f8[ g?] as( f4 e8) |
  f4 c c f |
  f g c, e8[ f] |
  g4 a bes ges |
  f des8[ es] f4.( e8) |
  f4 des f f |
  es8[ f] ges4 ges8[ f] ges[ es] |
  des4 f8[ g?] as8[ g] f4 |
  es as as g |
  es f f e |
  f f f( es? |
  des2 a4 bes8[ c] |
  des2) c |
}

altFiveVoice = <<
  \commonDynArtFive
  \altFiveTune
>>

tenFiveTune = \relative c {
  as4( c8[ bes]) c4 f |
  f e f f, |
  g a bes c |
  des des c8([ des] bes4) |
  as c8[ bes] as4 a |
  bes g8[ c] c4 g'8[ f] |
  e4 f f c |
  des des des4.( bes8) |
  as4 ges as as |
  as bes bes bes8[ a] |
  bes4 bes c8[ bes] as4 |
  as f' es4. des8 |
  c4 c bes8[ as] g4 |
  f des' c2( |
  as4 bes c bes8[ a] |
  bes4 f8[ g]) a2 |
}

tenFiveVoice = <<
  \commonDynArtFive
  \tenFiveTune
>>

basFiveTune = \relative c {
  f4( as8[ g]) as4 f |
  bes, c des des |
  c f bes as8[ ges] |
  f4 des8[ es] f([ bes,] c4) |
  f, as'8[ g] f4 f |
  bes, e f des' |
  c f, bes bes8[ a] |
  bes4 bes,8[ c] des[ c bes c] |
  f4 ges des f |
  as es c8[ des] es[ f] |
  bes,4 bes' f f |
  c des es8[ des] es4 |
  as, f' bes, c |
  des bes c( as |
  des bes' f des8[ c] |
  bes2) f\fermata  |
}

basFiveVoice = <<
  \commonDynArtFive
  \basFiveTune
>>

sopFiveLyrics = \lyricmode {
  Ob bei uns ist der Sün -- de viel,
  bei Gott ist viel mehr Gna -- de!
  Sein Hand zu hel -- fen hat kein Ziel,
  wie groß auch sei der Scha -- de.
  Er ist al -- lein der gu -- te Hirt,
  der Is -- ra -- el er -- lö -- sen wird
  aus sei -- nen Sün -- den al -- len. __
}

commonFiveLyrics = \lyricmode {
  Ob __ bei uns ist der Sün -- de viel,
  bei Gott ist viel mehr Gna -- de!
  Sein Hand zu hel -- fen hat kein Ziel,
  wie groß auch sei der Scha -- de.
  Er ist al -- lein der gu -- te Hirt,
  der Is -- ra -- el er -- lö -- sen wird
  aus sei -- nen Sün -- den al -- len.
}


% the output

#(set-global-staff-size 16)

\book {
  \paper {
    page-count = 11
  }

  \markup {
    \vspace #2
    \fontsize #2.5 "I. Choral"
  }
  \noPageBreak
  \score {
    % No 1 (Choral "Aus tiefer Not")
    \new SemiChoirStaff <<
      \new Staff
      <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sopOneVoice" { \globalOne \sopOneVoice }
      >>
      \new Lyrics \lyricsto "sopOneVoice" { \commonOneLyrics }

      \new Staff
      <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalOne \altOneVoice }
      >>
      \new Lyrics \lyricsto "alt" { \commonOneLyrics }

      \new Staff
      <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "tenOneVoice" { \clef "G_8" \globalOne \tenOneVoice }
      >>
      \new Lyrics \lyricsto "tenOneVoice" { \commonOneLyrics }

      \new Staff
      <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "basOneVoice" { \clef bass \globalOne \basOneVoice }
      >>
      \new Lyrics \lyricsto "basOneVoice" { \commonOneLyrics }
    >> %end of SemiChoirStaff

    \layout { }
    \midi { }
  }% end of score No.1 (Choral: "Aus tiefer Not")

  \pageBreak

  \markup {
    \vspace #2
    \fontsize #2.5 "II. Fuge"
  }
  \noPageBreak
  \score {
    % No 2 (Fugue: "Aus tiefer Not")
    \new SemiChoirStaff <<
      \new Staff
      <<
        \new Voice = "sopTwoVoice" { \globalTwo \sopTwoVoice }
      >>
      \new Lyrics \lyricsto "sopTwoVoice" { \sopTwoLyrics }

      \new Staff
      <<
        \new Voice = "alt" { \globalTwo \altTwoVoice }
      >>
      \new Lyrics \lyricsto "alt" { \altTwoLyrics }

      \new Staff
      <<
        \new Voice = "tenTwoVoice" { \clef "G_8" \globalTwo \tenTwoVoice }
      >>
      \new Lyrics \lyricsto "tenTwoVoice" { \tenTwoLyrics }

      \new Staff
      <<
        \new Voice = "basTwoVoice" { \clef bass \globalTwo \basTwoVoice }
      >>
      \new Lyrics \lyricsto "basTwoVoice" { \basTwoLyrics }
    >> %end of SemiChoirStaff

    \layout { }
    \midi { }
  }% end of score No.2 (Fugue: "Aus tiefer Not")

  %\pageBreak

  \markup {
    \vspace #2
    \line { \fontsize #2.5 "III. Arie" \fontsize #1 " mit Chor" }
  }
  \noPageBreak
  \score {
    % No 3 (Aria: "Bei dir gilt nichts denn Gnad und Gunst")
    \new SemiChoirStaff <<
      \new Staff <<
        \set Staff.instrumentName = #"Sopran"
        \new Voice = "sopThreeVoice" { \globalThree \sopThreeVoice }
      >>
      \new Lyrics \lyricsto "sopThreeVoice" { \sopThreeLyrics }

      \new Staff <<
        \set Staff.instrumentName = #"Alt"
        \new Voice = "altThreeVoice" { \globalThree \altThreeVoice }
      >>
      \new Lyrics \lyricsto "altThreeVoice" { \altThreeLyrics }

      \new Staff <<
        \set Staff.instrumentName = #"Tenor"
        \new Voice = "tenThreeVoice" { \globalThree \clef "G_8" \tenThreeVoice }
      >>
      \new Lyrics \lyricsto "tenThreeVoice" { \tenThreeLyrics }

      \new Staff <<
        \set Staff.instrumentName = #"Bass"
        \new Voice = "basThreeVoice" { \globalThree \clef bass \basThreeVoice }
      >>
      \new Lyrics \lyricsto "basThreeVoice" { \basThreeLyrics }

      \new PianoStaff <<
        \set PianoStaff.instrumentName = #"Orgel"
        \new Staff <<
          \new Voice = "organThreeRightVoice" { \globalThree \organThreeRightVoice }
        >>
        \new Staff <<
          \new Voice = "organThreeLeftVoice" { \globalThree \clef bass \organThreeLeftVoice }
        >>
      >> % end of PianoStaff (Organ)
    >> % end of StaffGroup (Choir and Organ)

    \layout {
      \context {
        \Staff \RemoveEmptyStaves
      }

      \context {
        \Score
        % Remove all-rest staves also in the first system
        \override VerticalAxisGroup.remove-first = ##t
        % If only one non-empty staff in a system exists, still print the starting bar
        \override SystemStartBar.collapse-height = #1
      }
    }

    \midi { }

  } % end of score No.3 (Aria "Bei dir gilt nichts denn Gnad und Gunst")

  %\pageBreak

  \markup {
    \vspace #2
    \fontsize #2.5 "IV. Choral"
  }
  \noPageBreak

  \score {
    % No. 4 (Choral "Und ob es währt bis in die Nacht")
    \new SemiChoirStaff <<
      \new Staff
      <<
        \new Voice = "sopFourVoice" { \globalFour \sopFourVoice }
      >>
      \new Lyrics \lyricsto "sopFourVoice" { \sopFourLyrics }

      \new Staff
      <<
        \new Voice = "alt" { \globalFour \altFourVoice }
      >>
      \new Lyrics \lyricsto "alt" { \altFourLyrics }

      \new Staff
      <<
        \new Voice = "tenFourVoice" { \clef "G_8" \globalFour \tenFourVoice }
      >>
      \new Lyrics \lyricsto "tenFourVoice" { \tenFourLyrics }

      \new Staff
      <<
        \new Voice = "basFourVoice" { \clef bass \globalFour \basFourVoice }
      >>
      \new Lyrics \lyricsto "basFourVoice" { \basFourLyrics }
    >> %end of SemiChoirStaff

    \layout { }
    \midi { }
  }% end of score No. 4 (Chorus "Und ob es währt bis in die Nacht")

  %\pageBreak

  \markup {
    \vspace #2
    \fontsize #2.5 "V. Choral"
  }
  \noPageBreak
  \score {
    % No. 5 (Choral "Ob bei uns ist der Sünde viel")
    \new SemiChoirStaff <<
      \new Staff
      <<
        \new Voice = "sopFiveVoice" { \globalFive \sopFiveVoice }
      >>
      \new Lyrics \lyricsto "sopFiveVoice" { \sopFiveLyrics }

      \new Staff
      <<
        \new Voice = "alt" { \globalFive \altFiveVoice }
      >>
      \new Lyrics \lyricsto "alt" { \commonFiveLyrics }

      \new Staff
      <<
        \new Voice = "tenFiveVoice" { \clef "G_8" \globalFive \tenFiveVoice }
      >>
      \new Lyrics \lyricsto "tenFiveVoice" { \commonFiveLyrics }

      \new Staff
      <<
        \new Voice = "basFiveVoice" { \clef bass \globalFive \basFiveVoice }
      >>
      \new Lyrics \lyricsto "basFiveVoice" { \commonFiveLyrics }
    >> %end of SemiChoirStaff

    \layout { }
    \midi { }
  }% end of score No. 5 (Choral: "Ob bei uns ist der Sünde viel")

}%end of book
