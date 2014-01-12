\version "2.16.2"
\include "articulate.ly"

\header {
  title = "Pineapple Rag"
  instrument = "piano"
  composer = "Scott Joplin"

  mutopiatitle = "Pineapple Rag"
  mutopiacomposer = "JoplinS"
  mutopiainstrument = "Piano"
  date = "1908"
  style = "Jazz"
  copyright = "Public Domain"
  source = "Seminary Music Co., 1908."
  moreInfo = "scan: http://imslp.org/wiki/Special:ReverseLookup/5473"

  maintainer = "Coyau"
 footer = "Mutopia-2014/01/12-1899"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global = {
  \key bes \major
  \numericTimeSignature
  \time 2/4
  \tempo "Slow March tempo" 4=100
}

right = \relative c'' {
  \global
  g16\mf f8 ees16 d( cis d c)
  bes( c d f)~ f4
  g16 g8 fis16 g( a bes8)
  c f,~ f f \break
  \repeat volta 2 {
    <bes d g>16\mf f'8 ees16 d( cis d c)
    bes( c d f)~ f bes <f d'>8
    <bes, d g>16 f'8 ees16 d( cis d ees)
    <bes d f>8\< <bes f'>16( d) <bes f'>16( d <bes f'>8\!)
    bes16(\f <ees bes'>8) bes16( <ees bes'>8)  bes16( <ees bes'>)~
    <ees bes'> d'( bes d,) << { f( e f g)} \\ { bes,4} >>
    a'16( <c, f>8) a'16( <bes, e g>8) <bes e a>16 <a f'>~
    <a f'>8 a16( bes c d ees f) \break
    <bes, d g>\mf f'8 ees16 d( cis d c)
    bes( c d f)~ f bes <f d'>8
    <bes, d g>16 f'8 ees16 d( cis d ees)
    <bes d f>8 <bes f'>16 d <bes f'>( d <bes f'>8) \pageBreak
    bes16(\f <ees bes'>8) bes16( <ees bes'>8)  bes16( <ees bes'>)~
    <ees bes'> d'( bes f) d( f g bes)
  }
  \alternative {
    {
      <<
        {
          bes,4 c16 d8 bes16~
          bes8[ bes16^( c] \stemNeutral d[ ees) <a, ees' f>8]
        }
        \\
        {
          \shiftOff
          e8( ees) <ees a>8.[ d16]~
          \stemUp d4 s
        }
      >>
    }
    {
      <<
        {
          bes'4 c16 d8 bes16~
          bes8[ f16( e] f fis g gis)
        }
        \\
        {
          e8( ees) <ees a>8.[ d16]~
          \stemNeutral d4 s
        }
      >>
    }
  }
  \repeat volta 2 {
    a'16(\mf <c ees a>8) g16( <c ees g>8) a16( <c ees a>)~
    <c ees a> g( <c ees g>8) <a c ees a> <g c ees g>
    g16( <bes d g>8) f16( <bes d f>8) g16( <bes d g>)~
    <bes d g> f( <bes d f>8) <g bes d g> <f bes d f>
    f'16( <a c f>8) ees16( <a c ees>8) d,16 <f a d>~
    <f a d> ees( <a c ees>8) <d, f d'> <c f c'>
    c16( <f c'>8) bes,16~( <bes f' bes>8[) <g bes cis g'>]
    <f bes d f> f16( e f fis g gis)
    a( <c ees a>8) g16( <c ees g>8) a16( <c ees a>)~
    <c ees a> g( <c ees g>8) <a c ees a> <g c ees g>
    g16( <bes d g>8) f16( <bes d f>8) g16( <bes d g>)~
    <bes d g> f( <bes d f>8) <g bes d g>\< <f bes d f>\!
    ges16(\f <bes ees ges>8) bes16(~ <bes ees ges bes>8) <ges bes ees ges>
    f16( <bes d f>8) e,16(~ <e bes' cis e>8) <f bes d f>
    ees'16( <a c>8) f16(~ <f a d>8) <ees a c>
  }
  \alternative {
    {
      <d bes'> f,16( e f fis g gis)
    }
    {
      <d' bes'>8 bes16( c d ees) <a, ees' f>8
    }
  } \pageBreak
  <bes d g>16\mf f'8 ees16 d( cis d c)
  bes( c d f)~ f bes <f d'>8
  <bes, d g>16 f'8 ees16 d( cis d ees)
  <bes d f>8\< <bes f'>16( d <bes f'> d <bes f'>8\!)
  bes16(\f <ees bes'>8) bes16( <ees bes'>8) bes16( <d bes'>)~
  <d bes'> d'( bes d,) << { f( e f g)} \\ { bes,4} >>
  a'16( <c, f>8) a'16( <bes, e g>8) <bes e a>16 <a f'>~
  <a f'>8 a16( bes c d ees f)
  <bes, d g>\mf f'8 ees16 d( cis d c)
  bes( c d f)~ f bes <f d'>8
  <bes, d g>16 f'8 ees16 d( cis d ees)
  <bes d f>8\< <bes f'>16( d <bes f'> d <bes f'>8\!)
  bes16(\f <ees bes'>8) bes16( <ees bes'>8)  bes16( <ees bes'>)~
  <ees bes'> d'( bes f) d( f g bes)
  <<
    {
      bes,4 c16 d8 bes16~
      bes4~ bes16( <aes c> <g bes> <f aes>)
    }
    \\
    {
      \shiftOff
      e8( ees) <ees a>8.[ d16]~
      \stemUp d4~ \stemDown d
    }
  >>
  \key ees \major
  \repeat volta 2 {
    <bes ees g>16\mp <a ees' fis>8 <bes ees g>16~ <bes ees g>4
    <bes ees g>16 <a ees' fis>8 <bes ees g>16~ <bes ees g>4
    <<
      {
        \mergeDifferentlyDottedOn ees16 f8 ges16~ ges( f ees8)
        <ees g>4( <f aes>16)( <aes c> <g bes> <f aes>)
      }
      \\
      {
        <c ees>8. <c ees>16~ <c ees>4
        \stemUp bes4( \stemDown d)
      }
    >>
    <bes ees g>16 <a ees' fis>8 <bes ees g>16~ <bes ees g>8\< <g' c ees>\!
    <g bes ees>16\< <g bes d>8 <g bes d>16~ <g bes d>8\! <d' g bes>
    <<
      {
        bes'16\mf a8 a16~ a bes a8
        s4 <g, bes>16\>( <aes c> <g bes> <f aes>\!)

      }
      \\
      {
        <c' fis>8. <c fis>16 <c fis>8 <c fis>
        <bes g'>4 d,
      }
    >>
    <bes ees g>16\mp <a ees' fis>8 <bes ees g>16~ <bes ees g>4 \pageBreak
    <bes ees g>16 <a ees' fis>8 <bes ees g>16~ <bes ees g>4
    <<
      {
        \mergeDifferentlyDottedOn ees16 f8 ges16~ ges( f ees8)
      }
      \\
      {
        <c ees>8. <c ees>16~ <c ees>4
      }
    >>
    <bes ees g>4~ <bes ees g>8 <des ees bes'>
    <<
      {
        bes'16( aes8) c16~ c b c8
        c16( bes8) g'16~ g( ees g,8)
        g16( f8) <aes c>16~ <aes c> bes g8
      }
      \\
      {
        <c, ees>8. <ees aes>16~ <ees aes>8 <ees fis>
        <ees g>8. <bes' ees>16~ <bes ees>8 ees,
        <aes, c>8. d16~ d8 <aes d>
      }
    >>
  }
  \alternative {
    {
      <g ees'>8 bes16( c d ees f fis)
    }
    {
      <g, ees'>4~ <g ees'>16 <d' d'> <ees ees'> <f f'>
    }
  }
  \repeat volta 2 {
    <ges ces ees ges>16\mf <ges ces ees ges>8 <ges ces ees ges>16~ <ges ces ees ges>4~
    <ges ces ees ges>16 <ces ees> <ges ges'> ces ees  <ges, ges'>8 <ces ees>16
    <g bes ees g>16 <g bes ees g>8 <g bes ees g>16~ <g bes ees g>4~
    <g bes ees g>16 <ees' g> <bes bes'> ees f <bes, ees g>8.
    <aes' c>16 <g bes>8 <f aes>16~ <f aes> <ees g> <d f>8
    <cis e>16 <d f>8 <d f>16~ <d f>( <ees g> <f aes>8)
    <ees g c>16( bes'8) <bes, g'>16~ <bes g'>( <aes f'> <g ees'>8)
    <a fis'>16 <bes g'>8 <bes g'>16~ <bes g'> <d, d'> <ees ees'> <f f'>
    <ges ces ees ges>16 <ges ces ees ges>8 <ges ces ees ges>16~ <ges ces ees ges>4~
    <ges ces ees ges>16 <ces ees> <ges ges'> ces ees  <ges, ges'>8 <ces ees>16
    <g bes ees g>16 <g bes ees g>8 <g bes ees g>16~ <g bes ees g>4~
    <g bes ees g>16 <ees' g> <bes bes'> ees f <bes, ees g>8.
    <<
      {
        s4 f'16 ees f8
        s4 bes16( ees,) g8
        bes16 aes8 g16~ g( f)g8
      }
      \\
      {
        <c, ees g>16 <c ees g>8 <c ees f>16~ <c ees f>8 <ces ees f>
        <bes ees g>16 <bes ees g>8 <bes ees bes'>16~ <bes ees bes'>8 <bes ees g>
        <bes d>8. <aes d>16~ <aes d>8 <aes d>
      }
    >>
  }
  \alternative {
    {
      <g bes ees>4~ <g bes ees>16 <d d'> <ees ees'> <f f'>
    }
    {
      <g bes ees>4 <ees' g bes ees>8 r
    }
  } \bar "|."
}

left = \relative c' {
  \global
  g16 f8 ees16 d( cis d c)
  bes( c d f)~ f4
  g16 g8 fis16 g( a bes8)
  c f,~ f f
  \repeat volta 2 {
    bes, <f' bes d> f,  <f' bes d>
    bes, <f' bes d> f,  <f' bes d>
    bes, <f' bes d> f,  <f' bes d>
    bes,[( d f aes)]
    <<{ g8 <g bes ees> ges <ges bes ees> }\\ { <g, g'>4 <ges ges'>}>>
    <f f'>8 <f' bes d> <d, d'>( <des des'>)
    <c c'> <a'' c f> <c,, c'> <bes'' c e>
    <f, f'>[ c'( a f)]
    bes <f' bes d> f,  <f' bes d>
    bes, <f' bes d> f,  <f' bes d>
    bes, <f' bes d> f,  <f' bes d>
    bes,[( d f aes)]
    <<{ g8 <g bes ees> ges <ges bes ees> } \\ { <g, g'>4 <ges ges'>} >>
    <f f'>8 <f' bes d> <f, f'> <f' bes d>
  }
  \alternative {
    {
      <g, g'>( <ges ges'>) <f f'>4
      <bes bes'>8 r r <f f'>
    }
    {
      <g g'>( <ges ges'>) <f f'>4
      <bes bes'>8 r r <b b'>
    }
  }
  \repeat volta 2 {
    <c c'> <f a ees'> <f, f'> <f' a ees'>
    <c c'> <f a ees'> <f, f'> <f' a ees'>
    <bes, bes'> <f' bes d> <f, f'> <f' bes d>
    <bes, bes'> <f' bes d> <f, f'> <f' bes d>
    <a, a'> <f' a ees'> <f, f'> <f' a ees'>
    <a, a'> <f' a ees'> <f, f'> <f' a ees'>
    <bes, bes'> <f' bes d> <bes, bes'> <e bes' cis>
    <f bes d>8 r r <b, b'>
    <c c'> <f a ees'> <f, f'>  <f' a ees'>
    <c c'> <f a ees'> <f, f'>  <f' a ees'>
    <bes, bes'> <f' bes d> <f, f'>  <f' bes d>
    <bes, bes'> <f' bes d> <f, f'>  <f' bes d>
    <ees, ees'>8 <ges' bes ees> <ges, ges'> <ees ees'>
    <d d'> <f' bes d> <cis, cis'> <d d'>
    <f f'> <f' a ees'> <f, f'> <f' a ees'>
  }
  \alternative {
    {
      <bes, bes'> r r <b b'>
    }
    {
      <bes bes'> r r <f f'>
    }
  }

  bes8 <f' bes d> f, <f' bes d>
  bes,8 <f' bes d> f, <f' bes d>
  bes,8 <f' bes d> f, <f' bes d>
  bes,( d f aes)
  << {g <g bes ees> ges <ges bes ees>}\\{<g, g'>4 <ges ges'>}>>
  <f f'>8 <f' bes d> <d, d'>( <des des'>)
  <c c'> <a'' c f> <c,, c'> <bes'' c e>
  <f, f'>[ c' a f]
  bes <f' bes d> f,  <f' bes d>
  bes, <f' bes d> f,  <f' bes d>
  bes, <f' bes d> f,  <f' bes d>
  bes,[( d f aes)]
  <<{ g8 <g bes ees> ges <ges bes ees> } \\ { <g, g'>4 <ges ges'>} >>
  <f f'>8 <f' bes d> <f, f'> <f' bes d>
  <g, g'>( <ges ges'>) <f f'>4
  <<{bes'4~ bes}\\{bes,8 f' bes,4}>>
  \key ees \major
  \repeat volta 2 {
    ees,8( c') bes16( ees bes g)
    ees8( c') bes16( ees bes g)
    <<
      {
        aes8( ees') aes,( ees')
        ees,16( bes' ees g bes4)
      }
      \\
      {
        aes,4 aes
        ees r
      }
    >>
    ees8( c') bes16 ees c8
    d( g) bes16( g d8)
    <<
      {
        d <c' d> d, <c'd>
        <bes d>4 s
      }
      \\
      {
        d,4 d
        g8 d16^( g) bes4
      }
    >>
    ees,,8( c') bes16( ees bes g)
    ees8( c') bes16( ees bes g)
    <<
      {aes8( ees') aes,( ees')}
      \\
      {aes,4 aes}
    >>
    ees16( g bes ees) bes8( g)
    <<
      {
        aes8( ees') aes, a
        bes( bes') bes,( bes')
      }
      \\
      {
        aes,4 s
        bes bes
      }
    >>
    bes8( bes,) bes'( bes,)
  }
  \alternative {
    {
      <ees bes' ees> r <bes' f' aes>4
    }
    {
      <ees, bes' ees>8([ g bes ees)]
    }
  }
  \repeat volta 2 {
    ces8([ des ees ges)]
    ces([ ges ees ces)]
    bes([ ees f g)]
    bes([ g ees bes)]
    \stemDown <d, d'> <aes'' bes d> <bes,, bes'> <aes'' bes d>
    <bes, bes'> <aes' bes d> <bes,, bes'> <aes'' bes d>
    <ees, ees'> <g' bes ees> <bes,, bes'> <g'' bes ees>
    <ees, ees'> <g' bes ees> <g bes> r
    ces,8([ des ees ges)]
    ces([ ges ees ces)]
    bes([ ees f g)]
    bes([ g ees bes)]
    aes([ c ees aes)]
    bes,([ ees g bes)]
    <f, f'> <aes' bes d> <bes,, bes'> <aes'' bes d> \stemNeutral
  }
  \alternative {
    {
      <ees, ees'>( g bes ees)
    }
    {
      <ees, ees'>8 bes' ees, r
    }
  } \bar "|."
}

\score {
  \new PianoStaff
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
}
\include "articulate.ly"
\score {
  \unfoldRepeats \articulate
  \new PianoStaff \with {
    instrumentName = "Pno"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \midi { }
}
