\version "2.19.22"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       PRELIMINIARIES         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% the header including the information needed on www.mutopiaproject.org
\header {
  title = \markup { \normal-text \fontsize #2.5 "Herr, nun lässest du deinen Diener in Frieden fahren" }
  subtitle = \markup{ \normal-text "MWV 60 (op. 69, Nr. 1) „Nunc dimittis“" }  
  composer = "Felix Mendelssohn Bartholdy (1809-1847)"

  mutopiatitle = "Herr, nun lässest du deinen Diener in Frieden fahren"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiaopus = "69"
  mutopiainstrument ="SATB, Organ"
  date = "1830"
  source = "C.F. Peters No. 1770b, n.d. Plate 6065. "
  style = "Romantic"
  license = "Public Domain"
  maintainer = "Jonathan Scholbach"
  maintainerEmail = "j[dot]scholbach[at]posteo[dot]de"
  maintainerWeb "www.jonathan-scholbach.de"
  moreInfo = "This is No. 1 of Mendelssohn's op. 69 (MWV 60)"

 footer = "Mutopia-2016/10/28-2139"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

% differences from the source edition comprise:
%  + only german lyrics are typeset here for improving readability, english lyrics are erased
%  + orthography was adapted to contemporary german, leaving the interpunction unaffected
%  + slurs which follow the pattern a~ a( b) in the source were slurred
%      a~( a b) instead, analogously the slurs a( b~) b were dealt with
%  + the breaks were changed. Original breaks are stored in \oBreak and \oPageBreak 
%      in the soprano voice

oBreak = {
  % \break
}

oPageBreak = {
  % \pageBreak
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

crescmu = \markup{ \italic cresc. }
dimmu = \markup{ \italic dim. }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           INPUT              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% music definition

global = {
  \key es \major
  \time 2/2
  \autoBeamOff
  \dynamicUp
}

commonDynArt = {
  \tempo "Andante (Nunc dimittis)"
  s1 * 30 |
  s2^\dimmu s2 |
  s1 * 16 |
  s1\fermata \bar "||" \break
  s2\p^\markup{ \fontsize #1.5 \box \pad-markup #0.2 "Solo" } s2 |

  s1 * 8 |
  s2 s2^\crescmu |
  s1 * 6 |
  s4. s8^\markup{ \fontsize #1.5 \box \pad-markup #0.2 "Tutti" }  s2 |
  s1 * 9 |
  s4.\f s8 s2 |
  s1*21 |
  s2 s4.^\crescmu s8 |
  s1 * 23 |
  s1^\dimmu |
  s1 |
  s1\pp \fermata \bar "||" \break
  \time 4/4
  \tempo "Andante sostenuto (Gloria Patri)"
  s4\f s2. |
  s1 * 3 |
  s4 s4 s2 |
  s1 |
  s2 s4\f s4 |
  s1*4 |
  s2\sf s2 |
  s1 |
  s2^\dimmu s2 |
  s1*3 |
  s2\p s2 |
  s1 |
  s1\fermata \bar "|."
}

sopTune = \relative c' {
  % Nunc dimittis
  R1 |
  R1 |
  R1 |
  R1 |
  es1\p |
  bes'2 as4. as8 |
  g1~ |
  g2 bes4 bes |
  as2 g4 as | \oBreak
  f2. f4 |
  f2 bes4^\crescmu bes |
  bes2( c |
  d) es |
  f bes, |
  bes1 |
  R |
  f |
  bes2 as4. as8 |
  g2 r |
  g2.^\crescmu g4| \oBreak
  es'2 d4 es |
  c2 b |
  c( g) |
  g f |
  es f |
  g^\crescmu g |
  c1~\f |
  c4 r c2 |
  c( bes4) c | \oPageBreak
  as2 r |
  bes1 |
  es2 d4. d8 |
  c1~ |
  c2 es4 es |
  d2 c4 d |
  bes2. bes4 |
  bes2 bes |
  r es,\p  |
  es( f |
  g) as | \oBreak
  bes es, |
  es as |
  as1~ |
  as( |
  g2) f |
  es1~ |
  es2 d |
  es1
  
  % Solo
  g2\p es' |
  d c |
  b! c4. c8 |
  d2 d4. d8 | 
  g,2 r | \oBreak
  r as |
  g( c~ |
  c) bes |
  as1 |
  g4. g8 g4.\< g8 |
  d'2.\! c4 |
  bes2 a! |
  g g~| \oPageBreak
  g4. g8 c4. bes8 |
  a!4. a8 bes4. g8 |
  g1 |
  fis2 
  
  % Tutti
  r |
  r4 r8 a!8\f a4. a8 |
  d1~ |
  d2 cis |
  d c!4. c8 |
  bes2 bes |
  r4 r8 d d4. d8 |
  bes2. bes4 |
  bes2 a!4. a8 |
  d2 d |
  d4. d8 d4. d8 |
  d2 c | \oBreak
  c4. c8 c4. c8 |
  f1 |
  bes, |
  a!2 g |
  fis fis |
  d'2. d4 | 
  g,1~ |
  g2 g |
  fis fis |
  g1 |
  R1 |
  R1 | \oBreak
  R1 |
  R1 |
  es1\p |
  bes'2 as4. as8 |
  g1~ |
  g2 bes4 bes |
  as2 g4 as |
  f2. f4 |
  f2 bes4. bes8 | \oBreak
  bes2 c |
  d es4. es8 |
  f2 bes,4. bes8 |
  bes2 bes2~\f |
  bes4. bes8 bes4. bes 8 |
  es2 es |
  r4 r8 es es4. es8 |
  d2 g,4. g8 | \oPageBreak
  bes1~ |
  bes2 as |
  f' es |
  d4. d8 c4. d8 |
  es2 as, |
  as g |
  f1 |
  R1 |
  R1 | \oBreak
  es1\p |
  bes'2 as4. as8 |
  g2 g4 f |
  es1~ |
  es2 as4 as |
  g2 f |
  es1~ |
  es |
  es | \oBreak
  
  % Gloria Patri
  es'4 es d d |
  es2( bes~ |
  bes4) bes as as |
  g1~ |
  g4 g^\dimmu f es |
  d2 d4 d |
  es2 g4 g |
  g g g g | \oBreak
  bes4. bes8 bes4 bes |
  c2 c4 c |
  d4. d8 d4 d |
  es2 d |
  c1 |
  bes |
  as |
  g~( |
  g2 f4 es) |
  d2 r4 es~( |
  es2 d) |
  es1 |
}
  
altTune = \relative c' {
  % Nunc dimittis
  R1 |
  R1 |
  bes1\p |
  es2 d4. d8 |
  c2( bes4 c) |
  d2. d4 |
  es2 bes4 bes |
  es1~ |
  es2 es |
  f( es4 f) |
  d2 d'^\crescmu |
  as( g4 as) |
  f2 r |
  R1 |
  r2 as |
  as( g^\dimmu |
  f) es |
  d f |
  es1( |
  d2) g^\crescmu |
  g( f |
  es) d4( es) |
  c2 r |
  c1^\crescmu |
  g'2 f4. f8 |
  es1~ |
  es2 as4\f as |
  g2 f4 g |
  e2. e4| 
  f2( as~ |
  as) g~ |
  g bes |
  bes( as |
  g2.) f4 |
  f( g as2~ |
  as g |
  f) es4( d) |
  c2 r |
  r bes\p |
  bes( c |
  des1~ |
  des2) c |
  c( d! |
  es) f |
  g c, |
  c1 |
  bes |
  bes |
 
  % Solo
  g'2 g |
  as g |
  f1~ |
  f2 g4. f8 |
  es2 f4. f8 |
  es2 r |
  r es |
  d( g~ |
  g) f |
  es( d~ |
  d) es |
  d4. d8 d4.\< d8 |
  g2.\! f4 |
  es4.( d8 c4.) g'8 |
  es2( d~ |
  d c) |
  d 

  % Solo
  r |
  r4 r8 fis\f fis4. fis8 |
  fis2 a! |
  a! a4. a8 |
  a!2 a |
  r4 r8 d, d4. d8 |
  g1~ |
  g2 g4. g8 |
  g2 f~ |
  f4. f8 f4. f8 |
  bes1~ |
  bes4. bes8 bes4. bes8 |
  a!2 a4. a8 |
  a!1( |
  bes2 g) |
  r es4. es8 |
  d2 d |
  d1~ |
  d2 c4( d) |
  es2 es |
  d c |
  b!1 |
  R1 |
  d1\p |
  g2 f4. f8 |
  es2( d) |
  c bes |
  d1 |
  es2 bes |
  es2. es4 |
  es1~( |
  es2 d4 c) |
  d2 es4. es8 |
  as2 g4( c) |
  bes2 as4. as8 |
  as4( g) f f |
  bes2( es,) |
  g4.\f g8 g4. f8  |
  es4.( f8) g2 |
  r4 r8 g g4. g8 |
  g2 g~ |
  g f |
  es2. es4 |
  as2. as4 |
  as4. as8 as4. as8 |
  g2 f4.( es8) |
  d2( es~ |
  es) d |
  bes c\p |
  des1~ |
  des2 des |
  des1~( |
  des4 c) bes bes |
  es2 des4 des |
  c1~ |
  c2 c |
  es( c |
  bes c) |
  bes1 |
 
  % Gloria Patri
  g'4 g f f |
  es1~ |
  es4 es es d |
  es bes es d |
  c1~^\dimmu( |
  c4 bes) bes bes |
  bes2 es4 es |
  es es es es |
  d4. d8 g4 g |
  g2 g4 a!8([ g]) |
  fis4. fis8 g4 g |
  g2 g |
  g( f~ |
  f) es~( |
  es d4 c |
  bes1~) |
  bes2 as |
  d4( c bes2~ |
  bes1) |
  bes |
}

tenTune = \relative c {
  % Nunc dimittis
  es1\p |
  bes'2 as4. as8 |
  g1~ |
  g2 bes4 bes |
  as2 g4 as |
  f2. f4 |
  es1 |
  es2 es |
  es'1( |
  bes2 a!) |
  bes r |
  r bes^\crescmu |
  bes( c |
  d1 |
  es2) f |
  bes, bes^\dimmu |
  as2. g4 |
  f2 d' |
  d( c |
  b! c4) d4 |
  g,2 r |
  g1^\crescmu |
  c2 bes4. bes8 |
  as1 |
  g4( es'2) d4 |
  c2 bes4 c |
  as2.\f as4 |
  as2.( bes4) |
  g1 |
  r2 c |
  f( bes,~ |
  bes4 es) es2~ |
  es4 r es2 |
  es4( d c2 |
  bes) es, |
  f g |
  as( bes |
  c2.) c4 |
  bes2 r |
  r es,\p |
  es1~ |
  es2 f~ |
  f1 |
  r2 bes |
  bes( as |
  g) f |
  f as |
  g1 |
  
  % Solo
  es'2\p es |
  f es |
  d c4. c8 |
  b!1( |
  c2) c~ |
  c d |
  es r |
  r d |
  es( bes~ |
  bes4) c d2 |
  g,4. g8 g4.\< g8 |
  d'2.\! c4 |
  bes( a!) g2 |
  c2( es4. d8 |
  c2) bes |
  bes c |
  r4 r8
  
  % Tutti
  a!\f a4. a8 |
  d1~ |
  d2 fis |
  e! e4. e8 |
  d2 d~ |
  d r |
  R1 |
  r4 r8 bes bes4. bes8 |
  es2 es4. es8 |
  d2 d |
  d4. d8 d4. d8 |
  e!2 e |
  f4. f8 f4. f8 |
  f1~ |
  f2 g |
  es c |
  a! a |
  a!( g~ |
  g c4 bes |
  a!2) a |
  a!1 |
  g\> |
  d'2\p c4. c8 |
  b!1~ |
  b!2 d4 d |
  c2 bes!4 c |
  as2 g |
  f f |
  R1 |
  r2 g |
  as bes |
  c f, |
  f g4. es'8 |
  d2 es |
  f es4. es8 |
  es2 d4 c |
  bes1 |
  es4.\f es8 es4. d8 |
  c4.( d8) es2 |
  r4 r8 c c4. c8 |
  bes1 |
  des2. des4 |
  c2. c4 |
  c2 c |
  f1 |
  bes,2 c |
  bes1 |
  bes |
  es,\p |
  bes'2 as4. as8 |
  g1( |
  f2) bes4 bes |
  bes( as)  g2~ |
  g g |
  as1~ |
  as2 as |
  bes( es,4 f |
  g2 as) |
  g1 |
  
  % Gloria Patri
  d'4 d d c |
  g2( bes |
  bes4) bes c bes |
  bes1~ |
  bes4 bes^\dimmu as g |
  f2 f4 as |
  g2 bes4 bes |
  c c c c |
  bes4. bes8 d4 d |
  c2 g4 g |
  a!4. a8 bes4 bes |
  c2 bes |
  bes( as!~ |
  as) g~ |
  g f |
  g4( f es2~ |
  es as~ |
  as) g |
  f1 |
  g |
}

basTune = \relative c {
  % Nunc dimittis
  R1 * 5 |
  bes1\p |
  es2 d4. d8 |
  c1~ |
  c2 es4 es |
  d2 c4 d |
  bes2. bes4 |
  bes1 |
  bes4 r bes'2^\crescmu |
  bes( as |
  g) f |
  es bes'^\dimmu |
  bes1 |
  bes, |
  es2 es4. f8 |
  g1~ |
  g2 as4 as |
  g2 f4 g |
  es2. es4 |
  f2^\crescmu c4 c |
  c2 d |
  es4( f) g2 |
  as\f r |
  R1 |
  c,\f |
  f2 es4. es8 |
  d2 es~ |
  es g, |
  as1~ |
  as2 as4 as |
  bes2( c |
  d) es |
  f( g4 f |
  as1) |
  g2 r |
  R1 |
  r2 as,\p |
  as1~( |
  as2 bes |
  c) d |
  es as, |
  as1 |
  bes |
  << { \voiceOne es } \new Voice { \voiceTwo es, } >> \oneVoice |
  
  %Solo
  R1 |
  R1 |
  R1 |
  R1 |
  c'2\p\< as' |
  g\! f |
  es f4. f8 |
  g2 g4. g8 |
  c,2 d |
  es( bes~ 
  bes) c |
  d1 |
  es4. es8 es4.\< es8 |
  a,!2.\! bes4 |
  c2 d |
  es1 |
  d2 
  
  % Tutti
  r |
  r4 r8 d\f d4. d8 |
  d'1 |
  a!2. a4 |
  fis2 fis4. fis8 |
  g2 g |
  r4 r8 bes, bes4. bes8 |
  es2. es4 |
  c2 f4. f8 |
  bes2 bes |
  bes,4. bes8 bes4. bes8 |
  c2 c |
  f4. f8 es4. es8 |
  es2( d~ |
  d) es |
  c c |
  d c |
  bes1~ |
  bes2 es4( d) |
  c2 c |
  d d |
  g,1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  bes1\p |
  es2 d4. d8 |
  c2 c4 c |
  c2 bes4 bes |
  as2. as4 |
  as2 g4. g'8 |
  f2 es |
  d c4. c8 |
  bes2 as4 as |
  g2 g'~\f |
  g4. g8 g4. g8 |
  c2 c |
  r4 r8 c, c4. c8 |
  g'1 |
  es2. es4 |
  as1 |
  as2 r |
  r f |
  g as4. as8 |
  bes2. bes,4 |
  bes2 as |
  g1 |
  R1 |
  R1 |
  bes1\p |
  es2 des4. des8 |  
  c2 bes4 bes |
  as1~ |
  as2 as4 as |
  g2 as |
  << { \voiceOne es'1 es } \new Voice { \voiceTwo es,1 es } >> \oneVoice
  
  % Gloria Patri
  es'4 g bes bes, |
  c2( g~ |
  g4) g' f bes, |
  es1 |
  as,2 as4^\dimmu as |
  bes2 bes4 bes |
  << { \voiceOne es2 } \new Voice { \voiceTwo es,2 } >> \oneVoice es'4 d |
  c c c es |
  g4. g8 g4 f |
  es2 es4 es |
  d4. d8 g4 g |
  c,2 g |
  as!1 |
  bes( |
  c2 d |
  es2. d4) |
  c1 |
  bes~ |
  bes
  << { \voiceOne es } \new Voice { \voiceTwo es, } >> \oneVoice |
}

sopVoice = <<
  \commonDynArt
  \sopTune
>>

altVoice = <<
  \commonDynArt
  \altTune
>>

tenVoice = <<
  \commonDynArt
  \tenTune
>>

basVoice = <<
  \commonDynArt
  \basTune
>>

% lyrics definitions

sopLyrics = \lyricmode {
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  wie du __ ver -- hei -- ßen hast,
  Herr, nun läs -- sest du
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  wie du ver -- hei -- ßen hast, __
  ver -- hei -- ßen hast,
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  wie du __ ver -- hei -- ßen hast,
  wie du __ ver -- hei -- ßen hast.
  
  Denn mein Au -- ge 
  hat dei -- nen Hei -- land ge -- seh’n
  den du __ be -- rei -- tet
  vor al -- len Völ -- kern, 
  al -- len Völ -- kern, __
  be -- rei -- tet hast 
  vor al -- len Völ -- kern, 
  
  dass er ein Licht, __ ein Licht sei den Hei -- den,
  dass er ein Licht, ein Licht sei den Hei -- den,
  und zu Preis und Eh -- re,
  und zu Preis und Eh -- re
  dei -- nes Vol -- kes, dei -- nes Vol -- kes Is -- ra -- el.
  
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  mein Au -- ge 
  hat dei -- nen Hei -- land ge -- seh’n,
  wel -- chen du be -- rei -- tet,
  dass er ein Licht sei den Hei -- den,
  und zum Prei -- se dei -- nes Vol -- kes Is -- ra -- el.
  
  Herr, nun läs -- sest du
  dei -- nen Die -- ner in Frie -- den fah -- ren.
  
  Eh -- re sei dem Va -- ter, und dem Soh -- ne, 
  und dem hei -- li -- gen Geist,
  wie es war zu An -- fang, jetzt und im -- mer -- dar,
  und von E -- wig -- keit zu E -- wig -- keit. 
  A -- men, A -- men, A -- men.
}


altLyrics = \lyricmode {
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren, in Frie -- den,
  wie du __ ver -- hei -- ßen hast, __
  ver -- hei -- ßen hast,
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren, __
  wie du __ ver -- hei -- ßen hast,
  wie du __ ver -- hei -- ßen hast,
  ver -- hei -- ßen hast.
  
  Denn mein Au -- ge 
  hat __ dei -- nen Hei -- land ge -- seh’n
  den du __ be -- rei -- tet hast
  vor al -- len Völ -- kern, 
  al -- len Völ -- kern,
  
  dass er ein Licht, ein Licht sei den Hei -- den,
  dass er ein Licht __ sei den Hei -- den,
  dass er ein Licht, __ dass er ein Licht,
  und zum Preis __ dei -- nes Vol -- kes, dei -- nes Vol -- kes Is -- ra -- el.
  
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  denn mein Au -- ge __ 
  hat dei -- nen Hei -- land ge -- seh’n,
  wel -- chen du be -- rei -- tet,
  dass er ein Licht sei __ den Hei -- den,
  und zum Prei -- se dei -- nes Vol -- kes __ Is -- ra -- el.
  Nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren.
  
  Eh -- re sei dem Va -- ter, und dem Soh -- ne, 
  und dem hei -- li -- gen Geist,
  wie es war zu An -- fang, jetzt und im -- mer -- dar,
  und von E -- wig -- keit zu E -- wig -- keit. __
  A -- men, A -- men, A -- men. 
}

tenLyrics = \lyricmode {
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  in Frie -- den,
  wie du __ ver -- hei -- ßen hast,
  wie du ver -- hei -- ßen hast.
  Herr, nun läs -- sest du
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  wie du, __ Herr, __ ver -- hei -- ßen hast,
  ver -- hei -- ßen hast,
  wie du, __ Herr, __ wie du __ ver -- hei -- ßen hast.
  
  Denn mein Au -- ge 
  hat dei -- nen Hei -- land __ ge -- seh’n
  den du __ be -- rei -- tet
  vor al -- len Völ -- kern, 
  al -- len, al -- len Völ -- kern,
  
  dass er ein Licht, __ ein Licht sei den Hei -- den, __
  dass er ein Licht sei den Hei -- den,
  und zu Preis und Eh --  re, 
  und zu Preis und Eh --  re,
  dei -- nes Vol -- kes Is -- ra -- el.
  
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  wie du ver -- hei -- ßen hast,
  denn mein Au -- ge
  hat dei -- nen Hei -- land ge -- seh’n,
  wel -- chen du be -- rei -- tet,
  dass er ein Licht sei den Hei -- den,
  und zum Preis dei -- nes Vol -- kes.
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner __ in Frie -- den fah -- ren.
  
  Eh -- re sei dem Va -- ter, und dem Soh -- ne, 
  und dem hei -- li -- gen Geist,
  wie es war zu An -- fang, jetzt und im -- mer -- dar,
  und von E -- wig -- keit zu E -- wig -- keit. __
  A -- men, A -- men, A -- men. 
}

basLyrics = \lyricmode {
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,  
  wie du __ ver -- hei -- ßen hast,
  Herr, nun läs -- sest du __ 
  dei -- nen Die -- ner in Frie -- den fah -- ren,  
  wie du ver -- hei -- ßen hast,
  Herr, nun läs -- sest du 
  dei -- nen Die -- ner in Frie -- den fah -- ren,  
  wie du, __ wie du ver -- hei -- ßen hast.
   
  Denn mein Au -- ge 
  hat dei -- nen Hei -- land ge -- seh’n
  den du __ be -- rei -- tet
  vor al -- len Völ -- kern, al -- len Völ -- kern, 
  
  dass er ein Licht sei, ein Licht sei den Hei -- den,
  dass er ein Licht, ein Licht sei den Hei -- den,
  und zu Preis und Eh --  re, 
  und zu Preis und Eh --  re,
  dei -- nes Vol -- kes, dei -- nes Vol -- kes Is -- ra -- el.
  
  Herr, nun läs -- sest du
  dei -- nen Die -- ner in Frie -- den fah -- ren,
  mein Au -- ge hat dei -- nen Hei -- land ge -- seh’n,
  wel -- chen du be -- rei -- tet,
  dass er ein Licht sei den Hei -- den,
  zum Preis dei -- nes Vol -- kes Is -- ra -- el.
  Herr, nun läs -- sest du
  dei -- nen Die -- ner in Frie -- den fah -- ren.
  
  Eh -- re sei dem Va -- ter, und dem Soh -- ne, 
  und dem hei -- li -- gen Geist,
  wie es war zu An -- fang, jetzt und im -- mer -- dar,
  und von E -- wig -- keit zu E -- wig -- keit. 
  A -- men, A -- men. 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         PDF OUTPUT           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 15)
\paper{
  page-count = 4
  system-count = 16
}
\markup { \vspace #1 }

  \score {
  \new SemiChoirStaff <<
    \new Staff
    <<
      \set Staff.instrumentName = "Sopran"
      \new Voice = "sopVoice" { \global \sopVoice }
    >>
    \new Lyrics \lyricsto "sopVoice" { \sopLyrics }

    \new Staff
    <<
      \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \global \altVoice }
    >>
    \new Lyrics \lyricsto "alt" { \altLyrics }

    \new Staff
    <<
      \set Staff.instrumentName = "Tenor"
      \new Voice = "tenVoice" { \clef "G_8" \global \tenVoice }
    >>
    \new Lyrics \lyricsto "tenVoice" { \tenLyrics }

    \new Staff
    <<
      \set Staff.instrumentName = "Bass"
      \new Voice = "basVoice" { \clef bass \global \basVoice }
    >>
    \new Lyrics \lyricsto "basVoice" { \basLyrics }
  >> %end of SemiChoirStaff

  \layout { }
  }% end of score


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         MIDI OUTPUT          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


  % preliminary definitions

  stafftovoice = \midi {
    \tempo 4=100
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }

  backgroundVoice = {
    \set Staff.midiInstrument = #"recorder"
  }

  highlightedVoice= {
    \set midiInstrument = #"trumpet"
    \set Staff.midiMinimumVolume = #0.0
    \set Staff.midiMaximumVolume = #1.0
  }

  \book { %   complete
    \bookOutputSuffix "complete"
    \score {
      \unfoldRepeats
      \new Staff <<
        \backgroundVoice
        \new Voice = "sopran" { \global \sopVoice }
        \new Voice = "alt" { \global \altVoice}
        \new Voice = "tenor" { \global \tenVoice }
        \new Voice = "bass" { \global \basVoice }
      >>
      \stafftovoice
    } % end of score
  } %end of book   complete

  \book { % sopran
    \bookOutputSuffix "sopran"
    \score {
      \unfoldRepeats
      \new Staff <<
        \backgroundVoice
        \new Voice = "sopran" { \highlightedVoice  \global \sopVoice }
        \new Voice = "alt" { \global \altVoice}
        \new Voice = "tenor" { \global \tenVoice }
        \new Voice = "bass" { \global \basVoice }
      >>
      \stafftovoice
    } % end of score
  } %end of book sopran

  \book { %   alt
    \bookOutputSuffix "alt"
    \score {
      \unfoldRepeats
      \new Staff <<
        \backgroundVoice
        \new Voice = "sopran" { \global \sopVoice }
        \new Voice = "alt" { \highlightedVoice \global \altVoice}
        \new Voice = "tenor" { \global \tenVoice }
        \new Voice = "bass" { \global \basVoice }
      >>
      \stafftovoice
    } % end of score
  } %end of book alt

  \book { %   tenor
    \bookOutputSuffix "tenor"
    \score {
      \unfoldRepeats
      \new Staff <<
        \backgroundVoice
        \new Voice = "sopran" { \global \sopVoice }
        \new Voice = "alt" { \global \altVoice}
        \new Voice = "tenor" { \highlightedVoice  \global \tenVoice }
        \new Voice = "bass" { \global \basVoice }
      >>
      \stafftovoice
    } % end of score
  } %end of book tenor

  \book { %  bass
    \bookOutputSuffix "bass"
    \score {
      \unfoldRepeats
      \new Staff <<
        \backgroundVoice
        \new Voice = "sopran" { \global \sopVoice }
        \new Voice = "alt" { \global \altVoice}
        \new Voice = "tenor" { \global \tenVoice }
        \new Voice = "bass" { \highlightedVoice \global \basVoice }
      >>
      \stafftovoice
    } % end of score
  } %end of book   bass
