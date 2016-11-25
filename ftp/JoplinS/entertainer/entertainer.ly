\version "2.19.32"

\header {
  title = "The Entertainer"
  subtitle = "A Ragtime Two Step"
  composer = "Scott Joplin"

  mutopiatitle = "The Entertainer"
  mutopiacomposer = "JoplinS"
  mutopiainstrument = "Piano"
  date = "c. 1902"
  style = "Jazz"
  license = "Public Domain"
  source = "Reproduction of original edition (1902)"

  maintainer = "Chris Sawer"
  maintainerEmail = "chris@mutopiaproject.org"
  %% completely overhauled by Simon Albrecht on 2015/12/27

 footer = "Mutopia-2016/11/25-263"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  systems-per-page = 5
}
global = {
  \key c \major
  \time 2/4
  \tempo "Not fast"
}

top = \relative c' {
  \global
  \clef treble

  %% to print RehearsalMark above MetronomeMark,
  %% align them to the same ‘break-align-symbol’
  \once\override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \mark "INTRO:"
  \voiceOne
  d''16 e c a ~ a b g8 | %1
  \oneVoice
  d16 e c a ~ a b g8 |

  d16 e c \change Staff = "down" \voiceOne a ~ a b a as |
  g8 r \change Staff = "up" \oneVoice   <g'' d b g>^^ d,16( dis) |

  \repeat volta 2 {
    e16 c'8 e,16 c'8 e,16 c' ~ | %5
    c4 ~ c16 <c' e, c> <d f, d> <dis fis, dis> |
    <e g, e> <c e, c> <d f, d> <e g, e> ~ <e g, e> <b d, b> <d f, d>8 |
    <c e, c>4 ~ <c e, c>8 d,,16( dis) |
    e16 c'8 e,16 c'8 e,16 c' ~ | %9
    c4 ~ c8 <a' c, a>16 <g c, g> |
    <fis c fis,>16 <a a,> <c c,> <e e,> ~ <e e,> <d d,> <c c,> <a a,> |
    <d f,! d>4 ~ <d f, d>8 d,,16([ dis)] |
    e16 c'8 e,16 c'8 e,16 c' ~ | %13
    c4 ~ c16 <c' e, c> <d f, d> <dis fis, dis> |
    <e g, e> <c e, c> <d f, d> <e g, e> ~ <e g, e> <b d, b> <d f, d>8 |
    <c e, c>4 ~ <c e, c>8 <c c,>16 <d d,> |
    <e e,> <c c,> <d d,> <e e,> ~ <e e,> <c c,> <d d,> <c c,> |      %17
    <e e,> <c c,> <d d,> <e e,> ~ <e e,> <c c,> <d d,> <c c,> |
    <e g, e> <c e, c> <d f, d> <e g, e> ~ <e g, e> <b d, b> <d f, d>8 |
  } \alternative {
    {
      <c e, c>4 ~ <c e, c>8 d,,16( dis)
    }
    { <c'' e, c>4 ~ <c e, c>16 <e, c e,> <f d f,> <fis dis fis,> }    %21
  }

  \break

  \repeat volta 2 {
    <g e g,>8^\markup \italic "Repeat 8va"  <a e a,>16 <g e g,> ~ <g e g,> <e c e,> <f d f,> <fis dis fis,> |
    <g e g,>8 <a e a,>16 <g e g,> ~ <g e g,> e c g |
    a b c d e d c d |
    g, e' f g a g e f | %25
    <g e g,>8 <a e a,>16 <g e g,> ~ <g e g,> <e c e,> <f d f,> <fis dis fis,> |
    <g e g,>8 <a e a,>16 <g e g,> ~ <g e g,> g a ais |
    <b g d> <b g d>8 <b fis c>16 ~ <b fis c> a <fis c> d |
    <g b,>4 ~ <g b,>16 <e c e,> <f d f,> <fis dis fis,> | %29
    <g e g,>8 <a e a,>16 <g e g,> ~ <g e g,> <e c e,> <f d f,> <fis dis fis,> |
    <g e g,>8 <a e a,>16 <g e g,> ~ <g e g,> e c g |
    a b c d e d c d |
    c4 ~ c16 g fis g | %33
    c8 a16 c ~ c a c a |
    g c e g ~ g e c g |
    <a fis>8 <c fis,> <e f,>16 <d f,>8 <c e,>16 ~ |
  } \alternative {
    { <c e,>4 ~ <c e,>16 \ottava #1 <e' c e,> <f d f,> <fis dis fis,> \ottava #0 } %37
    { <c, e,>4\repeatTie ~ <c e,>8 d,16 dis }
  }

  \bar "||"

  e16 c'8 e,16 c'8 e,16 c' ~ |
  c4 ~ c16 <c' e, c> <d f, d> <dis fis, dis> |
  <e g, e> <c e, c> <d f, d> <e g, e> ~ <e g, e> <b d, b> <d f, d>8 | %41
  <c e, c>4 ~ <c e, c>8 d,,16( dis) |
  e16 c'8 e,16 c'8 e,16 c' ~ |
  c4 ~ c8 <a' c, a>16 <g c, g> |
  <fis c fis,>16 <a a,> <c c,> <e e,> ~ <e e,> <d d,> <c c,> <a a,> | %45
  <d f,! d>4 ~ <d f, d>8 d,,16([ dis)] |
  e16 c'8 e,16 c'8 e,16 c' ~ |
  c4 ~ c16 <c' e, c> <d f, d> <dis fis, dis> |
  <e g, e> <c e, c> <d f, d> <e g, e> ~ <e g, e> <b d, b> <d f, d>8 | %49
  <c e, c>4 ~ <c e, c>8 <c c,>16 <d d,> |
  <e e,> <c c,> <d d,> <e e,> ~ <e e,> <c c,> <d d,> <c c,> |
  <e e,> <c c,> <d d,> <e e,> ~ <e e,> <c c,> <d d,> <c c,> |
  <e g, e> <c e, c> <d f, d> <e g, e> ~ <e g, e> <b d, b> <d f, d>8 | %53
  <c e, c>4 <c e, c>8 r |

  \key f \major

  \repeat volta 2 {
    <a f>16 gis <a f>8 ~ <a f> <c a f> |
    << { <d bes f>2 } \\ { r8 bes,16 a bes c d8 } >> |
    <f d>16 e <f d>8 ~ <f d> <a f d> | %57
    << { <bes g d>4 ~ <bes g d>8. g16 } \\ { r8 g,16 fis g a bes8 } >> |
    d8 g16 d ~ d g d8 |
    c4 f |
    e16 gis b e ~ e d b! c | %61
    a4 bes! |
    <a f>16 gis <a f>8 ~ <a f> <c a f> |
    << { <d bes f>2 } \\ { r8 bes,16 a bes c d8 } >> |
    <f d>16 e <f d>8 ~ <f d> <a f d> | %65
    << { <bes g d>4 ~ <bes g d>8. g16 } \\ { r8 g,16 fis g a bes8 } >> |
    d8 g16 d ~ d g d8 |
    c4 <f b, gis>8. f16 |
    <<
      { \stemDown <a c, a>16 <c c,>8 <g bes,>16 ~ \stemUp g c, d e }
      \\ { s8. \hideNotes bes4*1/4 ~ \unHideNotes bes8 bes }
    >> | %69 - slight kludge
  } \alternative {
    { <f' a,>8 b,16( c d e f g) }
    { <f a,>8 r <f' c a f> r }
  }

  \key c \major
  \bar "||"

  \break

  c,8 a16 c ~ c a c a |
  g c e g ~ g e c g | %73
  <a fis>8 <c fis,> <e f,>16 <d f,>8 <c e,>16 ~ |
  <c e,>4 <c' g e c>8 r |

  \repeat volta 2 {
    <f,, d> <e cis>16 <f d> ~ <f d> <e cis> <f d>8 |
    r16 a <d f,> a c d c a | %77
    <g e>8 <fis dis>16 <g e> ~ <g e> <fis dis> <g e>8 |
    r16 c <e g,> c d e d c |
    <d b>8 <cis ais>16 <d b> ~ <d b> <cis ais> <d b>8 |
    r16 f <a b,> f g a g f | %81
    <c' c,> <c c,> <c c,>4 <a c,>8 |
    <g c,> <g, e>16 <g e> <g e>8 <g e> |
    <f d> <e cis>16 <f d> ~ <f d> <e cis> <f d>8 |
    r16 a <d f,> a c d c a | %85
    <g e>8 <fis dis>16 <g e> ~ <g e> <fis dis> <g e>8 |
    r16 c <e g,> c d e d c |
    a gis a <g' a,> ~ <g a,> <f a,>8 <c a>16 |
    <e g,> dis e a ~ a c g e | %89
    <c fis,>8 <c fis,> <e b f>16 <d b f>8 <c g e>16 ~ |
  } \alternative {
    { <c g e>8 <g e>16 <g e> <g e>8 <g e> }
    { <c g e>4 <c' g e c>8 r }
  }
  \bar "|."
}

bottom = \relative c {
  \global
  \clef bass
  \change Staff = "up" \voiceTwo
  d''16 e c a ~ a b g8 | %1
  \change Staff = "down" \oneVoice
  d16 e c a ~ a b g8 |
  \voiceTwo
  d16 e c a ~ a b a as |
  g8 r \oneVoice <g g,>^^ <b' g>

  \stemNeutral
  \repeat volta 2 {
    c, <c' g e> <g g,> <c bes g> | %5
    <f, f,> <c' a> <e, e,> <c' g> |
    g, <c' g e> g, <b' g f> |
    c, <c' g e> <c g e> <b g> |
    c, <c' g e> <g g,> <c bes g> | %9
    <f, f,> <c' a> <e, e,> <es es,> |
    <d d,> <c' a fis d> d, <c' a fis> |
    <b g> <g g,> <a a,> <b b,> |
    c, <c' g e> <g g,> <c bes g> | %13
    <f, f,> <c' a> <e, e,> <c' g> |
    g, <c' g e> g, <b' g f> |
    c, <c' g e> <e c g> r |
    <c c,> <e c g> <bes bes,> <e c g> | %17
    <a, a,> <f' c a> <as, as,> <f' c as> |
    <g, g,> <e' c g> g,, <b' g> |
  } \alternative {
    { <c g c,> <g g,> <a a,> <b b,> }
    { <c g c,> <g g,> <c, c,> r } %21
  }

  \repeat volta 2 {
    <c c,> <e' c g> g,, <e'' c g> |
    c, <e' c g> g,, <e'' c g> |
    f,, <f'' c a> f, <f' c as> |
    e, <e' c g> g,, <e'' c g> | %25
    c, <e' c g> g,, <e'' c g> |
    c, <e' c g> e, es |
    d <d' b g> d, <d' c a> |
    <d b g> <f,! f,!>^^ <e e,>^^ <d d,>^^ | %29
    <c c,>^^ <e' c g> g,, <e'' c g> |
    c, <e' c g> g,, <e'' c g> |
    f,, <f'' c a> f, <f' c as> |
    e, <e' c g> c, <e' c bes> | %33
    <f c a f> <f c a f> <dis c a fis> <dis c a fis> |
    <e c g> <e c g> <e c g> <e c g> |
    <c d,> <a d,> <b g> <b g> |
  } \alternative {
    { <c c,> <g g,>-^ <e e,>-^ <d d,>-^ } %37
    { <c' c,> <g g,> <c, c,> r }
  }

  \bar "||"

  c <c' g e> <g g,> <c bes g> |
  <f, f,> <c' a> <e, e,> <c' g> |
  g, <c' g e> g, <b' g f> | %41
  c, <c' g e> <c g e> <b g> |
  c, <c' g e> <g g,> <c bes g> |
  <f, f,> <c' a> <e, e,> <es es,> |
  <d d,> <c' a fis d> d, <c' a fis> | %45
  <b g> <g g,> <a a,> <b b,> |
  c, <c' g e> <g g,> <c bes g> |
  <f, f,> <c' a> <e, e,> <c' g> |
  g, <c' g e> g, <b' g f> | %49
  c, <c' g e> <e c g> r |
  <c c,> <e c g> <bes bes,> <e c g> |
  <a, a,> <f' c a> <as, as,> <f' c as> |
  <g, g,> <e' c g> g,, <b' g> | %53
  <c g c,> <g g,> <c, c,> r |

  \key f \major

  \repeat volta 2 {
    f, <f'' c a> c, <f' c a> |
    bes,, <f'' d bes> f, <f' d bes> |
    d,, <f'' d a> a,, <f'' d a> | %57
    g,, <d'' bes> d, <d' bes> |
    <bes bes,> <d bes> <g, g,> <gis gis,> |
    <a a,> <f' c a> d, <f' d a> |
    e, <e' d b> gis, <e' d b> | %61
    <e c a>4 << { <e c g!> } \\ { g,8 c, } >> |
    f,8 <f'' c a> c, <f' c a> |
    bes,, <f'' d bes> f, <f' d bes> |
    d,, <f'' d a> a,, <f'' d a> | %65
    g,, <d'' bes> d, <d' bes> |
    <bes bes,> <d bes> <g, g,> <gis gis,> |
    <a a,>16 <f f,> <e e,> <d d,> <des des,>4 |
    <c c,>8 <f' c a> <c c,> <c, c,> | %69
  } \alternative {
    { <f f,> r r4 }
    { <f f,>8 r <f, f,> r }
  }

  \key c \major
  \bar "||"

  <f'' c a f> <f c a f> <dis c a fis> <dis c a fis> |
  <e c g> <e c g> <e c g> <e c g> | %73
  <c d,> <a d,> <b g> <b g> |
  <c c,>4 <c, c,>8 r |

  \repeat volta 2 {
    f, <a' f> a, <a' f> |
    f, <a' f> a, <a' f> | %77
    c, <c' g e> g, <c' g e> |
    c, <c' g e> g, <c' g e> |
    g, <b' g f> b, <b' g f> |
    g, <b' g f> d, <b' g f> | %81
    <c fis, dis> <c fis, dis>4 <c fis, dis>8 |
    <c g e> r r4 |
    f,,8 <a' f> a, <a' f> |
    f, <a' f> a, <a' f> | %85
    c, <c' g e> g, <c' g e> |
    c, <c' g e> g, <c' g e> |
    <f, f,> <d d,> <e e,> <f f,> |
    <g g,> <e' c g> <dis c fis,> <e c g> | %89
    <a, a,> <d, d,> <g g,> <b b,> |
  } \alternative {
    { <c c,> r r4 }
    { <c c,>8 <g g,> <c, c,> r }
  }
  \bar "|."
}

dyn = {
  s2\f
  s
  s
  s4. s8\>

  \repeat volta 2 {
    s2\p
    s4 s\<
    s2\f
    s4 s\>

    s2\p
    s4 s\<
    s2\f
    s4 s\>

    s2\p
    s4 s\<
    s2\f
    s

    s2*3
  }
  \alternative { { s4 s\> } { s2 } }

  \repeat volta 2 {
    s2*8\f

    s2*3\p
    s4 s\>

    s2\p
    s\<
    s\!
  }
  \alternative { { s2 } { s4 s\> } }

  s2\p
  s4 s\<
  s2\f
  s4 s\>

  s2\p
  s4 s\<
  s2\f
  s4 s\>

  s2\p
  s4 s\<
  s2*2\f

  s2*4

  \repeat volta 2 {
    s2*12\f

    s2
    s4\< s\fz\>
    s2\f
  }
  \alternative { { s2 } { s2 } }

  s2*4

  \repeat volta 2 {
    s2*15
  }
  \alternative { { s2 } { s2 } }
}

\score {
  \new PianoStaff <<
    \new Staff = "up" \top
    \new Dynamics \dyn
    \new Staff = "down" \bottom
  >>

  \layout {
    \context {
      \Voice
      \override Tie.minimum-length = 3
    }
  }
}

\score {
  \context PianoStaff <<
    \context Staff = "up"
    \unfoldRepeats \top
    \context Staff = "down"
    \unfoldRepeats \bottom
  >>

  \midi {
    \tempo 4 = 72
  }
}
