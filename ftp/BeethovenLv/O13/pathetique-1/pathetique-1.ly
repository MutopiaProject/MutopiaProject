#(set-global-staff-size 17.7)

\version "2.12.0"
\include "english.ly"			% English note names

\header {
  title = "Sonata No. 8 “Pathétique”"
  subtitle = "1st Movement"
  composer = "L. van Beethoven"
  opus = "Op. 13"

  mutopiatitle = "Sonata No. 8 “Pathétique” (1st Movement: Grave, Allegro molto e con brio)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  date = "1800s"
  source = "G. Schirmer, 1894 and Berners, 1908"
  style = "Classical"
  copyright = "Public Domain"

  maintainer = "Chris Sawer"
  maintainerEmail = "chris@mutopiaproject.org"
  maintainerWeb = "http://www.whitewillow.co.uk/"

 footer = "Mutopia-2009/09/13-299"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by Peter Samuelson and Chris Sawer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme I (Grave)

thIr =  \relative c' {
  <c g ef>4^\markup {\large "Grave"} \fp ~ <c g ef>16.[ <c g>32 <d b g>16. <ef c g>32]
    <ef c a>4( <d b>8) r
  <f d b>4\fp ~ <f d b>16.[ <f d b>32 <g d b>16. <af d, b>32]
    <af d, b>4( <g ef c>8) r

  <c a fs>4 \fp ~ <c a fs>16.[ <c a fs>32 <d a fs>16. <ef a, fs>32]
    <ef a, fs>4( \sf <d g, d>16[)-. r32 <c a fs>32 <d a fs>16. <ef a, fs>32]
  <ef a, fs>4( \sf <d g, d>8[ \p <e c g>8_\markup {\italic "cresc."}]
    <f c af>[)-. af] \sf ~
    \override Slur #'positions = #'(5 . 5)
    af32[( g64 af bf af g f] ef[ d c bf] \times 8/9 { af128[ g f ef d f af f d]}

   ef8)-. \p <ef' ef,>8 ~ <ef ef,>16.[ <ef ef,>32 <f f,>16. <g g,>32]
    \revert Slur #'positions
    <g g,>8[( <f f,>16)] r32 \clef bass f, \ff <f b, af f>16.[ <f b, af f>32 <f c af f>16. <f c af f>32]
  <f d af f>8 \clef treble <f' f,>8 ~ <f f,>16.[ <f f,>32 <g g,>16. <af af,>32]
    <af af,>8[( <g g,>16)] r32 <g, e cs g>32 \ff <a e cs a>16.[ <a e cs a>32 <bf e, cs bf>16. <bf e, cs bf>32]

  <a fs d a>8 <a' a,!>8 ~ <a a,>16.[ <a a,>32 <b b,>16. <c c,>32]
    <c c,>8[( <b b,>16)] r r8 <b b,>16.[ <c c,>32]
  <cs cs,>8[(_\markup {\italic "cresc."} <d d,>)] r <d d,>16.[ <ef ef,>32]
    <e e,>8( <f f,>4) <f f,>8

  <f f,>8 \sfp ~ <f f,>32[ ef!64 d f ef d c!]
     b16[-.( b-. <b f>-. <b f>)-.] <c ef,>8 r r4

    c8[ \p ~ c32 b64( c] \times 4/6 { d[ c bf af g bf)]} af16[-.( af-. af-. af)-.]
    g16[( ef')] ~ \times 4/6{ ef64[ d df c b bf]} \times 8/7{ a128[ af g fs f e ef]}
    d[( df c b bf a af g fs f e ef d df c b)] af'16.[^\fermata b,32]
}
%%%%%%%%%%%%%%%%%%%%

thIl =  \relative c {
  <c g ef c>4 ~ <c g ef c>16.[ ef32 d16. c32] fs4( g8) r16. af,!32 |
  af'4 ~ af16.[ af32 g16. f!32] ef4 ~ ef8 r16. ef32-. |

  ef'4 ~ ef16.[ ef32 d16. c32] c4( b16)[-. r32 ef32 d16. c32]
  c4( b8 <bf c e> <af c f!>)-. r <bf, bf,>4^\sf

  <ef ef,>16 <ef g bf>[ <ef g bf> <ef g bf>] <ef g bf>[ <ef g bf> <ef g bf> <ef g bf>]
    <ef af c>[ <ef af c> <ef af c> <ef af c>] <d d,>[ <d d,> <c c,> <c c,>]
  <b b,> <b d f af>[^\p <b d f af> <b d f af>] <bf d f af>[ <bf d f af> <bf d f af> <bf d f af>] 
    <bf cs e g>[ <bf cs e g> <bf cs e g> <bf cs e g>] <a a,>[ <a a,> <g g,> <g g,>]

  <fs fs,> <d'' a fs>[^\p <d a fs> <d a fs>] <d a fs>[ <d a fs> <d a fs> <d a fs>]
    <d af f>[ <d af f> <d af f> <d af f>] <b f d>[ <b f d> <b f d> <b f d>]
  <af d, b>[ <af d, b> <af d, b> <af d, b>] <f b, af>[ <f b, af> <f b, af> <f b, af>]
    <f b, g>[ <f b, g> <f b, g> <f b, g>] <f c af>[ <f c af> <f c af> <f c af>]

  <f b, g>8-. r r \clef treble <g' d'>16[(-. <g d'>)-.]
    <af c>8 r r4 \clef bass
  r4 r8 <f, c' d>16[(-. <f c' d>)-.]
    <g c ef>8 r <f d g,>8*1/2 s16_ \markup{\italic "attacca subito il Allegro"} r8^\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme II (Allegro di molto e con brio)

thIIar =  \relative c' {
  \set Score.currentBarNumber = #11
  c2.^\markup{\large "Allegro di molto e con brio"} \p <e bf>4-. |
  <f af,>-. <g e>-. <af f>-. <b d,>-. |
    <c ef,!>-. <c e,>2 <e bf!>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
  <c g ef! c>2-._\markup{\italic "cresc."} <g f b, g>-. | <ef c g>-. <d af f>-. |
    << { <c ef,>1(~| <c ef,>2 <b f d> | <c ef, c>4)-. \p } \\
      { g2 fs | a s | s4 } >>

  c,2 <e bf!>4-. | <f af,>-. <g e>-. <af! f>-. <b d,>-. |
    <c ef,!>-. <c e,>2 <e bf!>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
  <c g ef! c>2-._\markup{\italic "cresc."} <g f b, g>-. | <ef c g>-. <d af f>-. |
    << { <c ef,>1(~| <c ef,> | <b g d>4)-. \p } \\
      { g2 fs | a1 | s4 } >>

  r4 <g' g,>2~ \sf | <g g,>4 r4 <g g,>2~ \sf | <g g,>8[ f d b] g[ f d b] | c[ ef c g] fs[ c' af fs] |
  g4-. r <g'' g,>2~ \sf | <g g,>4 r4 <g g,>2~ \sf | <g g,>8[ f d b] g[ f d b] | c[ ef c g] fs[ c' af fs] |

  g4-. fs'-._\markup{\italic "cresc."} g-. <c fs,>-. | <b g>-. <fs' c>-. <g b,>-. <c fs,>-. |
    <b g>-. r r2 | <ef,, df bf>1~ \sf |
  <ef c>4 df'-. c-. <g' df>-. | <af c,>-. <df g,>-. <c af>-. <df g,>-. |
    <c af>-. r r2 | <gf, ef c>1( \sf
  <f d!>4) <ef' a,>-. <d bf>-. <a' ef>-. | <bf d,>-. <ef a,>-. <d bf>-. <ef a,>-. |
    <d bf>-. r <a ef>2( \sf | <bf d,>4 r) <ef, a,>2( \sf |
  <d bf>4 r) <a ef>2( \sf | <bf d,>4 r) <ef, a,>2( \sf |
    <d bf>4 a)( \p bf a | bf a bf a) |
}
%%%%%%%%%%%%%%%%%%%%
thIIal =  \relative c, {
  c8[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
  c,[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
  c,[ c' c, c'] d,[ d' d, d'] | ef,[ ef' ef, ef'] f,[ f' f, f'] |
  g,[ g' g, g'] af,[ af' af, af'] | fs,[ fs' fs, fs'] g,[ g' g, g'] |

  c,,[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
  c,[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
  c,[ c' c, c'] d,[ d' d, d'] | ef,[ ef' ef, ef'] f,[ f' f, f'] |
  g,[ g' g, g'] af,[ af' af, af'] | fs,[ fs' fs, fs'] fs,[ fs' fs, fs'] |

  <g g,>4 <b d> <b d> <b d> | g <c ef> <c ef> <c ef> |
  <d f> r r2 | r2 af,,8[ af' af, af'] |
  <g g,>4-. <b' d> <b d> <b d> | g <c ef> <c ef> <c ef> |
  <d f> r r2 | r2 af,,8[ af' af, af'] |

  g,[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |
  g,[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |
  af,[ af' af, af'] af,[ af' af, af'] | af,[ af' af, af'] af,[ af' af, af'] |
  af,[ af' af, af'] af,[ af' af, af'] | a,[ a' a, a'] a,[ a' a, a'] |
  bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] | bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] |
  bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] | bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] |
  bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] | bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] |
  <bf bf,>4 r r2 R1
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
thIIbr =  \relative c {
  \clef bass r4 bf-. ef-. f-. | gf-. \clef treble bf'-. ef-. f-. |
  \grace { \override Stem #'stroke-style = #"grace" bf,8 \revert Stem #'stroke-style }
    gf'2.( \sf ef4) |
  \grace { \override Stem #'stroke-style = #"grace" bf8 \revert Stem #'stroke-style }
    gf'2.( \sf ef4) |
  d-. \clef bass bf,,-. f'-. gf-. | af-. \clef treble bf'( af' gf) |
  gf^\prall( f) f^\prall( ef) | ef^\prall( d) c-. d-. |
  ef-. \clef bass bf,,-. ef-. f-. | gf-. \clef treble bf'-. ef-. f-. |
  \grace { \override Stem #'stroke-style = #"grace" bf,8 \revert Stem #'stroke-style }
    gf'2.( \sf ef4)
  \grace { \override Stem #'stroke-style = #"grace" bf8 \revert Stem #'stroke-style }
    gf'2.( \sf ef4) |
  c-. \clef bass af,,-. ef'-. f-. | gf-. \clef treble af'( gf' f) |
  f^\prall( ef) ef^\prall( df) | df^\prall( c) bf-. c-. |
  df \clef bass af,,-. df-. ef-. | f-. \clef treble af'-. df-. ef-. |
  \grace { \override Stem #'stroke-style = #"grace" af,8 \revert Stem #'stroke-style }
    f'2.( \sf df4) |
  \grace { \override Stem #'stroke-style = #"grace" af8 \revert Stem #'stroke-style }
    f'2.( \sf df4) |
  c-. \clef bass af,,-. ef'-. f-. | gf-. \clef treble af'( gf' f) |
  f^\prall( ef) ef^\prall( df) | df^\prall( c) bf-. c-. |
    df \clef bass df,,( af') cf,-. | bf-. \clef treble bf''( af' gf) |
  gf^\prall( f) f^\prall( ef) | ef^\prall( d!) c-. d-. |
    ef-. \clef bass ef,,_\markup{ {\italic "r"} {\dynamic "f"}}( bf') df,-. | c-. \clef treble c''( bf' af) |
  af^\prall( g!) g^\prall( f) | f^\prall( e) d!( e) |
    g^\prall( f) f^\prall( ef!) | ef^\prall( d) c( d) |
  f^\prall_ \markup{\italic "cresc."}( ef) ef^\prall( d) | d^\prall( c) c^\prall( b) |
    c^\prall( bf!) bf-. bf-. | c^\prall( \pp  bf) bf-. bf-. |
}
%%%%%%%%%%%%%%%%%%%%
thIIbl =  \relative c' {
  \clef treble
  <<
    \context Voice = "lh" {
      \stemUp
      r4 <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
      r <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
        r <f af> <f af> <f af> | r <f af> <f af> <f af> |
      r <f af> <f af> <f af> | r <f af> <f af> <f af> |
        r <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
      r <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
        r <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
      r <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
        r <df f> <df f> <df f> | r <df f> <df f> <df f> |
      r <df f> <df f> <df f> | r <df f> <df f> <df f> |
        r <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
      r <ef gf> <ef gf> <ef gf> | r <ef gf> <ef gf> <ef gf> |
        r <f af> r <f af> | r <f af> <f af> <f af> |
      r <f af> <f af> <f af> | r <f af> <f af> <f af> |
        r <gf bf> r <f bf> | r <g! bf> <g bf> <g bf> |
      r <g bf> <g bf> <g bf> | r <g bf> <g bf> <g bf> |
        r af af af | r <f af> <f af> <f af> |
      r <ef g> <ef g> <ef g> | r <ef f> <ef f> <ef f> |
        r <ef g> <ef g> <ef g> | r <d f> <d f> <d f> |
    }
    \context Voice = "ll" {
      \stemDown
      bf1 | bf | bf | bf | bf | bf | bf | bf |
      bf | bf | bf | bf | af | af | af | af |
      af | af | af | af | af | af | af | af |
      df2 cf | bf1 | bf | bf | ef2 df | c1 |
      c | c | f | bf,2 b | c1 | af | bf | bf |
    }
  >>
  \stemNeutral
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
thIIcr =  \relative c'' <<
  \context Voice = "rh" {
    \stemUp
    \tieUp
    s2 ef~| ef ef |
    s ef~| ef ef |
    s1 | s1 |
    s1 | s1 |
    s1 | s1 |
    s1 | s1 |

    s2 ef~| ef ef |
    s ef~| ef ef |
    s1 | s1 |
    s1 | s1 |
    s1 | s1 |
    s1 | s1 |
  }
  \context Voice = "rl" {
    \stemDown
    r8 \p  ef,[ g ef] ef'[ ef, g ef] | g[ ef g ef] r ef[ g ef] |
    r ef[ g ef] ef'[ ef, g ef] | g[ ef g ef] r ef[ g ef] |
    \stemNeutral
    ef'[-._\markup{\italic "cresc."} ef, af ef] e'[-. e, c' e,] | f'[-. f, c' f,] g'[-. g, c g] |
    af'[-. af, c af] a'[-. a, c a] | bf'[-. bf, f' bf,] c'[-. c, f c] |
    df'[-. df, f df] d'[-. d, f d] | ef'[-. ef, g ef] b'[-. b, ef b] |
    r \f c[ ef c] c'[ c, ef c] | r f,[ af f] d'[ f, af f] |

    \stemDown
    r \p ef[ g ef] ef'[ ef, g ef] | g[ ef g ef] r ef[ g ef] |
    r ef[ g ef] ef'[ ef, g ef] | g[ ef g ef] r ef[ g ef] |
    \stemNeutral
    ef'[-._\markup{\italic "cresc."} ef, af ef] e'[-. e, c' e,] | f'[-. f, c' f,] g'[-. g, c g] |
    af'[-. af, c af] a'[-. a, c a] | bf'[-. bf, f' bf,] c'[-. c, f c] |
    df'[-. df, f df] d'[-. d, f d] | ef'[-. ef, bf' ef,] e'[-. e, bf' e,] |
    r \f af[ c af] f'[ af, c af] | r f[ af f] d'[ f, af f] |
  }
>>
%%%%%%%%%%%%%%%%%%%%
thIIcl =  \relative c {
  \clef bass
  <<
    \context Voice = "lh" {
      \stemUp
      r8  bf'[ g bf] g[ bf g bf] | g[ bf g bf] r bf[ g bf] |
      r bf[ g bf] g[ bf g bf] | g[ bf g bf] r bf[ g bf] |
      \stemNeutral
      c,[-. af' ef af] bf,[-. g' c, g'] | af,[-. af' c, af'] g,[-. g' c, g'] |
      f,[-. f' c f] ef,[-. ef' f, ef'] | d,[-. d' f, d'] c,[-. c' f, c'] |
      bf,[-. bf' f bf] af,[-. af' f af] | g,[-. g' ef g] g,[-. g' ef g] |
      <af af,>4-. r r2 | <bf bf,>4-. r r2 |

      \stemUp
      r8 bf'[ g bf] g[ bf g bf] | g[ bf g bf] r bf[ g bf] |
      r bf[ g bf] g[ bf g bf] | g[ bf g bf] r bf[ g bf] |
      \stemNeutral
      c,[-. af' ef af] bf,[-. g' c, g'] | af,[-. af' c, af'] g,[-. g' c, g'] |
      f,[-. f' c f] ef,[-. ef' f, ef'] | d,[-. d' f, d'] c,[-. c' f, c'] |
      bf,[-. bf' f bf] af,[-. af' f af] | g,[-. g' ef g] g,[-. g' g, g'] |
      <af af,>4-. r r2 | <bf bf,>4-. r r2 |
    }
    \context Voice = "ll" {
      \stemDown
      \tieDown
      ef1~ | ef2 ef |
      df1~ | df2 df |
      s1 | s1 |
      s1 | s1 |
      s1 | s1 |
      s1 | s1 |

      ef1~ | ef2 ef |
      df1~ | df2 df |
      s1 | s1 |
      s1 | s1 |
      s1 | s1 |
      s1 | s1 |
    }
  >>
  \stemNeutral
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
thIIdr =  \relative c''' {
  g4 ef'2( \p d8[ ef] | f[ ef d c] b[ c d c] |
     bf![ af g f] e[ f g f] | ef![ d c bf] a[ bf c af] |
   g4)-. <ef' ef'>2(_\markup{\italic "cresc."} d'8[ ef] | f[ ef d c] b[ c d c] |
     bf![ af g f] e[ f g f] | ef![ d c bf] a[ bf c bf] |
   ef4)-. ef,2 \f <g df>4-. | <af c,>-. <bf g>-. <c af>-. <d af>-. |
    <ef g,>-. ef2 <g df>4-. | <af c,>-. <bf g>-. <c af>-. <d af>-. |
  <ef g,>1\f | <ef, g,> |
    <ef' g,> <ef, g,> |
  <ef' c>\f <ef, c>\f |
}
%%%%%%%%%%%%%%%%%%%%
thIIdl =  \relative c {
  <<
    \context Voice = "lh" {
      \stemUp
      <ef ef,>4-. \clef treble <ef' g> <ef g> <ef g> | r <ef g> <ef g> <ef g> |
      r <ef f> <ef f> <ef f> | r <d f> <d f> <d f> \clef bass |
      r <ef g,> <ef g,> <ef g,> | r <c g ef> <c g ef> <c g ef> |
      r <af f ef> <af f ef> <af f ef> | r <bf f d> <bf f d> <bf f d> |

      ef,,8[ ef' ef, ef'] ef,[ ef' ef, ef'] | ef,8[ ef' ef, ef'] ef,[ ef' ef, ef'] |
      ef,8[ ef' ef, ef'] ef,[ ef' ef, ef'] | ef,8[ ef' ef, ef'] ef,[ ef' ef, ef'] |
      ef,8[ ef' ef, ef'] ef,[ ef' ef, ef'] | d,8[ d' d, d'] d,[ d' d, d'] |
      c,8[ c' c, c'] c,[ c' c, c'] | bf,8[ bf' bf, bf'] bf,[ bf' bf, bf'] |
      af,8[ af' af, af'] af,[ af' af, af'] | g,8[ g' g, g'] g,[ g' g, g'] |
    }
    \context Voice = "ll" {
      \stemDown
      s1 | c' | af | bf | ef, | c | af | bf |
      s | s | s | s | s | s | s | s | s | s |
    }
  >>
  \stemNeutral
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme II collation

thIIr =  \relative c {
  \break s1 \noBreak % KLUDGE KLUDGE KLUDGE: forces "|:" bar line to appear
  \repeat "volta" 2 {
    \thIIar
    \thIIbr
    \thIIcr
    \thIIdr
  } % repeat for theme 1
  \alternative {
    {<d''' c a>1\f \noBreak <d,, b f>\fermata \ff}
    {<d'' c a>1 \sf \noBreak <d,, c a>1\fermata \ff}
  }
}

thIIl =  \relative c {
  \break s1 \noBreak % KLUDGE KLUDGE KLUDGE: forces "|:" bar line to appear
  \repeat "volta" 2 {
    \thIIal
    \thIIbl
    \thIIcl
    \thIIdl
  } \alternative {
    {<fs, fs,>1 \noBreak <g g,>\fermata}
    {<fs fs,>1 \noBreak <fs fs'>\fermata}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme III (Grave, really theme I again)
thIIIr =  \relative c'' {
  <g d bf g>4(^\markup{\large "Tempo I"} \fp ~ <g d bf g>16.[ <g d>32 <a fs d>16. <bf d,>32] <bf g e>4( <a fs>8 r) |
  <c a fs>4\fp~<c a fs>16.[ <c a fs>32 <d a fs>16. <ef a, fs>32] <ef a, fs>4( <d bf g>8 r) |
  <c a fs>4\fp~<c a fs>16.[ <c a fs>32 <d a fs>16. <ds a fs>32] <ds a fs>4(\p <e g, e> |
  <a, fs ds> <g e b>_\markup{\italic "decresc."} <fs ds c a> <ds  a fs>)\fermata \pp |
}
%%%%%%%%%%%%%%%%%%%%
thIIIl =  \relative c {
  <g d bf g>4~ \stemUp <g d bf g>16.[ bf'32 a16. g32] \stemNeutral cs4( d8) r16. ef,32 |
  ef'4~ ef16.[ ef32 d16. c32] bf4. r16. ef,32 |
  ef'4_\markup{\italic "attacca subito Allegro"}_\markup{\italic "molto e con brio"} ~ ef16.[ ef32 d16. c32] c8( b4) b8~ |
  b b,4 b b, b8\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme IV (Allegro molto e con brio)

thIVr =  \relative c' {
  e4-.^\markup{\large "Allegro molto e con brio"} \p a-._\markup{\italic "cresc."} g-. <ds' a>-. | <e g,>-. <a ds,>-. <g e>-. <ds' a>-. |
    <e g,>-. \f r <e, e,> r | r \p <e e,>-. <fs fs,>-. <g g,>-. |
  <g g,>2( <fs fs,>4 r) | r <fs fs,>-. <g g,>-. <a a,>-. |
    <a a,>-._\markup{\italic "cresc."} g,-. fs-. <cs' g>-. | <d fs,>-. <g cs,>-. <fs d>-. <cs' g>-. |
  <d fs,>-. \f r <fs, fs,> r | r \p <fs fs,>-. <g g,>-. <a a,>-. |
    <a a,>2( <g g,>4 r) | r <g g,>-. <a a,>-. <bf bf,>-. |

   bf,8[ bf' bf,_\markup{\italic "cresc."} bf'] bf,[ bf' bf, bf'] | bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] |
     bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] | bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] |
   a,[ a' a, a'] a,[ a' a, a'] | a,[ a' a, a'] a,[ a' a, a'] |
     a,[ a' a, a'] a,[ a' a, a'] | a,[ a' a, a'] a,[ a' a, a'] |
   af,[ af' af, af'] af,[ af' af, af'] | af,[ af' af, af'] af,[ af' af, af'] |
     af,[ af' af, af'] af,[ af' af, af'] | af,[ af' g, g'] g,[ g' f, f'] |
   f,[ f' e, e'] e,[ e' df, df'] | df,[ df' c, c'] c,[ c' bf, bf'] |
     bf,[ \p bf' af, af'] af,[ af' g, g'] | \clef bass g,[ g' f, f'] f,[ f' ef, ef'] |
   ef,[ ef' d, d'] d,[ d' ef, ef'] | ef,[ ef' d, d'] d,[ d' c, c'] |
}
%%%%%%%%%%%%%%%%%%%%
thIVl =  \relative c, {
   e8[ e' e, e'] e,[ e' e, e'] | e,[ e' e, e'] e,[ e' e, e'] |
    <e e,>4 <g b> <g b> <g b> | e <g b> <g b> <g b>
  e <a c> <a c> <a c> | ef <a c> <a c> <a c> |
     d,,8[ d' d, d'] d,[ d' d, d'] | d,[ d' d, d'] d,[ d' d, d'] |
  <d d,>4 <a' c> <a c> <a c> | d, <a' c> <a c> <a c> |
    d, <g bf> <g bf> <g bf> | df <g bf> <g bf> <g bf> |

  <c, c,> df( c) f( | e) df'( c) f( |
     e) fs( g) r | R1 |
  r4 gf,,( f) df'( | c) gf'( f) df'( |
     c) e( f) r | R1 |
  r4 c,( b d)-. | f c'( b d)-. |
    f-. r d-. r | b-. r g-. r |
  <df' df,> r <bf bf,> r | <g g,> r <e e,> r |
    <f f,> r r2 | <f, f,>4 r r2 |
  <fs fs,>4 r r2 | <fs fs,>4 r r2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme V

thVr =  \relative c {
  <b b'>4-. r cs8[( \pp af' e cs] | d[ af' f d] c![ af' ef c] |
     b[ g' d b] cs[ af' e! cs] | d[ af' f d] c![ af' ef c] |
  <g' d b>4)_\markup{\italic "cresc."} \clef treble e'-. f-. <cs' e,>-. | <d f,>-. <e cs>-. <f d>-. <cs' e,>-. |
    <d f,>-. <e cs>-. <f d>2~ \sf | <f d> <ef c>^\trill |
  <d b>4 r \clef bass cs,,,8[( \pp af' e cs] | d[ af' f d] c![ af' ef c] |
     b[ g' d b] cs[ af' e! cs] | d[ af' f d] c![ af' ef c] |
  <g' d b>4) \clef treble e'-._\markup{\italic "cresc."} f-. <cs' e,>-. | <d f,>-. <e cs>-. <f d>-. <cs' e,>4-. |
    <d f,>-. <e cs>-. <f d>2~ \sf | <f d> <ef c>^\trill |
  <d b>4-. <e cs>-. <f d>2~ \sf | <f d> <ef c>^\trill |
    <d b>4-. <e cs>-. <f d>2~ \sf | <f d> <ef c>^\trill |
  <d b>8-.[ \fp f d c] b[ f' d c] | b[ f' d c] b[ d b g] |
     af[ bf af g] f[ af f ef] | d[ f d c] b![ d b g] |
   af[ bf af g] f[ af f ef] | d[ f d c] \clef bass b![ d b g] |
     af[ bf af g] f[ ef d c] | b![ c b af]
    \change Staff = "lh" g8[ f ef d] \change Staff = "rh"
}
%%%%%%%%%%%%%%%%%%%%
thVl =  \relative c, <<
  \context Voice = "rh" {
    \stemUp
    g8[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |
    g,[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |
    g,[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |

    g,4 g'2 g4~| g g2 g4 |

    g,8[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |
    g,[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |
    g,[ g' g, g'] g,[ g' g, g'] | g,[ g' g, g'] g,[ g' g, g'] |

    g,4 g'2 g4~| g g2 g4 | g, g'2 g4~| g g2 g4 | g, g'2 g4~| g g2 g4 |
    s1 | s | s | s | s | s | s | s |
  }
  \context Voice = "rl" {
    \stemDown
    \slurDown
    s1 | s | s | s | s | s |
    g,2( b | c fs,) |

    s1 | s | s | s | s | s |
    g2( b | c fs,) | g( b | c fs,) | g( b | c fs,) |
    \stemNeutral
    g4 r r2 | R1 | R | R | R | R | R | r2
    \change Staff = "rh" r2 \change Staff = "lh"
  }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme VI (cf. theme IIa)

thVIr =  \relative c' {
  c2. \p <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
    <c ef,>-. <c e,>2 \sf <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
  <c g ef c>2-._\markup{\italic "cresc."} <g f b, g>-. | <ef c g>-. <d af f>-. |
    << { <c ef,>1(~| <c ef,>2_\markup{\italic "dim."} <b f d> | <c ef, c>4-.) \p } \\ { g2 fs | a s | s4 } >>
  \stemNeutral
  c,2 <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
    <c ef,>-. <c e,>2 \sf <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
  <c g ef c>2-._\markup{\italic "cresc."} <af ef af,>-. | <f df af>-. <ef c gf>-. |
    <df af f>-. <bf gf df>-. |
    << { af1 } \\ { <f df>2( <ef c>) } >>
    <bf' f d>2-. \p <bf' f bf,>2-._\markup{\italic "cresc."} | <gf ef bf>-. <f d af>-. |
  <ef bf gf>-. <cf af ef>-. |
    << { bf1 } \\ { <gf ef>2( <f d>) } >>
    <c' g e>2-. \p <c' g c,>2-._\markup{\italic "cresc."} | <af f c>-. <g e bf>-. |
  <f c af>-. <df f,>-. | <c f,>-. <b f>-. |
    <c e,>4 b,( \p c b | c b c b) |
}
%%%%%%%%%%%%%%%%%%%%
thVIl =  \relative c, {
  c8[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
    c,[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
  c,[ c' c, c'] d,[ d' d, d'] | ef,[ ef' ef, ef'] f,[ f' f, f'] |
    g,[ g' g, g'] af,[ af' af, af'] | fs,[ fs' fs, fs'] g,[ g' g, g'] |
  c,,8[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
    c,[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
  c,[ c' c, c'] c,[ c' c, c'] | df,[ df' df, df'] ef,[ ef' ef, ef'] |
    f,[ f' f, f'] gf,[ gf' gf, gf'] | af,[ af' af, af'] af,[ af' af, af'] |
  af,[ af' af, af'] d,,[ d' d, d'] | ef,[ ef' ef, ef'] f,[ f' f, f'] |
    gf,[ gf' gf, gf'] af,[ af' af, af'] | bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] |
  bf,[ bf' bf, bf'] e,,[ e' e, e'] | f,[ f' f, f'] g,[ g' g, g'] |
    af,[ af' af, af'] bf,[ bf' bf, bf'] | c,[ c' c, c'] df,[ df' df, df'] |
  <c c,>4 r r2 | R1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme VII (cf. theme IIb)

thVIIr =  \relative c {
  r4 \clef bass c-. f-. g-. | af-. \clef treble c'-. f-. g-. |
  \grace { \override Stem #'stroke-style = #"grace" c,8 \revert Stem #'stroke-style }
    af'2.( \sf f4) |
  \grace { \override Stem #'stroke-style = #"grace" c8 \revert Stem #'stroke-style }
    af'2.( \sf f4) |
  e-. \clef bass c,,-. g'-. af-. | bf-. \clef treble c'( bf' af) |
    af^\prall( g) g^\prall( f) | f^\prall( e) d-. e-. |
  f-. \clef bass c,,-. f-. g-. | af-. \clef treble c'-. f-. af-. |
  \grace { \override Stem #'stroke-style = #"grace" c,8 \revert Stem #'stroke-style }
    c'2.( \sf f,4) |
  \grace { \override Stem #'stroke-style = #"grace" f8 \revert Stem #'stroke-style }
    f'2.( \sf c4) |
  b-. \clef bass g,,,-. d'-. ef-. | f-. \clef treble g'( f' ef) |
    ef^\prall( d) d^\prall( c) | c^\prall( b) a-. b-. |
  c-. \clef bass g,,-. c-. d-. | ef-. \clef treble g''-. c-. d-. |
  \grace { \override Stem #'stroke-style = #"grace" g,8 \revert Stem #'stroke-style }
    ef'2.( \sf c4) |
  \grace { \override Stem #'stroke-style = #"grace" g8 \revert Stem #'stroke-style }
    ef'2.( \sf c4) |
  b-. \clef bass g,,,-. d'-. ef-. | f-. \clef treble g''( f' ef) |
    ef^\prall( d) d^\prall( c) | c^\prall( b) a( b) |
  d^\prall(_\markup{\italic "decresc."} c) c^\prall( bf) | bf^\prall( a) g( a) |
    c^\prall( bf) bf^\prall( af) af^\prall( g) f( g) |
  bf^\prall( af) af^\prall( g) | g^\prall( fs) fs-. fs-. |
    af^\prall( \pp g) g-. g-. | af^\prall( g) g-. g-. |
}
%%%%%%%%%%%%%%%%%%%%
thVIIl =  \relative c'' {
  <<
    \context Voice = "lh" {
      \stemUp
      r4 <af f> <af f> <af f> | r <af f> <af f> <af f> |
         r4 <af f> <af f> <af f> | r <af f> <af f> <af f> |
      r <bf g> <bf g> <bf g> | r <bf g> <bf g> <bf g> |
        r <bf g> <bf g> <bf g> | r <bf g> <bf g> <bf g> |
      r <af f> <af f> <af f> | r <af f> <af f> <af f> |
        r <f c> <f c> <f c> | r <f c> <f c> <f c> |
      r <f d> <f d> <f d> | r <f d> <f d> <f d> |
        r <f d> <f d> <f d> | r <f d> <f d> <f d> |
      r <ef c> <ef c> <ef c> | r <ef c> <ef c> <ef c> |
        r <ef c> <ef c> <ef c> | r <ef c> <ef c> <ef c> |
      r <f d> <f d> <f d> | r <f d> <f d> <f d> |
        r <f d> <f d> <f d> | r <f d> <f d> <f d> |
      r <g ef> <g ef> <g ef> | r <f ef> <f ef> <f ef> |
        r <f df> <f df> <f df> | r <ef df> <ef df> <ef df> |
      r <ef c> <ef c> <ef c> | r <ef c> <ef c> <ef c> |
        r <ef c> <ef c> <ef c> | r <d b> <d b> <d b> |
    }
    \context Voice = "ll" {
      \stemDown
      c1 | c | c | c |
      c | c | c | c |
      c | c | af | af |
      g | g | g | g |
      g | g | g | g |
      g | g | g | g |
      c | f, | bf | ef, |
      af | af | g | g |
    }
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme VIII

thVIIIr =  \relative c' <<
  \context Voice = "rh" {
    \stemUp
    \tieUp
    s2 c'~| c c | s df~| df df |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s2 c~| c c | s df~| df df |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
  }
  \context Voice = "rl" {
    \stemDown
    r8 \p c,[ ef c] c'[ c, ef c] | ef[ c ef c] r c[ ef c] |
      r df[ e df] df'[ df, e df] | e[ df e df] df'[ df, e df] |
    \stemNeutral
     c'[-._\markup{\italic "cresc."} c, f c] e'[-. e, c' e,] | f'[-. f, c' f,] g'[-. g, c g] |
       af'[-. af, c af] a'[-. a, c a] | b'[-. b, f' b,] c'[-. c, f c] |
     d'[-. d, f d] e'[-. e, g e] | f'[-. f, af f] d'[-. f, af f] |
      r \f ef[ g ef] c'[ ef, g ef] | r d[ f d] b'[ d, f d] |

    \stemDown
    r8 \p c,[ ef c] c'[ c, ef c] | ef[ c ef c] r c[ ef c] |
      r df[ e df] df'[ df, e df] | e[ df e df] df'[ df, e df] |
    \stemNeutral
     c'[-._\markup{\italic "cresc."} c, f c] e'[-. e, c' e,] | f'[-. f, c' f,] g'[-. g, c g] |
       af'[-. af, c af] a'[-. a, c a] | b'[-. b, f' b,] c'[-. c, f c] |
     d'[-. d, f d] e'[-. e, g e] | f'[-. f, af f] d'[-. f, af f] |
      r \f ef[ g ef] c'[ ef, g ef] | r d[ f d] b'[ d, f d] |
  }
>>
%%%%%%%%%%%%%%%%%%%%
thVIIIl =  \relative c <<
  \context Voice = "lh" {
      \stemUp
      r8 g'[ ef g] ef[ g ef g] | ef[ g ef g] r g[ ef g] |
        r g[ e g] e[ g e g] | e[ g e g] r g[ e g] |
      \stemNeutral
       af,[-. f' c f] bf,[-. g' c, g'] | af,[-. f' c f] g,[-. g' c, g'] |
         f,[-. f' c f] ef,[-. ef' c ef] | d,[-. d' g, d'] c,[-. c' g c] |
       b,[-. b' g b] bf,[-. bf' c, bf'] | af,[-. af' c, af'] f,[-. f' c f] |
       <g g,>4 r r2 | <g' g,>4 r r2 |

      \stemUp
      r8 g[ ef g] ef[ g ef g] | ef[ g ef g] r g[ ef g] |
        r g[ e g] e[ g e g] | e[ g e g] r g[ e g] |
      \stemNeutral
       af,[-. f' c f] bf,[-. g' c, g'] | af,[-. f' c f] g,[-. g' c, g'] |
         f,[-. f' c f] ef,[-. ef' c ef] | d,[-. d' g, d'] c,[-. c' g c] |
       b,[-. b' g b] bf,[-. bf' c, bf'] | af,[-. af' c, af'] f,[-. f' c f] |
        <g g,>4 r r2 | <g' g,>4 r r2 |
  }
  \context Voice = "ll" {
      \stemDown
      \tieDown
      c,1~| c2 c | bf1~ | bf2 bf |
      s1 | s1 | s1 | s1 |
      s1 | s1 | s1 | s1 |

      c1~| c2 c | bf1~ | bf2 bf |
      s1 | s1 | s1 | s1 |
      s1 | s1 | s1 | s1 |
  }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme IX

thIXr =  \relative c'' {
  c4 c'2( \p b8[ c] | d[ c bf! af] g[ af bf af] |
     g[ f ef d] cs[ d ef d] | c![ b af g] fs[ g af f] |
   ef4)-. <c'' c,>2(_\markup{\italic "cresc."} b8[ c] | d[ c bf! af] g[ af bf af] |
     g[ f ef d] cs[ d ef d] | c![ b af g] fs[ g af g] |

   c4)-. c,2 \f <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
    <c ef,>4-. <c e,>2 \sf <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
  <c ef,! c>1 \f <c, ef, c> | <c' ef, c> <c, ef, c> |
    <ef' c a ef> \ff | <ef,, c a fs>1\fermata \ff |
}
%%%%%%%%%%%%%%%%%%%%
thIXl =  \relative c <<
  \context Voice = "lh" {
    c4 <ef' c> <ef c> <ef c> |
    \stemUp
    r <ef c> <ef c> <ef c> |
    r <d c> <d c> <d c> | r <d b> <d b> <d b> |
    r <c ef,> <c ef,> <c ef,> | r <af ef c> <af ef c> <af ef c> |
    r <f d c> <f d c> <f d c> | r <g d b> <g d b> <g d b> |

    \stemNeutral
    c,,8[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
      c,[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
    c,[ c' c, c'] c,[ c' c, c'] | bf,[ bf' bf, bf'] bf,[ bf' bf, bf'] |
      af,[ af' af, af'] af,[ af' af, af'] | g,[ g' g, g'] g,[ g' g, g'] |
    <fs fs,>1 | <ef' c a fs>\fermata |
  }
  \context Voice = "ll" {
    \stemDown
    s1 | af | f | g |
    c, | af | f | g |
    s | s | s | s | s | s | s | s | s | s |
  }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme X (cf. theme I)

thXr =  \relative c'' {
  r4^\markup{\large "Grave"} r16. <c a fs>32[ \p <d a fs>16. <ef a, fs>32] <ef a, fs>4->( <d b g>8 r) |
  r4 r16. <f d b>32[ <g d b>16. <af d, b>32] <af d, b>4( <g ef c>8 r) |
  r4 r16. <bf g e bf>32[_\markup{\italic "cresc."} <c g e c>16. <df g, e df>32] <df g, e df>4 \sf \> <c c,>8[( <bf bf,> \!] |
  <af af,>[ <g g,>_\markup{\italic "decresc."} <f f,> <ef ef,>)] r <d af f> \pp r
  \change Staff = "lh" <b, f d> \change Staff = "rh" |
}
%%%%%%%%%%%%%%%%%%%%
thXl =  \relative c' {
    r4 r16. ef32[ d16. c32] c4( b8) r |
    \clef treble r4 r16. af'32[ g16. f32] f4( ef8) r |
    r4 r16. <g e df>32[ <g e c>16. <g e bf>32] <g e bf af>4 ~ <af f c af>8[ <e c g>] |
    \clef bass
    <f c f,>[ <c g ef!> <b g d> <c g c,>] f, r <g, g,> r |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme XI (cf. theme IIa)

thXIr =  \relative c' {
  c2.^\markup{\large "Allegro molto e con brio"} \p <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
    <c ef,>-. <c e,>2 <e bf>4-. | <f af,>-. <g e>-. <af f>-. <b d,>-. |
  <c ef,>2-._\markup{\italic "cresc."} <c ef, c>-. | <c ef, c>-. <c ef, c>-. |
    <ef c a ef>4 \ff r r2 | <ef, c a fs>4 r r2 |
  <g ef c g>4 r r2 | \clef bass <b,, g f d>4 \ff r r2 |
    <c g ef>4-. r r2 | r1^\fermata
}
%%%%%%%%%%%%%%%%%%%%
thXIl =  \relative c, {
   c8[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
     c,[ c' c, c'] c,[ c' c, c'] | c,[ c' c, c'] c,[ c' c, c'] |
   c,[ c' c, c'] bf,[ bf' bf, bf'] | af,[ af' af, af'] g,[ g' g, g'] |
    <fs fs,>4 r r2 | <ef'' c a fs>4 r r2 |
  <ef c g>4 r r2 | <g,, d b g>4 r r2 |
    <c g ef c>4 r r2 | r1^\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% main score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {

  \context PianoStaff <<
    \context Staff = "rh" {
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.autoBeaming = ##f
      \clef treble
       \relative c' {
        \set Score.tempoHideNote = ##t
        \key c \minor \time 4/4 \tempo 8 = 66   \thIr \bar "||"
        \time 2/2 \tempo 2 = 144  \thIIr \bar "||"
        \time 4/4 \tempo 8 = 66   \thIIIr \bar "||"
        \key a \minor \time 2/2 \tempo 2 = 144  \thIVr
	\break % CS - avoids nasty slur with Lily 12.2
        \thVr \bar "||"
        \key c \minor \clef treble \thVIr
        \thVIIr
        \thVIIIr
        \thIXr \bar "||"
        \time 4/4 \tempo 8 = 66   \thXr \bar "||"
        \time 2/2 \tempo 2 = 144  \thXIr \bar "|."
      }
    }


    \context Staff = "lh" {
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.autoBeaming = ##f
      \clef bass
       \relative c {
        \key c \minor \time 4/4 \tempo 8 = 66   \thIl \bar "||"
        \time 2/2 \tempo 2 = 144  \thIIl \bar "||"
        \time 4/4 \tempo 8 = 66   \thIIIl \bar "||"
        \key a \minor \time 2/2 \tempo 2 = 144  \thIVl
        \thVl \bar "||"
        \key c \minor \thVIl
        \clef treble \thVIIl
        \clef bass \thVIIIl
        \thIXl \bar "||"
        \time 4/4 \tempo 8 = 66   \thXl \bar "||"
        \time 2/2 \tempo 2 = 144  \thXIl \bar "|."
      }
    }
  >>

  \layout {}

  \midi {
   \context{
    \Voice
    \remove Dynamic_performer
   }
  }
}
