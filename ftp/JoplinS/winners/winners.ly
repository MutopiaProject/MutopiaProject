\version "2.16.0"

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
 style = "Jazz"
 copyright = "Public Domain"

 filename = "winners.ly"
 maintainer = "Tom Harke"
 maintainerEmail = "tom.harke@acm.org"
 maintainerWeb = "http://www.cse.ogi.edu/~harke"


 footer = "Mutopia-2013/01/08-352"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

upperStaff = { \change Staff = "up" }
lowerStaff = { \change Staff = "down" }


topmain =  \relative c' {
 \override TextScript   #'padding = #2

 \key aes \major
 \time 2/4
 \clef treble

 % INTRO
 \oneVoice
 ees8 c' ~ c16 bes aes g
 f16 ees8 des16 c8 bes16 aes
 g16_( aes bes c des ees f g
  aes8) r8 r4

 
 % A PART
 \repeat volta 2 {
  | <c aes>8 <c aes>4 <ees c>8
  | <f b,>16( <ees c>8) <f b,>16( <ees c>16) <f b,>16( <ees c>8)
  | <bes' e,>16( <aes f>8) <bes e,>16( <aes f>16) <bes e,>16( <aes f>16) <ees c> ~
  | <ees c>2
  | <c aes>8 <c aes>4 <ees c>8
  | <f b,>16( <ees c>8) <f b,>16( <ees c>16) <ees c>16 <ees c>8
  | s16 \voiceTwo g,8. aes8 aes
  | \oneVoice <ees' g,>4 ~ <ees g,>16 ees, g des'
  | <c aes>8 <c aes>4 <ees c>8
  | <f b,>16( <ees c>8) <f b,>16( <ees c>16) <f b,>16( <ees c>8)
  | <bes' e,>16( <aes f>8) <bes e,>16( <aes f>16) <aes f>16 <bes g f>16 <c g e> ~
  | \voiceOne <c g e>4(  c8) g16 aes
  | \oneVoice <bes e,>16( <aes f>8) <bes e,>16( <aes f>16) <bes e,>16( <aes f>16) <ees c> ~
  | <ees c>16 <f des> <ees c> <des bes> <c aes> <ees c>8 <ees c>16
  | <ees a,>16( <des bes>8) <ees a,>16( <des bes>) <c g des> <bes g des>8
 } \alternative {
  { <aes c,>4 ~ <aes c,>8 r }
  { <aes c,>4 <aes' ees c aes>8 ees,16 e }
 }
 
 % B PART
 \repeat volta 2 {
  | f16 fis g <g bes> ~ <g bes> ees' des bes
  | f16 fis g <g c> ~ <g c> bes f g
  | aes16 ees f g aes a bes b
  | c16 b c <c f> ~ <c f> ees bes c
  | des16 bes'8 c,16 des16 bes'8 c,16
  | des16 bes'8 aes16 g f ees des
  | c16 aes'8 b,16 c16 aes'8 b,16
  | c16 aes'8 f16 ees c bes aes
  | g16 gis a <a f'> ~ <a f'> ees' c a
  | g16 gis a <a f'> ~ <a f'> <c ees> <a f'> <c ees>
  | <bes des>16 <a c> <bes des> f ~ f a bes des
  | f16 c des bes ~ bes f des bes
  | b16-1 d-2 f-3 aes-4 b-5 b8-5 b16-1 ~
  | \voiceOne b16 d-2 f-3 aes-4 b8-5 r
  | c16 aes ees c c aes c, ees
 } \alternative {
  { \oneVoice <des ees g bes>16 <des ees g bes>8 <c ees aes>16 ~ <c ees aes>8 ees16 e }
  { <des ees g bes>16 <des ees g bes>8 <c ees aes>16 ~ <c ees aes>8 ees8 }
 }
 
 \bar "||"
 
 % A PART, AGAIN
  | <c' aes>8 <c aes>4 <ees c>8
  | <f b,>16( <ees c>8) <f b,>16( <ees c>16) <f b,>16( <ees c>8)
  | <bes' e,>16( <aes f>8) <bes e,>16( <aes f>16) <bes e,>16( <aes f>16) <ees c> ~
  | <ees c>2
  | <c aes>8 <c aes>4 <ees c>8
  | <f b,>16( <ees c>8) <f b,>16( <ees c>16) <ees c>16 <ees c>8
  | \voiceTwo s16 g,8. aes8 aes
  | \oneVoice <ees' g,>4 ~ <ees g,>16 ees, g des'
  | <c aes>8 <c aes>4 <ees c>8
  | <f b,>16( <ees c>8) <f b,>16( <ees c>16) <f b,>16( <ees c>8)
  | <bes' e,>16( <aes f>8) <bes e,>16( <aes f>16) <aes f>16 <bes g f>16 <c g e> ~
  | \voiceOne <c g e>4(  c8) g16 aes
  | \oneVoice <bes e,>16( <aes f>8) <bes e,>16( <aes f>16) <bes e,>16( <aes f>16) <ees c> ~
  | <ees c>16 <f des> <ees c> <des bes> <c aes> <ees c>8 <ees c>16
  | <ees a,>16( <des bes>8) <ees a,>16( <des bes>) <c g des> <bes g des>8
  | <aes c,>4 <aes' ees c aes>8 r
 
 % FOO
 \key des \major
 \bar "||"
 | des,8 des8 ~ des16 aes des ees
 | \voiceOne f8 f ~ f16 aes, des f
 | <c ges' aes>16 <ees ges c>8 <c ges' bes>16 ~ \oneVoice <c ges' bes> <c ges' aes> <ges aes c>8
 | <f aes des>8 r r aes16 a
 
 % C PART
 \repeat volta 2 {
  | bes16 ges'8 ees16 a, ges'8 ees16
  | aes,16 des f bes ~ bes aes f des
  | c16 aes' ees c bes c8 aes16
  | des16 des f aes des bes aes f
  | bes,16 ges'8 ees16 a, ges'8 ees16
  | aes,16 des f bes ~ bes aes f des
  | ees16 f ees des c des8 bes16
  | aes8 <b f'>16( <c ees>) <c aes'>8-^  <aes ces>
  | \voiceTwo bes4 a4
  | \oneVoice r16 aes des f bes aes f des
  | c16 aes' ees c bes c8 aes16
  | r16 des f aes \voiceTwo f8 ces
  | bes4 a4
  | r16 aes des f bes aes f aes,
 } \alternative {
  { | \voiceTwo g4 ges8. f16 ~
    | f8 \oneVoice f'16 des ees f aes, a
  }
  { | \voiceTwo g4 ges8. f16 ~
    | \oneVoice f4 ~ <f des'>16 <aes aes'> <bes bes'> <b b'>
  }
 }
 
 % D PART
 \repeat volta 2 {
  | <c ges' c>8 <aes aes'>16 <bes ges' bes> ~ <bes ges' bes>4
  | <c ges' c>8 <aes aes'>16 <bes ges' bes> ~ <bes ges' bes> <aes aes'> <bes bes'> <c c'>
  | <des f des'>8 <aes f' aes>16 <bes f' bes> ~ <bes f' bes>4
  | <des f des'>8 <aes f' aes>16 <bes f' bes> ~ <bes f' bes>4
  | r8 bes'16 <c, ges' aes> ~ <c ges' aes>4 
  | r8 bes'16 <c, ges' aes> ~ <c ges' aes>4 
  | r8 bes'16 <des, f aes> ~ <des f aes>4 
  | r8 bes'16 <des, f aes> ~ <des f aes> <aes aes'> <bes bes'> <b b'>
  | <c ges' c>8 <aes aes'>16 <bes ges' bes> ~  <bes ges' bes>4 
  | <c ges' c>8 <aes aes'>16 <bes ges' bes> ~  <bes ges' bes> <aes aes'> <bes bes'> <c c'>
  | <des f des'>8 <aes f' aes>16 <bes f' bes> ~  <bes f' bes>4 
  | r16 des f aes f8 ces
  | bes4 a
  | r16 aes des f bes aes f aes,
 } \alternative {
  { | \voiceTwo g4 ges8. f16 ~
    | \oneVoice f4 ~ <f des'>16 <aes aes'> <bes bes'> <b b'>
  }
  { | \voiceTwo g4 ges8. f16 ~
    \override Score.RehearsalMark   #'break-visibility = #begin-of-line-invisible
    | \oneVoice f4 <des' f aes des>8 r
    \mark \markup { \musicglyph #"scripts.ufermata" }
  }
 }
 
 \bar "|."
}

topsecondary =  \relative c' {
 \override TextScript   #'padding = #2

 \time 2/4
 \clef treble
 
 % INTRO
 s2*4
 
 % A PART
 \repeat volta 2 {
  s2*3
  \voiceOne r8 ees16( f g aes bes  b)
  s2*2
  ees16 bes8 ees16 d ees f8
  s2*4
  \voiceTwo r16 c e g c8 r
  s2*3
 } \alternative {
  { s2 }
  { s2 }
 }
 
 % B PART
 \repeat volta 2 {
  s2*15
 } \alternative {
  { s2 }
  { s2 }
 }
 
 % A PART, AGAIN
 | s2*3
 | \voiceOne r8 ees,,16( f g aes bes  b)
 | s2*2
 | ees16 bes8 ees16 d ees f8
 | s2*4
 | \voiceTwo r16 c e g c8 r
 | s2*4
 
 % FOO
 s2*4
 
 % C PART
 \repeat volta 2 {
  | s2*8
  | \voiceOne bes,16 ges'8 ees16 a,16 ges'8 ees16
  | s2*2
  | s4 des'16 bes aes f
  | bes,16 ges'8 ees16 a, ges'8 ees16
  | s2
 } \alternative {
  { | \voiceThree g,16 <bes des>8. ges16 <c ees>8 des16 ~
    | des4 s4
  }
  { | g,16 <bes des>8. ges16 <c ees>8 des16 ~
    | des4 s4
  }
 }
 
 % final repeats
 
 % D PART
 \repeat volta 2 {
  s2*11
  | s4 des'16 bes aes f
  | bes,16 ges'8 ees16 a, ges'8 ees16
  | s2
 } \alternative {
  { | g,16 <bes des>8. ges16 <c ees>8 des16 ~
    | <des f,>4 s4
  }
  { | g,16 <bes des>8. ges16 <c ees>8 des16 ~
    | <des f,>4 s4
  }
 }
 
}


bottom =  \relative c {
 \override TextScript   #'padding = #2

 \key aes \major
 \time 2/4
 \clef bass

 % INTRO
 ees8 c' ~ c16 bes aes g
 f16 ees8 des16 c8 bes16 aes
 ees4 ees'16 des c bes
 aes 8 <ees' aes c> ees,8 <ees' aes c>
 
 
 % A PART
 \repeat volta 2 {
  aes,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  des,8 <f' aes des> des, <f' aes des>
  aes,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> a, <fis' a ees'> 
  bes,8 <g' bes ees> bes, <bes' d > 
  <ees, ees'>8 <des des'> <c c'> <bes bes'>
  <aes  aes'>8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  des,8 <f' aes des> <des des'> <des des'>
  <c c'>8 <g g'> <c, c'> r
  <des  des'>8 <f' aes des> <des, des'>  <f' aes des>
  <aes, aes'>8 <ees' aes c> <aes, aes'> <ees' aes c> 
  <ees, ees'>8 <ees' g des'> <ees, ees'>8 <ees ees'>8
 } \alternative {
  { <<{ees'4 ~ ees8 r} \\ {aes,8 ees f g}>> }
  { <aes aes'>8 <ees ees'> <aes, aes'> r  }
 }
 
 % B PART
 \repeat volta 2 {
  | <ees' ees'>8 <ees' bes' des> <g, g'> <ees' g des'>
  | <bes bes'>8 <ees g bes des> <bes bes'> <b b'>
  | <c c'>8 <ees aes c> <ees, ees'> <ees' aes c>
  | <aes, aes'>8 <ees' aes c> <ees, ees'> <ees' aes c>
  | <bes bes'>8 <ees g des'> <ees, ees'> <ees' g des'>
  | <bes bes'>8 <ees g des'> <ees, ees'> <g g'>
  | <aes aes'>8 <ees' aes c> <ees, ees'> <ees' aes c>
  | <aes, aes'>8 <ees' aes c> <ees, ees'> <ees' aes c>
  | <f, f'>8 <f' a ees'> <a, a'> <f' a ees'>
  | <c c'>8 <f a ees'> <f, f'> <f' a ees'>
  | bes,8 <f' bes des> des8 <f bes des>
  | bes,8 <f' bes> <des f bes>4
  | d16-5 f-4 aes-3 b-2 d-1 d8-1 d16-5 ~
  | d16 \upperStaff\voiceTwo f_4 aes_3 b_2 d8_1 r
  | <aes ees'>8 \lowerStaff\oneVoice r8 r4
 } \alternative {
  { <ees,, ees'>8 <ees ees'> <aes aes'> r }
  { <ees ees'>8 <ees ees'> <aes aes'> r }
 }
 
 
 % A PART, AGAIN
  aes8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  des,8 <f' aes des> des, <f' aes des>
  aes,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> a, <fis' a ees'> 
  bes,8 <g' bes ees> bes, <bes' d > 
  <ees, ees'>8 <des des'> <c c'> <bes bes'>
  <aes  aes'>8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  des,8 <f' aes des> <des des'> <des des'>
  <c c'>8 <g g'> <c, c'> r
  <des  des'>8 <f' aes des> <des, des'>  <f' aes des>
  <aes, aes'>8 <ees' aes c> <aes, aes'> <ees' aes c> 
  <ees, ees'>8 <ees' g des'> <ees, ees'>8 <ees ees'>8
  | <aes aes'>8 <ees ees'> <aes, aes'> r
 
 % FOO
 \key des \major
 | des''8 des8 ~ des16 aes des ees
 \upperStaff\voiceTwo
 | f8 f ~ f16 aes, des f
 | aes4 \lowerStaff\oneVoice <aes,, aes'>8 <aes aes'>
 | <des, des'>8 <des des'> <ees ees'> <f f'>
 
 % C PART
 \repeat volta 2 {
  | <ges ges'>8 <bes' des ges> <ees, ees'> <e e'>
  | <f f'>8  <aes des f> <des, des'> <aes' des f>
  | <aes, aes'>8 <aes' c ges'> <ees ees'> <e e'>
  | <f f'>8 <des des'> <aes aes'> <f f'>
  | <ges ges'>8 <bes' des ges> <ees, ees'> <e e'>
  | <f f'>8  <aes des f> <des, des'> <aes' des f>
  | <bes, bes'>8 <des' ees g>  <ees,, ees'>8 <des'' ees g>
  | <aes c ees>8 d,16(  ees) aes,8-^ <f' des'>
  | <ges, ges'>8 <bes' des ges> <ees, ees'> <e e'>
  | <f f'>8  <aes des f> <des, des'> <aes' des f>
  | <aes, aes'>8 <aes' c ges'> <ees ees'> <e e'>
  | <f f'>8 <des des'> <aes aes'> <f f'>
  | <ges ges'> <bes bes'> <ees ees'> <ges ges'>
  | <f f'>8 <des des'> <aes aes'> <des des'>
 } \alternative {
  {
    | <bes bes'>8 <ees, ees'> <aes, aes'>4
    | <des des'>8 <des' des'> <aes aes'> <f f'>
  }
  {
    | <bes bes'>8 <ees, ees'> <aes, aes'>4
    | <des des'>8 aes' des, r
  }
 }
 
 % D PART
 \repeat volta 2 {
  | <ees' ees'>8 <aes c ges'> <aes, aes'> <aes' c ges'>
  | <ees, ees'>8 <aes' c ges'> <ees, ees'>16  <aes aes'> <g g'> <ges ges'>
  | <f f'>8 <aes' des f> <des, des'> <aes' des f>
  | <f, f'>8 <aes' des f> <des, des'> <d d'>
  | <ees ees'>8 <aes c ges'> <aes, aes'> <aes' c ges'>
  | <c, c'>8 <aes' c ges'> <aes, aes'> <aes' c ges'>
  | <des, des'>8 <aes' des f> <aes, aes'> <aes' des f>
  | <des, des'>8 <aes' des f> <f f'> <fes fes'>
  | <ees ees'>8 <aes c ges'> <aes, aes'> <aes' c ges'>
  | <ees, ees'>8 <aes' c ges'> <ees, ees'>16  <aes aes'> <g g'> <ges ges'>
  | <f f'>8 <aes' des f> <des, des'> <aes' des f>
  | <f f'>8 <des des'> <aes aes'> <f f'>
  | <ges ges'>8 <bes bes'> <ees ees'> <ges ges'>
  | <f f'>8 <des des'> <aes aes'> <des des'>
 } \alternative {
  { | <bes bes'>8 <ees, ees'> <aes, aes'>4
    | <des des'>8 <aes' aes'> <f' f'> <fes fes'>
  }
  {
    | <bes, bes'>8 <ees, ees'> <aes, aes'>4
    | <des des'>8 aes' des, r
  }
 }
 
}

\score {
  \new PianoStaff <<
  \new Staff = "up" <<
   \new Voice = "VA" { \topmain }
   \new Voice = "VB" { \topsecondary }
  >>
  \new Staff = "down" \bottom
 >>

\layout {}
}

\score {
<<
  \new Staff = "up" <<
   \new Voice = "VA" \unfoldRepeats { \topmain }
   \new Voice = "VB" \unfoldRepeats { \topsecondary }
  >>
  \new Staff = "down" \unfoldRepeats \bottom
>>

\midi {}
}
