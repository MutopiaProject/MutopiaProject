\version "2.18.2"

\header {
 title = "The Easy Winners"
 subtitle = "A Rag Time Two Step."
 composer = "Scott Joplin"
 piece = "Not fast."

 mutopiatitle = "The Easy Winners"
 mutopiacomposer = "JoplinS"
 mutopiainstrument = "Piano"
 date = "c. 1901"
 source = "Reproduction of Original Edition"
 style = "Jazz" % Actually, Ragtime
 license = "public domain"

 filename = "TheEasyWinners.ly"
 maintainer = "Shachar Shemesh"
 maintainerEmail = "shachar@shemesh.biz"
}


global = {
  \key as \major
  \numericTimeSignature
  \time 2/4
}

right = \relative c'' {
  \global
  % Intro
  ees,8 c'~ c16 bes aes g |
  f ees8 des16  c8 bes16 aes |
  g( aes bes c des ees f g |
  aes8) r8 r4 |

  % Part A
  \repeat volta 2 {
    <aes c>8 <aes c>4 <c ees>8 |
    <b f'>16( <c ees>8) <b f'>16( <c ees>) <b f'>16( <c ees>8) |
    <<
      { <e bes'>16( <f aes>8) <e bes'>16( <f aes>) <e bes'>( <f aes>16) <c ees>16~ |
        <c ees>2
      }
      \\
      {s2 | r8 ees,16( f g aes bes b)}
    >> |
    <aes c>8 <aes c>4 <c ees>8 |
    <b f'>16( <c ees>8) <b f'>16( <c ees>) <c ees> <c ees>8 |
    <<
      {ees16 bes8 ees16  d ees f8}
      \\
      {r16 g,8.         aes8  aes}
    >> |
    <g ees'>4~ <g ees'>16 ees g des' |
    <aes c>8 <aes c>4 <c ees>8 |
    <b f'>16( <c ees>8) <b f'>16( <c ees>) <b f'>16( <c ees>8) |
    <<
      { <e bes'>16( <f aes>8) <e bes'>16( <f aes>) <f aes> <f g bes> <e g c>~ |
        <e g c>4~ c'8 g16 aes |
      }
      \\
      {
        s2 | r16 c, e g c8 r8 |
      }
    >>
    <e, bes'>16( <f aes>8) <e bes'>16( <f aes>) <e bes'>( <f aes>) <c ees>~ |
    <c ees> <des f> <c ees> <bes des>  <aes c> <c ees>8 <c ees>16 |
    <a ees'>( <bes des>8) <a ees'>16( <bes des>) <c g des> <bes g des>8 |
  }
  \alternative {
    { <aes c,>4~ <aes c,>8 r8 }
    { <aes c,>4  <aes c ees aes>8 ees16 e }
  }

  % Part B
  \repeat volta 2 {
    f fis g <g bes>~  <g bes> ees' des bes |
    f fis g <g c>~ <g c> bes f g |
    aes ees f g aes a bes b |
    c b c  <c f>~ <c f> ees bes c |
    des bes'8 c,16  des bes'8 c,16 |
    des bes'8 aes16 g f ees des |
    c aes'8 b,16  c aes'8 b,16 |
    c aes'8 f16 ees c bes aes |
    g gis a <a f'>~ <a f'> ees' c a
    g gis a <a f'>~ <a f'> <c ees> <a f'> <c ees> |
    <bes des> <a c> <bes des> f~ f a bes des |
    f c des bes~ bes f des bes |
    b-1 d-2 f-3 aes-4 b-5 b8-5 b16-1~ |
    \stemUp
    b d-2 f-3 aes-4 b8 \finger \markup { \lower #-4 "5" } r8 |
    c16 aes ees c~ c aes c, ees
    \stemNeutral
  }
  \alternative {
    {<des ees g bes>16 <des ees g bes>8 <c ees aes>16~ <c ees aes>8 ees16 e}
    {<des ees g bes>16 <des ees g bes>8 <c ees aes>16~ <c ees aes>8 ees}
  }

  \bar "||"
  % Part A repeated
  {
    <aes c>8 <aes c>4 <c ees>8 |
    <b f'>16( <c ees>8) <b f'>16( <c ees>) <b f'>16( <c ees>8) |
    <<
      {
        \stemDown
        <e bes'>16( <f aes>8) <e bes'>16( <f aes>) <e bes'>( <f aes>16) <c ees>16~ |
        <c ees>2
        \stemNeutral
      }
      \\
      {
        \stemUp
        s2 | r8 ees,16( f g aes bes b)
        \stemNeutral
      }
    >> |
    <aes c>8 <aes c>4 <c ees>8 |
    <b f'>16( <c ees>8) <b f'>16( <c ees>) <c ees> <c ees>8 |
    <<
      {ees16 bes8 ees16  d ees f8}
      \\
      {r16 g,8.         aes8  aes}
    >> |
    <g ees'>4~ <g ees'>16 ees g des' |
    <aes c>8 <aes c>4 <c ees>8 |
    <b f'>16( <c ees>8) <b f'>16( <c ees>) <b f'>16( <c ees>8) |
    <<
      { <e bes'>16( <f aes>8) <e bes'>16( <f aes>) <f aes> <f g bes> <e g c>~ |
        <e g c>4~ c'8 g16 aes |
      }
      \\
      {
        s2 | r16 c, e g c8 r8 |
      }
    >>
    <e, bes'>16( <f aes>8) <e bes'>16( <f aes>) <e bes'>( <f aes>) <c ees>~ |
    <c ees> <des f> <c ees> <bes des>  <aes c> <c ees>8 <c ees>16 |
    <a ees'>( <bes des>8) <a ees'>16( <bes des>) <c g des> <bes g des>8 |
    <aes c,>4  <aes c ees aes>8 r8
  }

  % Intermission
  \bar "||"

  \key des \major
  des8 des~ des16 aes des ees |
  \stemUp
  f8 f~ f16 aes, des f |
  <c ges' aes> <ees ges c>8 <c ges' bes>16~ <c ges' bes> <c ges' aes> <ges aes c>8 |
  \stemNeutral
  <f aes des> r8 r8 aes16 a

  % Part C
  \repeat volta 2 {
    bes16 ges'8 ees16  a, ges'8 ees16 |
    aes, des f bes~  bes aes f des |
    c aes' ees c  bes c8 aes16 |
    des des f aes  des bes aes f |
    bes,16 ges'8 ees16  a, ges'8 ees16 |
    aes, des f bes~  bes aes f des |
    ees f ees des  c des8 bes16 |
    aes8 <b f'>16( <c ees>) <c aes'>8-^ <ces aes>

    <<
      { bes16 ges'8 ees16  a,16 ges'8 ees16  }
      \\
      { bes4               a4                }
    >> |
    r16 aes des f  bes aes f des |
    c aes' ees c  bes c8 aes16 |
    r16 des f aes <<
        {des bes aes f}
        \\
        {f8 ces}
      >> |
    <<
     {bes16 ges'8 ees16  a,16 ges'8 ees16}
     \\
     {bes4               a}
    >> |
    r16 aes des f  bes aes f aes, |
  } \alternative {
    {
      <<
        {g16 <bes des>8.  ges16 <c ees>8 des16~ | des8 f16 des ees f aes, a}
        \\
        {g4               ges8.          f16~   | f8 }
      >>
    }
    {
      <<
        {g16 <bes des>8.  ges16 <c ees>8 des16~ | des4~ des16}
        \\
        {g,4              ges8.          f16~   | f4~ f16}
      >>
      <aes aes'> <bes bes'> <b b'>
    }
  }


  % Part D
  \repeat volta 2 {
    <c ges' c>8 <aes aes'>16 <bes ges' bes>~ <bes ges' bes>4 |
    <c ges' c>8 <aes aes'>16 <bes ges' bes>~ <bes ges' bes> <aes aes'> <bes bes'> <c c'> |
    <des f des'>8 <aes f' aes>16 <bes f' bes>~ <bes f' bes>4 |
    <des f des'>8 <aes f' aes>16 <bes f' bes>~ <bes f' bes>4 |
    r8 bes'16 <ges aes c,>~ <ges aes c,>4 |
    r8 bes16 <ges aes c,>~ <ges aes c,>4 |
    r8 bes16 <des, f aes>~ <des f aes>4 |
    r8 bes'16 <des, f aes>~ <des f aes>16 <aes aes'> <bes bes'> <b b'> |
    <c ges' c>8 <aes aes'>16 <bes ges' bes>~ <bes ges' bes>4 |
    <c ges' c>8 <aes aes'>16 <bes ges' bes>~ <bes ges' bes> <aes aes'> <bes bes'> <c c'> |
    <des f des'>8 <aes f' aes>16 <bes f' bes>~ <bes f' bes>4 |
    <<
      { r16 des f aes des bes aes f | bes, ges'8 ees16 a, ges'8 ees16 |}
      \\
      { s8*2          f8      ces   | bes4             a             |}
    >>
    r16 aes des f  bes aes f aes, |
  }
  \alternative {
    {
      <<
        {g16 <bes des>8. ges16  <c ees>8 des16~ | des4~ <des>16 <aes aes'> <bes bes'> <b b'> |}
        \\
        {g4              ges8.           f16~   | f4~   f16     s16        s8                |}
      >>
    }
    {
      <<
        {g16 <bes des>8. ges16  <c ees>8 des16~ | des4 <des f aes des>8 r8 |}
        \\
        {g,4              ges8.           f16~   | f4   s4                 |}
      >>
    }
  }

  \bar "|."
}

left = \relative c' {
  \global
  % Intro
  ees,8 c'~ c16 bes aes g |
  f ees8 des16 c8 bes16 aes |
  ees4  ees'16 des c bes |
  aes8 <ees' aes c> ees, <ees' aes c> |

  % Part A
  \repeat volta 2 {
    aes,8 <ees' aes c> ees, <ees' aes c> |
    aes, <ees' aes c> ees, <ees' aes c> |
    des, <f' aes des> des, <f' aes des> |
    aes, <ees' aes c> ees, <ees' aes c> |
    aes, <ees' aes c> ees, <ees' aes c> |
    aes, <ees' aes c> a, <fis' a ees'> |
    bes, <g' bes ees> bes, <bes' d> |
    <ees ees,> <des des,> <c c,> <bes bes,> |
    <aes aes,> <ees aes c> ees, <ees' aes c> |
    aes, <ees' aes c> ees, <ees' aes c> |
    des, <f' aes des> <des des'> <des des'> |
    <c c'> <g g'> <c c,> r |
    <des des,> <f aes des> <des des,> <f aes des> |
    <aes aes,> <ees aes c> <aes aes,> <ees aes c> |
    <ees ees,> <ees g des'> <ees ees,> <ees ees,> |
  }
  \alternative {
    {
      <<
        { ees4~    ees8 r | }
        \\
        { aes, ees f    g | }
      >>
    }
    {
      <aes aes'> <ees ees'> <aes aes,> r |
    }
  }

  % Part B
  \repeat volta 2 {
    <ees ees'>8 <ees' bes' des> <g g,> <ees g des'> |
    <bes bes'> <des' bes g ees> <bes bes,> <b b,> |
    <c c,> <c aes ees> <ees, ees,> <c' aes ees> |
    <aes aes,> <c aes ees> <ees, ees,> <c' aes ees> |
    <bes bes,> <des g, ees> <ees, ees,> <ees g des'> |
    <bes bes'> <ees g des'> <ees ees,> <g g,> |
    <aes aes,> <c aes ees> <ees, ees,> <c' aes ees> |
    <aes aes,> <c aes ees> <ees, ees,> <c' aes ees> |
    <f, f,> <f a ees'> <a a,> <f a ees'> |
    <c c'> <f a ees'> <f f,> <f a ees'> |
    bes, <f' bes des> des <f bes des> |
    bes, <f' bes> <des f bes>4 |
    d16-5 f-4 aes-3 b-2 d-1 d8-1 d16-5~ |
    \stemDown
    d \change Staff = "right" f_4 aes_3 b_2 d8_1 r8 |
    \stemNeutral
    <aes ees'>8 \change Staff = "left" r8 r4 |
  }
  \alternative {
    { <ees, ees,>8 <ees ees,> <aes aes,> r }
    { <ees ees,>8 <ees ees,> <aes aes,> r }
  }

  % Part A repeated
  {
    aes,8 <ees' aes c> ees, <ees' aes c> |
    aes, <ees' aes c> ees, <ees' aes c> |
    des, <f' aes des> des, <f' aes des> |
    aes, <ees' aes c> ees, <ees' aes c> |
    aes, <ees' aes c> ees, <ees' aes c> |
    aes, <ees' aes c> a, <fis' a ees'> |
    bes, <g' bes ees> bes, <bes' d> |
    <ees ees,> <des des,> <c c,> <bes bes,> |
    <aes aes,> <ees aes c> ees, <ees' aes c> |
    aes, <ees' aes c> ees, <ees' aes c> |
    des, <f' aes des> <des des'> <des des'> |
    <c c'> <g g'> <c c,> r |
    <des des,> <f aes des> <des des,> <f aes des> |
    <aes aes,> <ees aes c> <aes aes,> <ees aes c> |
    <ees ees,> <ees g des'> <ees ees,> <ees ees,> |
    <aes aes,> <ees ees,> <aes, aes,> r |
  }

  \key des \major
  % Intermission
  {
    des'8 des~ des16 aes des ees |
    \change Staff = "right"
    \stemDown
    f8 f~ f16 aes, des f |
    aes4
    \stemNeutral
    \change Staff = "left"
    <aes, aes,>8 <aes aes,> |
    <des, des,> <des des,> <ees ees,> <f f,> |
  }

  % Part C
  \repeat volta 2
  {
    <ges ges,>8 <bes des ges> <ees ees,> <e e,> |
    <f f,> <f des aes> <des des,> <f des aes> |
    <aes, aes,> <aes c ges'> <ees ees'> <e e'> |
    <f f'> <des des'> <aes aes'> <f f'> |
    <ges ges'> <bes' des ges> <ees ees,> <e e,> |
    <f f,> <f des aes> <des des,> <f des aes> |
    <bes, bes,> <des ees g> <ees, ees,> <des' ees g> |
    <ees c aes> d,16( ees) aes,8-^ <f' des'> |

    <ges ges,>8 <bes des ges> <ees ees,> <e e,> |
    <f f,> <f des aes> <des des,> <f des aes> |
    <aes, aes,> <aes c ges'> <ees ees'> <e e'> |
    <f f'> <des des'> <aes aes'> <f f'> |
    <ges ges'> <bes bes'> <ees ees'> <ges ges'> |
    <f f'> <des des'> <aes aes'> <des des'> |
  }
  \alternative {
    { <bes bes'> <ees ees,> <aes, aes,>4 | <des des,>8 <des des'> <aes aes'> <f f'> | }
    { <bes bes'> <ees ees,> <aes, aes,>4 | <des des,>8 aes des, r | }
  }

  % Part D
  \repeat volta 2
  {
    <ees' ees'>8 <aes c ges'> <aes aes,> <aes c ges'> |
    <ees ees,> <aes c ges'> <ees ees,>16 <aes aes,> <g g,> <ges ges,> |
    <f f,>8 <aes des f> <des des,> <aes des f> |
    <aes aes,> <aes des f> <des des,> <d d,> |
    <ees ees,> <ges c, aes> <aes, aes,> <aes c ges'> |
    <c c,> <aes c ges'> <aes aes,> <aes c ges'> |
    <des des,> <aes des f> <aes aes,> <aes des f> |
    <des des,> <aes des f> <f f'> <fes fes'> |
    <ees ees'> <aes c ges'> <aes aes,> <aes c ges'> |
    <ees ees,> <aes c ges'> <ees ees,>16 <aes aes,> <g g,> <ges ges,> |
    <f f,>8 <aes des f> <des des,> <aes des f> |
    <f f'> <des des'> <aes aes'> <f f'> |
    <ges ges'> <bes bes'> <ees ees'> <ges ges'> |
    <f f'> <des des'> <aes aes'> <des des'> |
  }
  \alternative {
    { <bes bes'> <ees ees,> <aes, aes,>4 | <des des,>8 <aes aes'> <f' f'> <fes fes'> | }
    { <bes, bes'> <ees ees,> <aes, aes,>4 | <des des,>8 aes des, r | }
  }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \unfoldRepeats \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \unfoldRepeats \left }
  >>
  \midi {
    \tempo 4=70
  }
}
