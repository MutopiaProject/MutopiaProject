\version "2.18.2"
#(set-global-staff-size 20)

%#(set-default-paper-size "letter")

\paper {
    top-margin = 8\mm                              %-minimum: 8 mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block 
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

\header {
    title = "Prelude X"
    composer = "Sergei Rachmaninoff (1873-1943)"
    opus = "Opus 23, No. 10"
    date = "1901"
    style = "Romantic"
    source = "Bosworth & Co. 1896; Universal Edition 1910"

    maintainer = "Joshua Nichols"
    maintainerEmail = "josh.d.nichols (at) gmail.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Prelude Op. 23, No. 10"
    mutopiaopus = "Op. 23"
    mutopiacomposer = "RachmaninoffS"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2015/10/24-2058"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

cAt = \set PianoStaff.connectArpeggios = ##t
cAf = \set PianoStaff.connectArpeggios = ##f

global = {
  \key ges \major
  \time 3/4
  \tempo "Largo" 4 = 50
  \cAt
  \override DynamicText.staff-padding = #4
  \override DynamicLineSpanner.staff-padding = #3
  \set Staff.connectArpeggios = ##t
  \override TupletBracket.bracket-visibility = ##f
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(2 1)
}


right = \relative d' {
  \global \clef G
  r8 <des ges bes des>\p\<--( <ees ges bes des>-- <f bes des>\!\>-- <f bes des>-- <ges bes des>\!--)
  r8 <des ges bes des>\<--( <ees ges bes des>-- <f bes des>\!\>-- <f bes des>-- <ges bes des>\!--)
  r8 <des ges bes des>\<--( <ees ges bes des>-- <f bes des>\!\>-- <f bes des>-- <ges bes des>\!--)
  r <des f bes des>(\<-- <des f bes des>-- <ees ges bes des>\!\>-- <ees ges bes des>-- <f bes des>)--\!
  r <des ges bes des>( <des ges bes des> <des aes' ces>) \tieUp <des ges bes~ >( <c ees bes'>) \tieNeutral
  r \slurDown <des f aes>(\<-- <ees ges aes>-- <f aes des>-- <ges bes des>\!\>--^[ <aes ces des>)--\!]
  r <des, ges bes des>\<--( <ees ges bes des>-- <f bes des>\!\>-- ~ <f bes des>-- <ges bes des>\!--)
  r <des f bes des>_\markup { \italic \larger cresc. }(\< <des f bes des> <ees ges bes des>\!\> ~ <ees ges bes des> <des bes' des>)\!
  r  <ees bes' des ees>( <ees aes des ees>\dim <f aes des> <ges! aes des>^[ <aes c>]) \slurNeutral
  r <ges bes des>\<( <f aes des> <ees ges aes>\!\> <f aes> des')\!
  <<
    { \voiceOne 
      r4 r des--
      ces2-- \shape #'(
           (( 0 . 0) (0 . 0) (0 . 0.5) (0 . 1))
           ((-3 . 3) (-2 . 2) (-1 . 1) (0 . 0))
         ) Slur des4--(
      bes--) fes'8( aes, g4 ~
      g aes8) r8 r4
      r r  ces--(
      bes2--) \shape #'(
           (( 0 . 0) (0 . 0) (0 . 0) (-0.5 . -0.5))
           ((1 . 2) (1 . 1) (0 . 1) (0 . 0))
         ) Slur ces4(
      aes) eeses'8( ges, f!4 ~
      f ges8) r r4
    }
    \new Voice
    { \voiceTwo
      r8 <des f aes> <des f aes>  \override TieColumn.tie-configuration =
    #'((-5 . -1) (-3.6 . -1) (0 . 1))  <ees ges aes> ~ <ees ges aes> <f aes>
      r <des fes aes> <des fes aes> <ees ges aes> ~ < ees ges aes> <fes aes> \revert TieColumn.tie-configuration
      r\< <des fes>4 <des fes>\!\> <des ees>8\!
      <ces ees> <ces ees>4 <aes ees'> <aes ees'>8
      r\p <ces ees ges>( <ces ees ges> <des fes ges> ~ <des fes ges> <ees ges>)
      r <ces eeses ges>( <ces eeses ges> <des fes ges> ~ <des fes ges> <eeses ges>)
      r8\< <ces eeses>4 <ces eeses>\!\> <ces des>8\!
      <bes des> <bes des>4 <ges des'> <bes des>8
    }
  >>
  \oneVoice
  \tempo "poco a poco accel." r8 \clef F <ges des'>4\pp <f aes d>_\markup{ \whiteout \pad-around #0.5 \bold \italic "poco a poco cresc." } <bes ees>8
  r8 \slurUp \clef G <ges d' ges>4--( <ges aes ees'>8) r \clef F <ees ges>-.
  r8 \clef G <ges bes ees>4-- <f bes f'>-- <des' ges>8--
  r8 < bes ges' bes>4(-- <bes ees ges>) <ges bes>8
  r8 <des' a' des>4(-- <des bes'> <bes f'>8)
  r8 <eeses bes' eeses>4--( <eeses ces'> <ces ges'>8)
  r8 <ees! ces' ees!>4--( <ees ces'> <ces ges'>8)
  r8 <ees ces' ees>4--( <ees ces'> <ces ges'>8)
  r8 <ees ces' ees>4--( <ces ees ces'>) \slurNeutral <ees ces' ees>8--( ~
  <ees ces' ees> <ces ees ces'>4) <ees bes' ees>--( <bes ees bes'>8)
  r\ff <ges' beses ees ges>4->( <beses, ees beses'>4 <ges' beses ees ges>8 ~
  <ges beses ees ges>8) \tempo "rit." <ges aes ees' ges>4(-> <aes ges ees aes,>^> <ges ees' ges>8)->
  r8 \tempo "Tempo I" <ges bes des ges>4->( <ges bes,> <ges bes des>8)
  r8 <ges des'>4(-- <ges bes,> <ges bes>8 ~
  q)\p <ges bes ees>4( <ges ees bes> <ges bes ees>8 ~
  q)\dim <ees ges des'>4--\! \tempo "rit." <ges ees aes,>-- <des f des'>8--
  <<
    { \voiceOne
      \tempo "a tempo" r4 ges'--( f-- ~
      f) f8.( ees16 des4 ~
      des) ces--( bes8.-- aes16--)
      aes2 des4 ~
      des ges--( f-- ~
      f) f8.( ees16 des4_\markup { \whiteout \pad-around #0.5 \larger \italic cresc.} )
      bes'4--( ~ \once \override Beam.positions = #'(5 . 4) bes8-- des,-- ces!4--
      bes4) ges'4--( ~ ges8 bes,
      aes4-- ges) ees' ~
      ees2.
    }
    \new Voice
    { \voiceTwo
      \once\omit DynamicText r8\p\< <bes des>4 q\!\> q8\! ~
      q q4 q bes8
      r8 <bes ges ees>4 aes\dim <ges c,>8 ~
      q <des f> <ees ges>[ <f aes>] <ges bes> <aes ces>
      <ges bes>\! <bes des>4\< q\!\> q8\! ~
      q q4 q bes8
      r8\f <bes ees>4( bes\dim aes8 ~
      aes\p ges) r <ges ces>4\mf( ges8 ~
      ges\dim f ~ f\p[ ees]) r4
      <ees aes>4.--\mf( bes'8 ces4)
    }
  >>
  \oneVoice
  r4\p
  <<
    { \voiceOne
      ges8[( aes f ges]
      ees2 <des ces f,>4)
      b'8\rest\pp des,8[( ees f] ~ f ges
      bes[ ces c des! ges\arpeggio aes])
      des2--\arpeggio f4--
      c2--\arpeggio ees4--\arpeggio
      ces!4--\arpeggio eeses--\arpeggio bes--\arpeggio
      des2--\arpeggio ges,4--
      <des f, ces>2-- <f f,>4--
      <c ees, c>2--\arpeggio <ees c,>4--\arpeggio
      <ces! ees, ces>4--\arpeggio <eeses eeses, ces>--\arpeggio <a, des, ces>--
      <des des, bes>4--\arpeggio r r
      s2.
    }
    \new Voice
    { \voiceTwo
      ees,4( eeses8 des)
      des( bes ces4) s4
      s8 bes4. des4
      ges4 ~ <ges bes> <bes des>\arpeggio
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = #'(2 1)
      <bes des f bes>8\p(\arpeggio <ces ces'> <f, des' f> <ges ges'>) <f' g>( aes)
      <aes, c ees aes>(\arpeggio <beses beses'> <ees, ces' ees> <f f'>) <ces' ees ges>(\arpeggio g')
      <g, ces! ees g>[(\arpeggio <aes aes'>])  <ces eeses f>[(\arpeggio ges']) <bes, des e>[(\arpeggio f'])
      \tuplet 3/2 { <bes, des f>8\arpeggio <ges ges'> <aes aes'> } <ges ges'>8[ aes( a bes])
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = #'(1 1 1)
      bes8( ces) \tuplet 3/2 { f,8[( ges g]) } g( aes)
      aes8( beses) \tuplet 3/2 { ees,([ fes f)] } ges( g)
      \tuplet 3/2 4 { g8[( aes g]) \omit TupletNumber ges[( g ges]) f[( e f]) } \undo \omit TupletNumber
      \tuplet 3/2 { f8([ ges aes)] } ges8 <ges des bes>4^\p q8 ~
      \stemUp q q4 q <ges des>8 \stemNeutral
    }
  >>
  \oneVoice
  r8 <des ges bes>4(-- q <ges bes>8)--
  r <ges bes des>4(-- \tempo "rit." q q8)--
  r8 <ges des'>4( q q8 ~
  q q4) r8\f <des' f, des>4(--
  <ges, bes,>2.)-- \bar "|."
}

left = \relative d' {
  \global \clef F
  R1*3/4
  r4 r des\mf(
  ges,2) des'4(
  bes2) des8.( f,16)
  ees4.( f8 ges8. aes16--)
  <aes des,>2-- des4(
  ges,2) des'4(
  bes2) f'8.( aes,16)
  g4( aes4.. des16--)
  des2-- des4\mf(
  ces!2) des4(
  <aes des,,>2)\arpeggio des8( aes)
  <<
    { \voiceOne
      g4( aes bes)
      bes--( ces) r4
      s2
    }
    \new Voice
    { \voiceTwo
      r4 r ees,--( ~
      <ees aes,>2)-- \slurUp ces'4(
      bes2) \slurNeutral
    }
  >>
  \oneVoice
  ces4(
  <ges ces,,>2)\arpeggio ces8( ges)
  <<
    { \voiceOne
      f4( ges aes)
      aes--( bes) r4
      s2
    }
    \new Voice
    { \voiceTwo
      r4 r des,--( ~
      <des ges,>2--) ges4\pp(
      \stemUp bes,2) \stemNeutral
    }
  >>
  \oneVoice
  ges'4(
  ces, c) \shape #'(
           (( 0 . 0) (0 . 0) (0 . 0) (-1 . -1))
           ((-3 . 2) (-2.5 . 2.5) (1 . 1) (0 . 0))
         ) Slur bes'(
  des,2) bes'4(
  d, ees) des'!(
  e, f) des'(
  f, ges) \shape #'(
           (( 0 . 0) (0 . 0) (0 . 0) (-1 . -1))
           ((-3 . 2) (-2.5 . 2.5) (1 . 1) (0 . 0))
         ) Slur eeses'(
  ges,2) ees'!4(
  g, aes) fes'(
  aes,) f'!( a,)
  f'( bes,) ges'(
  ces,2) ges'4(
  c,2) aes'4(
  des,2  ~ des8)^\dim ges,(
  a[ bes ces c ees c])\!
  des2. ~
  <<
    { \voiceOne
      des4 ces!4.( bes8)
      \clef G r8 des ees f ~ f ges
      r8 des^\<( ees f ~ f\!\> ges\!) \clef F
      r8 bes, ces des ~ des ees ~
      ees r8 r4 r \clef G
      r8 des8( ees f ~ f ges)
     \mergeDifferentlyDottedOn r8 des( ees f ges) r \mergeDifferentlyDottedOff
      r8 ges4( ~ ges f8)
      r4 r8 ees4 ees8( ~
      ees[ d] ~ d) r8 r4
      ces4. ees8 ees4
    }
    \new Voice
    { \voiceTwo
      r4 r des,,8\pp r
      ges'2-- des'4--(
      bes2--) des8.--( f,16--)
      ees4.--( f8-- ges8.-- aes16--)
      <aes des,>2 des4--(
      ges,2--) des'4--(
      bes2--) ges'8.( des16)
      c4--( des4.-- d8
      ees bes) aes4--( bes-- ~
      bes ces8-- \clef F ges--) f4--( ~
      f4. <g des'>8-- <aes ces>4--)
    }
  >>
  \oneVoice
  r4
  <<
    { \voiceOne
      bes8( aes4 ges8
      <ees aes,>2 <aes, des,>4)
    }
    \new Voice
    { \voiceTwo
      ees'8[( c ces bes])
      s2.
    }
  >>
  \oneVoice
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  
  
  <<
    { \voiceOne
      s2.
      s4 s ges''''4\arpeggio^\markup { \bold \italic \small m.s. }
      \omit TupletNumber
      s2  \tuplet 3/2 { g,,8 s aes }
      s2  \tuplet 3/2 { ges8 s g }
    }
    \new Voice
    { \voiceTwo  \tieUp \slurUp
      \shape #'(
           (( 0 . 0) (-1 . 1) (2 . 1.8) (0 . 0.5))
         ) Slur \tuplet 3/2 4 { ges,,8( des' f ges aes a  bes des, des' ~ } \omit TupletNumber
      \once \override Beam.positions = #'(-4.5 . -4.5) \tieNeutral \slurNeutral \slurDown
      \tuplet 3/2 4 { des8)( \clef G des d ees fes f <ges des>)\arpeggio \slurDown des( \clef F des,) } \slurNeutral
      \shape #'(
           (( 0 . 0) (0 . 0) (2.5 . 2.5) (0 . 1))
         ) Slur \tuplet 3/2 4 { \stemUp ges,,8[( ges' \shape #'(
           ((-1 . 0.5) (-0.5 . 1) (0.5 . 1) (1 . 0.5))
         ) Tie des'] ~ \stemNeutral des ces' des <ces f> des aes') }
      \shape #'(
           (( 0 . 0) (0 . 0) (3 . 3) (0 . 1))
         ) Slur \tuplet 3/2 4 { \stemUp ges,,,8[( ges' ees'] ~ \stemNeutral ees beses' c ees c g') }
    }
  >>
  \oneVoice \cAf
  \tuplet 3/2 4 { <ees, ges, ges,>8[(\arpeggio aes ces] <eeses f> ces ges') <des e>( des, <ces' f>) }
  \shape #'(
           (( 0 . -1) (0 . 0) (2 . 1.8) (0 . -1.5))
         ) Slur 	 \tuplet 3/2 4 { ges,,8[( ges' des'] bes' ces c des ges des,)
                          \shape #'(
           ((0 . 0) (-1 . 1) (1 . 1) (0 . 0))
         ) Slur 	  ges,,( ges' des' aes' a bes ces des, ges, ~
                          ges) \shape #'(
           (( 0 . 0) (0 . 0) (1 . 1) (-1 . 1))
           ((-2 . 3) (-3 . 3) (1 . 1) (0 . 0))
         ) Slur ges,( ees'' ges g aes beses ees, ges, ~ }
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(2 1)
  ges8) ges,( ges' eeses') des( des')
  des,4(-- ges,)-- ges'(--\mf
  des2)-- bes'8.(-- aes16--
  ges2)-- des'4(-- \undo \omit TupletNumber
  bes4.)--^\markup { \larger \italic dim. } des8(-- \clef G \tuplet 3/2 { f8-- ees-- des)-- }
  bes'2.-- ~
  bes4. r8 \clef F <ces, aes des,>4(--
  <ges des ges,>2.)^-
      
    
  
}

\score {
  \new PianoStaff <<
    \new Staff \with { \consists "Span_arpeggio_engraver"} { \right }
    \new Staff { \left }
  >>
  
  \layout {
    \context {
      \Score
      %\omit BarNumber
      \override DynamicLineSpanner.staff-padding = #3
      \override DynamicTextSpanner.whiteout = ##t
      \override DynamicTextSpanner #'style = #'none 
       \override SpacingSpanner.common-shortest-duration =
        #(ly:make-moment 1/12)
    }
  }
  \midi { }
}
  
