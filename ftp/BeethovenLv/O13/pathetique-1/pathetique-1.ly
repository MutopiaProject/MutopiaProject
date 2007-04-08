\version "1.6.9"
\include "english.ly"			% English note names

\header {
  title = "Sonata No. 8 ``Path\\'etique''"
  subtitle = "1st Movement"
  composer = "L. van Beethoven"
  opus = "Op. 13"

  mutopiatitle = "Sonata No. 8 \"Pathétique\" (1st Movement: Grave, Allegro molto e con brio)"
  mutopiacomposer = "L. V. Beethoven (1770-1827)"
  mutopiainstrument = "Piano"
  date = "1800s"
  source = "G. Schirmer, 1894 and Berners, 1908"
  style = "Classical"
  copyright = "Public Domain"

  filename = "pathetique-1.ly"
  maintainer = "Chris Sawer"
  maintainerEmail = "chris@sawer.uklinux.net"
  maintainerWeb = "http://www.sawer.uklinux.net/"
  lastupdated = "2003/Apr/30"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by Peter Samuelson and Chris Sawer.} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2003/04/30-299"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme I (Grave)

thIr = \notes \relative c' {
  <c4^#'(Large ((raise . 2) "Grave")) \fp g ef> ~ [<c16. g ef> <c32 g> <d16. b g> <ef32 c g>]
    <ef4( c a> <)d8 b> r
  <f4 \fp d b> ~ [<f16. d b> <f32 d b> <g16. d b> <af32 d, b>]
    <af4( d, b> <)g8 ef c> r

  <c4 \fp a fs> ~ [<c16. a fs> <c32 a fs> <d16. a fs> <ef32 a, fs>]
    <ef4( \sf a, fs> [<)d16 g, d-.> r32 <c32 a fs> <d16. a fs> <ef32 a, fs>]
  <ef4( \sf a, fs> [<d8 \p g, d> <e8_#'(italic ((raise . -2.5) "cresc.")) c g>]
    [<)f-. c af> af \sf] ~ [af32( g64 af bf af g f] [ef d c bf] \times 8/9 {[af128 g f ef d f af f d]}

  )ef8-. \p <ef'8 ef,> ~ [<ef16. ef,> <ef32 ef,> <f16. f,> <g32 g,>]
    [<g8( g,> <)f16 f,>] r32 \clef bass f, \ff [<f16. b, af f> <f32 b, af f> <f16. c af f> <f32 c af f>]
  <f8 d af f> \clef treble <f'8 f,> ~ [<f16. f,> <f32 f,> <g16. g,> <af32 af,>]
    [<af8( af,> <)g16 g,>] r32 <g,32 \ff e cs g> [<a16. e cs a> <a32 e cs a> <bf16. e, cs bf> <bf32 e, cs bf>]

  <a8 fs d a> <a'8 a,!> ~ [<a16. a,> <a32 a,> <b16. b,> <c32 c,>]
    [<c8( c,> <)b16 b,>] r r8 [<b16. b,> <c32 c,>]
  [<cs8( cs,_#'(italic ((raise . -3) "cresc."))> <)d d,>] r [<d16. d,> <ef32 ef,>]
    <e8( e,> <)f4 f,> <f8 f,>

  <f8 \sfp f,> ~ [<f32 f,> ef!64 d f ef d c!]
    [b16-.( b-. <b-. f> <)b-. f>] <c8 ef,> r r4

   [c8 \p ~ c32 b64( c] \times 4/6 {[d c bf af g )bf]} [af16-.( af-. af-. )af-.]
   [g16( )ef'] ~ \times 4/6{[ef64 d df c b bf]} \times 8/7{[a128 af g fs f e ef]}
   [d( df c b bf a af g fs f e ef d df c )b] [af'16.^\fermata b,32]
}
%%%%%%%%%%%%%%%%%%%%
thIl = \notes \relative c {
  <c4 g ef c> ~ [<c16. g ef c> ef32 d16. c32] fs4()g8 r16. af,!32 |
  af'4 ~ [af16. af32 g16. f!32] ef4 ~ ef8 r16. ef32-. |

  ef'4 ~ [ef16. ef32 d16. c32] c4( [)b16-. r32 ef32 d16. c32]
  c4( b8 <bf c e> <)af c f!-.> r <bf,4^\sf bf,>

  <ef16 ef,> [<ef g bf> <ef g bf> <ef g bf>] [<ef g bf> <ef g bf> <ef g bf> <ef g bf>]
    [<ef af c> <ef af c> <ef af c> <ef af c>] [<d d,> <d d,> <c c,> <c c,>]
  <b b,> [<b d f af^\p> <b d f af> <b d f af>] [<bf d f af> <bf d f af> <bf d f af> <bf d f af>] 
    [<bf cs e g> <bf cs e g> <bf cs e g> <bf cs e g>] [<a a,> <a a,> <g g,> <g g,>]

  <fs fs,> [<d''^\p a fs> <d a fs> <d a fs>] [<d a fs> <d a fs> <d a fs> <d a fs>]
    [<d af f> <d af f> <d af f> <d af f>] [<b f d> <b f d> <b f d> <b f d>]
  [<af d, b> <af d, b> <af d, b> <af d, b>] [<f b, af> <f b, af> <f b, af> <f b, af>]
    [<f b, g> <f b, g> <f b, g> <f b, g>] [<f c af> <f c af> <f c af> <f c af>]

  <f8 b, g-.> r r \clef treble [<g'16-. d'(> <g-. )d'>]
    <af8 c> r r4 \clef bass
  r4 r8 [<f,16-. c' d(> <f-. c' )d>]
    <g8 c ef> r <f8*1/2 d g,> s16_#'(italic "attacca subito il Allegro") r8^\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme II (Allegro di molto e con brio)

thIIar = \notes \relative c' {
  \property Score.currentBarNumber = #11
  c2.^#'(Large ((raise . 2) "Allegro di molto e con brio")) \p <e4-. bf> |
  <f-. af,> <g-. e> <af-. f> <b-. d,> |
    <c-. ef,!> <c2 e,> <e4-. bf!> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
  <c2-. g ef! c_#'(italic "cresc.")> <g-. f b, g> | <ef-. c g> <d-. af f> |
    < { <c1( ef,>~| <c2 ef,> <b f d> | <)c4-. \p ef, c> } \\
      { g2 fs | a s | s4 } >

  c,2 <e4-. bf!> | <f-. af,> <g-. e> <af!-. f> <b-. d,> |
    <c-. ef,!> <c2 e,> <e4-. bf!> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
  <c2-. g ef! c_#'(italic "cresc.")> <g-. f b, g> | <ef-. c g> <d-. af f> |
    < { <c1( ef,>~| <c ef,> | <)b4-. \p g d> } \\
      { g2 fs | a1 | s4 } >

  r4 <g'2 \sf g,>~ | <g4 g,> r4 <g2 \sf g,>~ | [<g8 g,> f d b] [g f d b] | [c ef c g] [fs c' af fs] |
  g4-. r <g''2 \sf g,>~ | <g4 g,> r4 <g2 \sf g,>~ | [<g8 g,> f d b] [g f d b] | [c ef c g] [fs c' af fs] |

  g4-. fs'-._#'(italic ((raise . -2) "cresc.")) g-. <c-. fs,> | <b-. g> <fs'-. c> <g-. b,> <c-. fs,> |
    <b-. g> r r2 | <ef,,1 \sf df bf>~ |
  <ef4 c> df'-. c-. <g'-. df> | <af-. c,> <df-. g,> <c-. af> <df-. g,> |
    <c-. af> r r2 | <gf,1( \sf ef c>
  <)f4 d!> <ef'-. a,> <d-. bf> <a'-. ef> | <bf-. d,> <ef-. a,> <d-. bf> <ef-. a,> |
    <d-. bf> r <a2( \sf ef> | <)bf4 d,> r <ef,2( \sf a,> |
  <)d4 bf> r <a2( \sf ef> | <)bf4 d,> r <ef,2( \sf a,> |
    <)d4 bf> a( \p bf a | bf a bf )a |
}
%%%%%%%%%%%%%%%%%%%%
thIIal = \notes \relative c, {
  [c8 c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
  [c, c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
  [c, c' c, c'] [d, d' d, d'] | [ef, ef' ef, ef'] [f, f' f, f'] |
  [g, g' g, g'] [af, af' af, af'] | [fs, fs' fs, fs'] [g, g' g, g'] |

  [c,, c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
  [c, c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
  [c, c' c, c'] [d, d' d, d'] | [ef, ef' ef, ef'] [f, f' f, f'] |
  [g, g' g, g'] [af, af' af, af'] | [fs, fs' fs, fs'] [fs, fs' fs, fs'] |

  <g4 g,> <b d> <b d> <b d> | g <c ef> <c ef> <c ef> |
  <d f> r r2 | r2 [af,,8 af' af, af'] |
  <g4 g,-.> <b' d> <b d> <b d> | g <c ef> <c ef> <c ef> |
  <d f> r r2 | r2 [af,,8 af' af, af'] |

  [g, g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |
  [g, g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |
  [af, af' af, af'] [af, af' af, af'] | [af, af' af, af'] [af, af' af, af'] |
  [af, af' af, af'] [af, af' af, af'] | [a, a' a, a'] [a, a' a, a'] |
  [bf, bf' bf, bf'] [bf, bf' bf, bf'] | [bf, bf' bf, bf'] [bf, bf' bf, bf'] |
  [bf, bf' bf, bf'] [bf, bf' bf, bf'] | [bf, bf' bf, bf'] [bf, bf' bf, bf'] |
  [bf, bf' bf, bf'] [bf, bf' bf, bf'] | [bf, bf' bf, bf'] [bf, bf' bf, bf'] |
  <bf4 bf,> r r2 R1
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
thIIbr = \notes \relative c {
  \clef bass r4 bf-. ef-. f-. | gf-. \clef treble bf'-. ef-. f-. |
  \grace bf,8 gf'2.( \sf )ef4 | \grace bf8 gf'2.( \sf )ef4 |
    d-. \clef bass bf,,-. f'-. gf-. | af-. \clef treble bf'( af' )gf |
  gf^\prall()f f^\prall()ef | ef^\prall()d c-. d-. |
    ef-. \clef bass bf,,-. ef-. f-. | gf-. \clef treble bf'-. ef-. f-. |
  \grace bf,8 gf'2.( \sf )ef4 \grace bf8 gf'2.( \sf )ef4 |
    c-. \clef bass af,,-. ef'-. f-. | gf-. \clef treble af'( gf' )f |
  f^\prall()ef ef^\prall()df | df^\prall()c bf-. c-. |
    df \clef bass af,,-. df-. ef-. | f-. \clef treble af'-. df-. ef-. |
  \grace af,8 f'2.( \sf )df4 | \grace af8 f'2.( \sf )df4 |
    c-. \clef bass af,,-. ef'-. f-. | gf-. \clef treble af'( gf' )f |
  f^\prall()ef ef^\prall()df | df^\prall()c bf-. c-. |
    df \clef bass df,,()af' cf,-. | bf-. \clef treble bf''( af' )gf |
  gf^\prall()f f^\prall()ef | ef^\prall()d! c-. d-. |
    ef-. \clef bass ef,,_#'(columns (italic "r") (dynamic "f"))( )bf' df,-. | c-. \clef treble c''( bf' )af |
  af^\prall()g! g^\prall()f | f^\prall()e d!()e |
    g^\prall()f f^\prall()ef! | ef^\prall()d c()d |
  f^\prall_#'(italic ((raise . -3) "cresc."))()ef ef^\prall()d | d^\prall()c c^\prall()b |
    c^\prall()bf! bf-. bf-. | c^\prall( \pp )bf bf-. bf-. |
}
%%%%%%%%%%%%%%%%%%%%
thIIbl = \notes \relative c' {
  \clef treble
  <
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
  >
  \stemBoth
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
thIIcr = \notes \relative c'' <
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
    r8 \p [ef, g ef] [ef' ef, g ef] | [g ef g ef] r [ef g ef] |
    r [ef g ef] [ef' ef, g ef] | [g ef g ef] r [ef g ef] |
    \stemBoth
    [ef'-._#'(italic ((raise . -3) "cresc.")) ef, af ef] [e'-. e, c' e,] | [f'-. f, c' f,] [g'-. g, c g] |
    [af'-. af, c af] [a'-. a, c a] | [bf'-. bf, f' bf,] [c'-. c, f c] |
    [df'-. df, f df] [d'-. d, f d] | [ef'-. ef, g ef] [b'-. b, ef b] |
    r \f [c ef c] [c' c, ef c] | r [f, af f] [d' f, af f] |

    \stemDown
    r \p [ef g ef] [ef' ef, g ef] | [g ef g ef] r [ef g ef] |
    r [ef g ef] [ef' ef, g ef] | [g ef g ef] r [ef g ef] |
    \stemBoth
    [ef'-._#'(italic ((raise . -3) "cresc.")) ef, af ef] [e'-. e, c' e,] | [f'-. f, c' f,] [g'-. g, c g] |
    [af'-. af, c af] [a'-. a, c a] | [bf'-. bf, f' bf,] [c'-. c, f c] |
    [df'-. df, f df] [d'-. d, f d] | [ef'-. ef, bf' ef,] [e'-. e, bf' e,] |
    r \f [af c af] [f' af, c af] | r [f af f] [d' f, af f] |
  }
>
%%%%%%%%%%%%%%%%%%%%
thIIcl = \notes \relative c {
  \clef bass
  <
    \context Voice = "lh" {
      \stemUp
      r8 [bf' g bf] [g bf g bf] | [g bf g bf] r [bf g bf] |
      r [bf g bf] [g bf g bf] | [g bf g bf] r [bf g bf] |
      \stemBoth
      [c,-. af' ef af] [bf,-. g' c, g'] | [af,-. af' c, af'] [g,-. g' c, g'] |
      [f,-. f' c f] [ef,-. ef' f, ef'] | [d,-. d' f, d'] [c,-. c' f, c'] |
      [bf,-. bf' f bf] [af,-. af' f af] | [g,-. g' ef g] [g,-. g' ef g] |
      <af4-. af,> r r2 | <bf4-. bf,> r r2 |

      \stemUp
      r8 [bf' g bf] [g bf g bf] | [g bf g bf] r [bf g bf] |
      r [bf g bf] [g bf g bf] | [g bf g bf] r [bf g bf] |
      \stemBoth
      [c,-. af' ef af] [bf,-. g' c, g'] | [af,-. af' c, af'] [g,-. g' c, g'] |
      [f,-. f' c f] [ef,-. ef' f, ef'] | [d,-. d' f, d'] [c,-. c' f, c'] |
      [bf,-. bf' f bf] [af,-. af' f af] | [g,-. g' ef g] [g,-. g' g, g'] |
      <af4-. af,> r r2 | <bf4-. bf,> r r2 |
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
  >
  \stemBoth
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
thIIdr = \notes \relative c''' {
  g4 ef'2( \p [d8 ef] | [f ef d c] [b c d c] |
    [bf! af g f] [e f g f] | [ef! d c bf] [a bf c af] |
  )g4-. <ef'2_#'(italic "cresc.")( ef'> [d'8 ef] | [f ef d c] [b c d c] |
    [bf! af g f] [e f g f] | [ef! d c bf] [a bf c bf] |
  )ef4-. ef,2 \f <g4-. df> | <af-. c,> <bf-. g> <c-. af> <d-. af> |
    <ef-. g,> ef2 <g4-. df> | <af-. c,> <bf-. g> <c-. af> <d-. af> |
  <ef1 \f g,> | <ef, g,> |
    <ef' g,> <ef, g,> |
  <ef' \f c> <ef, \f c> |
}
%%%%%%%%%%%%%%%%%%%%
thIIdl = \notes \relative c {
  <
    \context Voice = "lh" {
      \stemUp
      <ef4-. ef,> \clef treble <ef' g> <ef g> <ef g> | r <ef g> <ef g> <ef g> |
      r <ef f> <ef f> <ef f> | r <d f> <d f> <d f> \clef bass |
      r <ef g,> <ef g,> <ef g,> | r <c g ef> <c g ef> <c g ef> |
      r <af f ef> <af f ef> <af f ef> | r <bf f d> <bf f d> <bf f d> |

      [ef,,8 ef' ef, ef'] [ef, ef' ef, ef'] | [ef,8 ef' ef, ef'] [ef, ef' ef, ef'] |
      [ef,8 ef' ef, ef'] [ef, ef' ef, ef'] | [ef,8 ef' ef, ef'] [ef, ef' ef, ef'] |
      [ef,8 ef' ef, ef'] [ef, ef' ef, ef'] | [d,8 d' d, d'] [d, d' d, d'] |
      [c,8 c' c, c'] [c, c' c, c'] | [bf,8 bf' bf, bf'] [bf, bf' bf, bf'] |
      [af,8 af' af, af'] [af, af' af, af'] | [g,8 g' g, g'] [g, g' g, g'] |
    }
    \context Voice = "ll" {
      \stemDown
      s1 | c' | af | bf | ef, | c | af | bf |
      s | s | s | s | s | s | s | s | s | s |
    }
  >
  \stemBoth
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme II collation

thIIr = \notes \relative c {
  \break s1 \noBreak % KLUDGE KLUDGE KLUDGE: forces "|:" bar line to appear
  \repeat "volta" 2 {
    \thIIar
    \thIIbr
    \thIIcr
    \thIIdr
  } % repeat for theme 1
  \alternative {
    {<d'1 \f c a> \noBreak <d,,-\fermata \ff b f>}
    {<d'1 \sf c a> \noBreak <d,,1-\fermata \ff c a>}
  }
}

thIIl = \notes \relative c {
  \break s1 \noBreak % KLUDGE KLUDGE KLUDGE: forces "|:" bar line to appear
  \repeat "volta" 2 {
    \thIIal
    \thIIbl
    \thIIcl
    \thIIdl
% } \alternative {   % KLUDGE: if we did this, volta brackets would show
    {<fs1 fs,> \noBreak <g-\fermata g,>}
  }                  % KLUDGE: so instead we end the repeat *here*
    {<fs1 fs,> \noBreak <fs-\fermata fs'>}
% }                  % KLUDGE: and there are no alternatives.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme III (Grave, really theme I again)

thIIIr = \notes \relative c'' {
  <g4^#'(Large ((raise . 3) "Tempo I")) \fp d bf g>~[<g16. d bf g> <g32 d> <a16. fs d> <bf32 d,>] <bf4( g e> <)a8 fs> r |
  <c4 \fp a fs>~[<c16. a fs> <c32 a fs> <d16. a fs> <ef32 a, fs>] <ef4( a, fs> <)d8 bf g> r |
  <c4 \fp a fs>~[<c16. a fs> <c32 a fs> <d16. a fs> <ds32 a fs>] <ds4( \p a fs> <e g, e> |
  <a, fs ds> <g_#'(italic "decresc.") e b> <fs ds c a> <)ds-\fermata \pp a fs> |
}
%%%%%%%%%%%%%%%%%%%%
thIIIl = \notes \relative c {
  <g4 d bf g>~ \stemUp [<g16. d bf g> bf'32 a16. g32] \stemBoth cs4()d8 r16. ef,32 |
  ef'4~[ef16. ef32 d16. c32] bf4. r16. ef,32 |
  ef'4_#'(italic "attacca subito Allegro")_#'(italic "molto e con brio")~[ef16. ef32 d16. c32] c8()b4 b8~ |
  b b,4 b b, b8-\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme IV (Allegro molto e con brio)

thIVr = \notes \relative c' {
  e4-.^#'(Large ((raise . 2) "Allegro molto e con brio")) \p a-._#'(italic ((raise . -3) "cresc.")) g-. <ds'-. a> | <e-. g,> <a-. ds,> <g-. e> <ds'-. a> |
    <e-. \f g,> r <e, e,> r | r \p <e-. e,> <fs-. fs,> <g-. g,> |
  <g2( g,> <)fs4 fs,> r | r <fs-. fs,> <g-. g,> <a-. a,> |
    <a-._#'(italic "cresc.") a,> g,-. fs-. <cs'-. g> | <d-. fs,> <g-. cs,> <fs-. d> <cs'-. g> |
  <d-. \f fs,> r <fs, fs,> r | r \p <fs-. fs,> <g-. g,> <a-. a,> |
    <a2( a,> <)g4 g,> r | r <g-. g,> <a-. a,> <bf-. bf,> |

  [bf,8 bf' bf,_#'(italic ((raise . -2) "cresc.")) bf'] [bf, bf' bf, bf'] | [bf, bf' bf, bf'] [bf, bf' bf, bf'] |
    [bf, bf' bf, bf'] [bf, bf' bf, bf'] | [bf, bf' bf, bf'] [bf, bf' bf, bf'] |
  [a, a' a, a'] [a, a' a, a'] | [a, a' a, a'] [a, a' a, a'] |
    [a, a' a, a'] [a, a' a, a'] | [a, a' a, a'] [a, a' a, a'] |
  [af, af' af, af'] [af, af' af, af'] | [af, af' af, af'] [af, af' af, af'] |
    [af, af' af, af'] [af, af' af, af'] | [af, af' g, g'] [g, g' f, f'] |
  [f, f' e, e'] [e, e' df, df'] | [df, df' c, c'] [c, c' bf, bf'] |
    [bf, \p bf' af, af'] [af, af' g, g'] | \clef bass [g, g' f, f'] [f, f' ef, ef'] |
  [ef, ef' d, d'] [d, d' ef, ef'] | [ef, ef' d, d'] [d, d' c, c'] |
}
%%%%%%%%%%%%%%%%%%%%
thIVl = \notes \relative c, {
  [e8 e' e, e'] [e, e' e, e'] | [e, e' e, e'] [e, e' e, e'] |
    <e4 e,> <g b> <g b> <g b> | e <g b> <g b> <g b>
  e <a c> <a c> <a c> | ef <a c> <a c> <a c> |
    [d,,8 d' d, d'] [d, d' d, d'] | [d, d' d, d'] [d, d' d, d'] |
  <d4 d,> <a' c> <a c> <a c> | d, <a' c> <a c> <a c> |
    d, <g bf> <g bf> <g bf> | df <g bf> <g bf> <g bf> |

  <c, c,> df()c f( | )e df'()c f( |
    )e fs()g r | R1 |
  r4 gf,,()f df'( | )c gf'()f df'( |
    )c e()f r | R1 |
  r4 c,( b )d-. | f c'( b )d-. |
    f-. r d-. r | b-. r g-. r |
  <df' df,> r <bf bf,> r | <g g,> r <e e,> r |
    <f f,> r r2 | <f,4 f,> r r2 |
  <fs4 fs,> r r2 | <fs4 fs,> r r2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme V

thVr = \notes \relative c {
  <b4 b'-.> r [cs8( \pp af' e cs] | [d af' f d] [c! af' ef c] |
    [b g' d b] [cs af' e! cs] | [d af' f d] [c! af' ef c] |
  <)g'4_#'(italic "cresc.") d b> \clef treble e'-. f-. <cs'-. e,> | <d-. f,> <e-. cs> <f-. d> <cs'-. e,> |
    <d-. f,> <e-. cs> <f2 \sf d>~| <f d> <ef^\trill c> |
  <d4 b> r \clef bass [cs,,,8( \pp af' e cs] | [d af' f d] [c! af' ef c] |
    [b g' d b] [cs af' e! cs] | [d af' f d] [c! af' ef c] |
  <)g'4 d b> \clef treble e'-._#'(italic ((raise . -2) "cresc.")) f-. <cs'-. e,> | <d-. f,> <e-. cs> <f-. d> <cs'4-. e,> |
    <d-. f,> <e-. cs> <f2 \sf d>~| <f d> <ef^\trill c> |
  <d4-. b> <e-. cs> <f2 \sf d>~| <f d> <ef^\trill c> |
    <d4-. b> <e-. cs> <f2 \sf d>~| <f d> <ef^\trill c> |
  [<d8-. \fp b> f d c] [b f' d c] | [b f' d c] [b d b g] |
    [af bf af g] [f af f ef] | [d f d c] [b! d b g] |
  [af bf af g] [f af f ef] | [d f d c] \clef bass [b! d b g] |
    [af bf af g] [f ef d c] | [b! c b af]
    \translator Staff = "lh" [g8 f ef d] \translator Staff = "rh"
}
%%%%%%%%%%%%%%%%%%%%
thVl = \notes \relative c, <
  \context Voice = "rh" {
    \stemUp
    [g8 g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |
      [g, g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |
    [g, g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |

    g,4 g'2 g4~| g g2 g4 |

    [g,8 g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |
      [g, g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |
    [g, g' g, g'] [g, g' g, g'] | [g, g' g, g'] [g, g' g, g'] |

    g,4 g'2 g4~| g g2 g4 | g, g'2 g4~| g g2 g4 | g, g'2 g4~| g g2 g4 |
      s1 | s | s | s | s | s | s | s |
  }
  \context Voice = "rl" {
    \stemDown
    \slurDown
    s1 | s | s | s | s | s |
    g,2( b | c )fs, |

    s1 | s | s | s | s | s |
    g2( b | c )fs, | g( b | c )fs, | g( b | c )fs, |
    \stemBoth
      g4 r r2 | R1 | R | R | R | R | R | r2
      \translator Staff = "rh" r2 \translator Staff = "lh"
  }
>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme VI (cf. theme IIa)

thVIr = \notes \relative c' {
  c2. \p <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
    <c-. ef,> <c2 \sf e,> <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
  <c2-._#'(italic "cresc.") g ef c> <g-. f b, g> | <ef-. c g> <d-. af f> |
    < { <c1( ef,>~| <c2 ef,_#'(italic "dim.")> <b f d> | <)c4-. \p ef, c> } \\ { g2 fs | a s | s4 } >
  \stemBoth
  c,2 <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
    <c-. ef,> <c2 \sf e,> <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
  <c2-._#'(italic "cresc.") g ef c> <af-. ef af,> | <f-. df af> <ef-. c gf> |
    <df-. af f> <bf-. gf df> |
    < { af1 } \\ { <f2( df> <)ef c> } >
    <bf2 \p f d-.> <bf'2-._#'(italic "cresc.") f bf,> | <gf-. ef bf> <f-. d af> |
  <ef-. bf gf> <cf-. af ef> |
    < { bf1 } \\ { <gf2( ef> <)f d> } >
    <c2-. \p g e> <c'2-._#'(italic "cresc.") g c,> | <af-. f c> <g-. e bf> |
  <f-. c af> <df-. f,> | <c-. f,> <b-. f> |
    <c4 e,> b,( \p c b | c b c )b |
}
%%%%%%%%%%%%%%%%%%%%
thVIl = \notes \relative c, {
  [c8 c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
    [c, c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
  [c, c' c, c'] [d, d' d, d'] | [ef, ef' ef, ef'] [f, f' f, f'] |
    [g, g' g, g'] [af, af' af, af'] | [fs, fs' fs, fs'] [g, g' g, g'] |
  [c,,8 c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
    [c, c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
  [c, c' c, c'] [c, c' c, c'] | [df, df' df, df'] [ef, ef' ef, ef'] |
    [f, f' f, f'] [gf, gf' gf, gf'] | [af, af' af, af'] [af, af' af, af'] |
  [af, af' af, af'] [d,, d' d, d'] | [ef, ef' ef, ef'] [f, f' f, f'] |
    [gf, gf' gf, gf'] [af, af' af, af'] | [bf, bf' bf, bf'] [bf, bf' bf, bf'] |
  [bf, bf' bf, bf'] [e,, e' e, e'] | [f, f' f, f'] [g, g' g, g'] |
    [af, af' af, af'] [bf, bf' bf, bf'] | [c, c' c, c'] [df, df' df, df'] |
  <c4 c,> r r2 | R1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme VII (cf. theme IIb)

thVIIr = \notes \relative c {
  r4 \clef bass c-. f-. g-. | af-. \clef treble c'-. f-. g-. |
    \grace c,8 af'2.( \sf )f4 | \grace c8 af'2.( \sf )f4 |
  e-. \clef bass c,,-. g'-. af-. | bf-. \clef treble c'( bf' )af |
    af^\prall()g g^\prall()f | f^\prall()e d-. e-. |
  f-. \clef bass c,,-. f-. g-. | af-. \clef treble c'-. f-. af-. |
    \grace c,8 c'2.( \sf )f,4 | \grace f8 f'2.( \sf )c4 |
  b-. \clef bass g,,,-. d'-. ef-. | f-. \clef treble g'( f' )ef |
    ef^\prall()d d^\prall()c | c^\prall()b a-. b-. |
  c-. \clef bass g,,-. c-. d-. | ef-. \clef treble g''-. c-. d-. |
    \grace g,8 ef'2.( \sf )c4 | \grace g8 ef'2.( \sf )c4 |
  b-. \clef bass g,,,-. d'-. ef-. | f-. \clef treble g''( f' )ef |
    ef^\prall()d d^\prall()c | c^\prall()b a()b |
  d^\prall_#'(italic "decresc.")()c c^\prall()bf | bf^\prall()a g()a |
    c^\prall()bf bf^\prall()af af^\prall()g f()g |
  bf^\prall()af af^\prall()g | g^\prall()fs fs-. fs-. |
    af^\prall( \pp )g g-. g-. | af^\prall()g g-. g-. |
}
%%%%%%%%%%%%%%%%%%%%
thVIIl = \notes \relative c'' {
  <
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
  >
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme VIII

thVIIIr = \notes \relative c' <
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
    r8 \p [c, ef c] [c' c, ef c] | [ef c ef c] r [c ef c] |
      r [df e df] [df' df, e df] | [e df e df] [df' df, e df] |
    \stemBoth
    [c'-._#'(italic ((raise . -3) "cresc.")) c, f c] [e'-. e, c' e,] | [f'-. f, c' f,] [g'-. g, c g] |
      [af'-. af, c af] [a'-. a, c a] | [b'-. b, f' b,] [c'-. c, f c] |
    [d'-. d, f d] [e'-. e, g e] | [f'-. f, af f] [d'-. f, af f] |
      r \f [ef g ef] [c' ef, g ef] | r [d f d] [b' d, f d] |

    \stemDown
    r8 \p [c, ef c] [c' c, ef c] | [ef c ef c] r [c ef c] |
      r [df e df] [df' df, e df] | [e df e df] [df' df, e df] |
    \stemBoth
    [c'-._#'(italic ((raise . -3) "cresc.")) c, f c] [e'-. e, c' e,] | [f'-. f, c' f,] [g'-. g, c g] |
      [af'-. af, c af] [a'-. a, c a] | [b'-. b, f' b,] [c'-. c, f c] |
    [d'-. d, f d] [e'-. e, g e] | [f'-. f, af f] [d'-. f, af f] |
      r \f [ef g ef] [c' ef, g ef] | r [d f d] [b' d, f d] |
  }
>
%%%%%%%%%%%%%%%%%%%%
thVIIIl = \notes \relative c <
  \context Voice = "lh" {
      \stemUp
      r8 [g' ef g] [ef g ef g] | [ef g ef g] r [g ef g] |
        r [g e g] [e g e g] | [e g e g] r [g e g] |
      \stemBoth
      [af,-. f' c f] [bf,-. g' c, g'] | [af,-. f' c f] [g,-. g' c, g'] |
        [f,-. f' c f] [ef,-. ef' c ef] | [d,-. d' g, d'] [c,-. c' g c] |
      [b,-. b' g b] [bf,-. bf' c, bf'] | [af,-. af' c, af'] [f,-. f' c f] |
        <g4 g,> r r2 | <g'4 g,> r r2 |

      \stemUp
      r8 [g ef g] [ef g ef g] | [ef g ef g] r [g ef g] |
        r [g e g] [e g e g] | [e g e g] r [g e g] |
      \stemBoth
      [af,-. f' c f] [bf,-. g' c, g'] | [af,-. f' c f] [g,-. g' c, g'] |
        [f,-. f' c f] [ef,-. ef' c ef] | [d,-. d' g, d'] [c,-. c' g c] |
      [b,-. b' g b] [bf,-. bf' c, bf'] | [af,-. af' c, af'] [f,-. f' c f] |
        <g4 g,> r r2 | <g'4 g,> r r2 |
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
>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme IX

thIXr = \notes \relative c'' {
  c4 c'2( \p [b8 c] | [d c bf! af] [g af bf af] |
    [g f ef d] [cs d ef d] | [c! b af g] [fs g af f] |
  )ef4-. <c''2_#'(italic "cresc.")( c,> [b8 c] | [d c bf! af] [g af bf af] |
    [g f ef d] [cs d ef d] | [c! b af g] [fs g af g] |

  )c4-. c,2 \f <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
    <c4-. ef,> <c2 \sf e,> <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
  <c1 \f ef,! c> <c, ef, c> | <c' ef, c> <c, ef, c> |
    <ef' \ff c a ef> | <ef,,1-\fermata \ff c a fs> |
}
%%%%%%%%%%%%%%%%%%%%
thIXl = \notes \relative c <
  \context Voice = "lh" {
    c4 <ef' c> <ef c> <ef c> |
      \stemUp
      r <ef c> <ef c> <ef c> |
      r <d c> <d c> <d c> | r <d b> <d b> <d b> |
    r <c ef,> <c ef,> <c ef,> | r <af ef c> <af ef c> <af ef c> |
      r <f d c> <f d c> <f d c> | r <g d b> <g d b> <g d b> |

    \stemBoth
    [c,,8 c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
      [c, c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
    [c, c' c, c'] [c, c' c, c'] | [bf, bf' bf, bf'] [bf, bf' bf, bf'] |
      [af, af' af, af'] [af, af' af, af'] | [g, g' g, g'] [g, g' g, g'] |
    <fs1 fs,> | <ef'-\fermata c a fs> |
  }
  \context Voice = "ll" {
    \stemDown
    s1 | af | f | g |
    c, | af | f | g |
    s | s | s | s | s | s | s | s | s | s |
  }
>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme X (cf. theme I)

thXr = \notes \relative c'' {
  r4^#'(Large ((raise . 2) "Grave")) r16. [<c32 \p a fs> <d16. a fs> <ef32 a, fs>] <ef4->( a, fs> <)d8 b g> r |
  r4 r16. [<f32 d b> <g16. d b> <af32 d, b>] <af4( d, b> <)g8 ef c> r |
  r4 r16. [<bf32_#'(italic "cresc.") g e bf> <c16. g e c> <df32 g, e df>] <df4 \sf \> g, e df> [<c8( c,> <bf \! bf,>] |
  [<af af,> <g_#'(italic "decresc.") g,> <f f,> <)ef ef,>] r <d \pp af f> r
  \translator Staff = "lh" <b, f d> \translator Staff = "rh" |
}
%%%%%%%%%%%%%%%%%%%%
thXl = \notes \relative c' {
    r4 r16. [ef32 d16. c32] c4()b8 r |
    \clef treble r4 r16. [af'32 g16. f32] f4()ef8 r |
    r4 r16. [<g32 e df> <g16. e c> <g32 e bf>] <g4 e bf af> ~ [<af8 f c af> <ef c g>] |
    \clef bass
    [<f c f,> <c g ef> <b g d> <c g c,>] f, r <g, g,> r |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% theme XI (cf. theme IIa)

thXIr = \notes \relative c' {
  c2.^#'(Large ((raise . 2) "Allegro molto e con brio")) \p <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
    <c-. ef,> <c2 e,> <e4-. bf> | <f-. af,> <g-. e> <af-. f> <b-. d,> |
  <c2-._#'(italic ((raise . -2) "cresc.")) ef,> <c-. ef, c> | <c-. ef, c> <c-. ef, c> |
    <ef4 \ff c a ef> r r2 | <ef,4 c a fs> r r2 |
  <g4 ef c g> r r2 | \clef bass <b,,4 \ff g f d> r r2 |
    <c4-. g ef> r r2 | r1^\fermata
}
%%%%%%%%%%%%%%%%%%%%
thXIl = \notes \relative c, {
  [c8 c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
    [c, c' c, c'] [c, c' c, c'] | [c, c' c, c'] [c, c' c, c'] |
  [c, c' c, c'] [bf, bf' bf, bf'] | [af, af' af, af'] [g, g' g, g'] |
    <fs4 fs,> r r2 | <ef''4 c a fs> r r2 |
  <ef4 c g> r r2 | <g,,4 d b g> r r2 |
    <c4 g ef c> r r2 | r1^\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% main score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \context PianoStaff <
    \context Staff = rh {
      \property Staff.midiInstrument = #"acoustic grand"
      \property Staff.autoBeaming = ##f
      \clef treble
      \notes \relative c' {
        \key c \minor \time 4/4 \tempo 8 = 66   \thIr \bar "||"
        \time 2/2 \tempo 2 = 144  \thIIr \bar "||"
        \time 4/4 \tempo 8 = 66   \thIIIr \bar "||"
        \key a \minor \time 2/2 \tempo 2 = 144  \thIVr
        \thVr \bar "||"
        \key c \minor \clef treble \thVIr
        \thVIIr
        \thVIIIr
        \thIXr \bar "||"
        \time 4/4 \tempo 8 = 66   \thXr \bar "||"
        \time 2/2 \tempo 2 = 144  \thXIr \bar "|."
      }
    }


    \context Staff = lh {
      \property Staff.midiInstrument = #"acoustic grand"
      \property Staff.autoBeaming = ##f
      \clef bass
      \notes \relative c {
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
  >

  \paper { linewidth = 19.8 \cm }
  \midi {
   \translator{
    \VoiceContext
    \remove Dynamic_performer
   }
  }
}
