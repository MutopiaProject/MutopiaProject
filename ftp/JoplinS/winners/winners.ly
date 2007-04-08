\version "1.8.0"

\header {
 title = "The Easy Winners"
 subtitle = "A Rag Time Two Step."
 composer = "Scott Joplin"
 piece = "Not fast."

 mutopiatitle = "The Easy Winners"
 mutopiacomposer = "S. Joplin (1868-1917)"
 mutopiainstrument = "Piano"
 date = "C. 1901"
 source = "Reproduction of Original"
 style = "Jazz"
 copyright = "Public Domain"

 filename = "winners.ly"
 maintainer = "Tom Harke"
 maintainerEmail = "tom.harke@acm.org"
 maintainerWeb = "http://www.cse.ogi.edu/~harke"
 lastupdated = "2003/Aug/31"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
 footer = "Mutopia-2003/08/31-352"

 % Bugs, ugliness, misleading notation:
 % - topmain of bars 15/16 and 49/50 are typeset with the same code, yet the e-note tied from 15 to 16 is printed with a natural sign, while the e-note on 49/50 is not.
 % - the ties on bars 73/74 and 91/92 are ugly
 % - compilation error: "warning: Prefix articulations are deprecated. Use postfix notation instead."
 %   Now, when I change it to postfix I get a run-time error when viewing the output.
 % - compilation error: "warning: Too many clashing notecolumns.  Ignoring them."
 %   Huh? give me one or two examples.
}

nobeams = \property Staff.autoBeaming = ##f
beamson = \property Staff.autoBeaming = ##t

upperStaff = { \translator Staff = up }
lowerStaff = { \translator Staff = down }


topmain = \notes \relative c' {
 \property Voice . TextScript \override #'padding = #2

 \key aes \major
 \time 2/4
 \clef treble

 % INTRO
 ees8 c' ~ c16 bes aes g
 f16 ees8 des16 c8 bes16 aes
 g16_( aes bes c des ees f g
 )aes8 r8 r4

 
 % A PART
 \repeat volta 2 {
  \stemDown
  | <c8 aes> <c4 aes> <ees8 c>
  | <f16 b,(> <)ees8 c> <f16 b,(> <)ees16 c> <f16 b,(> <)ees8 c>
  | <bes'16 e,(> <)aes8 f> <bes16 e,(> <)aes16 f> <bes16 e,(> <)aes16 f> <ees c> ~
  | <ees2 c>
  | <c8 aes> <c4 aes> <ees8 c>
  | <f16 b,(> <)ees8 c> <f16 b,(> <)ees16 c> <ees16 c> <ees8 c>
  | s16 g,8. aes8 aes
  | <ees'4 g,> ~ <ees16 g,> ees, g des'
  | <c8 aes> <c4 aes> <ees8 c>
  | <f16 b,(> <)ees8 c> <f16 b,(> <)ees16 c> <f16 b,(> <)ees8 c>
  | <bes'16 e,(> <)aes8 f> <bes16 e,(> <)aes16 f> <aes16 f> <bes16 g f> <c g e> ~
  \stemUp
  | <c4( g e> )c8 g16 aes
  \stemDown
  | <bes16 e,(> <)aes8 f> <bes16 e,(> <)aes16 f> <bes16 e,(> <)aes16 f> <ees c> ~
  | <ees16 c> <f des> <ees c> <des bes> <c aes> <ees8 c> <ees16 c>
  | <ees16 a,(> <)des8 bes> <ees16 a,(> \stemUp <)des bes> <c g des> <bes8 g des>
 } \alternative {
  { <aes4 c,> ~ <aes8 c,> r }
  { <aes4 c,> \stemDown <aes'8 ees c aes> ees,16 e }
 }
 
 % B PART
 \repeat volta 2 {
  \stemUp
  | f16 fis g <g bes> ~ \stemDown <g bes> ees' des bes
  \stemUp
  | f16 fis g <g c> ~ <g c> bes f g
  | aes16 ees f g aes a bes b
  \stemDown
  | c16 b c <c f> ~ <c f> ees bes c
  | des16 bes'8 c,16 des16 bes'8 c,16
  | des16 bes'8 aes16 g f ees des
  | c16 aes'8 b,16 c16 aes'8 b,16
  | c16 aes'8 f16 ees c bes aes
  | g16 gis a <a f'> ~ <a f'> ees' c a
  | g16 gis a <a f'> ~ <a f'> <c ees> <a f'> <c ees>
  | <bes16 des> <a c> <bes des> f ~ \stemUp f a bes des
  \stemDown
  | f16 c des bes ~ \stemUp bes f des bes
  | b16-1 d-2 f-3 aes-4 \stemDown b-5 b8-5 b16-1 ~
  \stemUp
  | b16 d-2 f-3 aes-4 b8-5 r
  | c16 aes ees c c aes c, ees
 } \alternative {
  { <des16 ees g bes> <des8 ees g bes> <c16 ees aes> ~ <c8 ees aes> ees16 e }
  { <des16 ees g bes> <des8 ees g bes> <c16 ees aes> ~ <c8 ees aes> ees8 }
 }
 
 \bar "||"
 
 % A PART, AGAIN
  \stemDown
  | <c'8 aes> <c4 aes> <ees8 c>
  | <f16 b,(> <)ees8 c> <f16 b,(> <)ees16 c> <f16 b,(> <)ees8 c>
  | <bes'16 e,(> <)aes8 f> <bes16 e,(> <)aes16 f> <bes16 e,(> <)aes16 f> <ees c> ~
  | <ees2 c>
  | <c8 aes> <c4 aes> <ees8 c>
  | <f16 b,(> <)ees8 c> <f16 b,(> <)ees16 c> <ees16 c> <ees8 c>
  | s16 g,8. aes8 aes
  | <ees'4 g,> ~ <ees16 g,> ees, g des'
  | <c8 aes> <c4 aes> <ees8 c>
  | <f16 b,(> <)ees8 c> <f16 b,(> <)ees16 c> <f16 b,(> <)ees8 c>
  | <bes'16 e,(> <)aes8 f> <bes16 e,(> <)aes16 f> <aes16 f> <bes16 g f> <c g e> ~
  \stemUp
  | <c4( g e> )c8 g16 aes
  \stemDown
  | <bes16 e,(> <)aes8 f> <bes16 e,(> <)aes16 f> <bes16 e,(> <)aes16 f> <ees c> ~
  | <ees16 c> <f des> <ees c> <des bes> <c aes> <ees8 c> <ees16 c>
  | <ees16 a,(> <)des8 bes> <ees16 a,(> \stemUp <)des bes> <c g des> <bes8 g des>
  | <aes4 c,> \stemDown <aes'8 ees c aes> r
 
 % FOO
 \key des \major
 \bar "||"
 | des,8 des8 ~ des16 aes des ees
 \stemUp
 | f8 f ~ f16 aes, des f
 | <c16 ges' aes> <ees8 ges c> <c16 ges' bes> ~ <c ges' bes> <c ges' aes> <ges8 aes c>
 | <f8 aes des> r r aes16 a
 
 % C PART
 \repeat volta 2 {
  \stemDown
  | bes16 ges'8 ees16 a, ges'8 ees16
  | aes,16 des f bes ~ bes aes f des
  | c16 aes' ees c bes c8 aes16
  | des16 des f aes des bes aes f
  | bes,16 ges'8 ees16 a, ges'8 ees16
  | aes,16 des f bes ~ bes aes f des
  | ees16 f ees des c des8 bes16
  | aes8 <b16( f'> <c )ees> <c8 aes'-^>  <aes ces>
  | bes4 a4
  | r16 aes des f bes aes f des
  | c16 aes' ees c bes c8 aes16
  | r16 des f aes f8 ces
  | bes4 a4
  | r16 aes des f bes aes f aes,
 } \alternative {
  { | g4 ges8. f16 ~
    | <f8 des'> f'16 des ees f aes, a
  }
  { | g4 ges8. f16 ~
    | \stemUp <f4 des'> \stemDown ~ <f16 des'> <aes aes'> <bes bes'> <b b'>
  }
 }
 
 % D PART
 \repeat volta 2 {
  | <c8 ges' c> <aes16 aes'> <bes ges' bes> ~ <bes4 ges' bes>
  | <c8 ges' c> <aes16 aes'> <bes ges' bes> ~ <bes ges' bes> <aes aes'> <bes bes'> <c c'>
  | <des8 f des'> <aes16 f' aes> <bes f' bes> ~ <bes4 f' bes>
  | <des8 f des'> <aes16 f' aes> <bes f' bes> ~ <bes4 f' bes>
  | r8 bes'16 <c, ges' aes> ~ <c4 ges' aes> 
  | r8 bes'16 <c, ges' aes> ~ <c4 ges' aes> 
  | r8 bes'16 <des, f aes> ~ <des4 f aes> 
  | r8 bes'16 <des, f aes> ~ <des f aes> <aes aes'> <bes bes'> <b b'>
  | <c8 ges' c> <aes16 aes'> <bes ges' bes> ~  <bes4 ges' bes> 
  | <c8 ges' c> <aes16 aes'> <bes ges' bes> ~  <bes ges' bes> <aes aes'> <bes bes'> <c c'>
  | <des8 f des'> <aes16 f' aes> <bes f' bes> ~  <bes4 f' bes> 
  | r16 des f aes f8 ces
  | bes4 a
  | r16 aes des f bes aes f aes,
 } \alternative {
  { | g4 ges8. f16 ~
    | \stemUp <f4 des'> \stemDown ~ <f16 des'> <aes aes'> <bes bes'> <b b'>
  }
  { | g4 ges8. f16 ~
    \property Score.RehearsalMark \override #'break-visibility = #begin-of-line-invisible
    | \stemUp <f4 des'> \stemDown <des'8 f aes des> r
    \mark \markup { \musicglyph #"scripts-ufermata" }
  }
 }
 
 \bar "|."
}

topsecondary = \notes \relative c' {
 \property Voice . TextScript \override #'padding = #2

 \time 2/4
 \clef treble
 
 % INTRO
 s2*4
 
 % A PART
 \repeat volta 2 {
  \stemUp
  s2*3
  r8 ees16( f g aes bes )b
  s2*2
  ees16 bes8 ees16 d ees f8
  s2*4
  \stemDown
  r16 c e g c8 r
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
 \stemUp
 | s2*3
 | r8 ees,,16( f g aes bes )b
 | s2*2
 | ees16 bes8 ees16 d ees f8
 | s2*4
 \stemDown
 | r16 c e g c8 r
 | s2*4
 
 % FOO
 s2*4
 
 % C PART
 \repeat volta 2 {
  \stemUp
  | s2*8
  | bes,16 ges'8 ees16 a,16 ges'8 ees16
  | s2*2
  | s4 des'16 bes aes f
  | bes,16 ges'8 ees16 a, ges'8 ees16
  | s2
 } \alternative {
  { | g,16 <bes8. des> ges16 <c8 ees> des16 ~
    | \stemDown <des4 f,> \stemUp s4
  }
  { | g,16 <bes8. des> ges16 <c8 ees> des16 ~
    | <des4 f,> s4
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
  { | g,16 <bes8. des> ges16 <c8 ees> des16 ~
    | <des4 f,> s4
  }
  { | g,16 <bes8. des> ges16 <c8 ees> des16 ~
    | <des4 f,> s4
  }
 }
 
}


bottommain = \notes \relative c {
 \property Voice . TextScript \override #'padding = #2

 \key aes \major
 \time 2/4
 \clef bass

 % INTRO
 \stemDown
 ees8 c' ~ c16 bes aes g
 f16 ees8 des16 \stemUp c8 bes16 aes
 ees4 \stemDown ees'16 des c bes
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
  <ees,8 ees'> <des des'> <c c'> <bes bes'>
  <aes 8 aes'> <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  des,8 <f' aes des> <des des'> <des des'>
  <c8 c'> <g g'> \stemUp <c, c'> r
  \stemDown
  <des 8 des'> <f' aes des> <des, des'>  <f' aes des>
  <aes,8 aes'> <ees' aes c> <aes, aes'> <ees' aes c> 
  <ees,8 ees'> <ees' g des'> \stemUp <ees,8 ees'> <ees8 ees'>
  \stemDown
 } \alternative {
  { aes8 ees f g }
  { <aes8 aes'> <ees ees'> \stemUp <aes, aes'> r  }
 }
 
 % B PART
 \repeat volta 2 {
  \stemDown
  | <ees8 ees'> <ees' bes' des> <g, g'> <ees' g des'>
  | <bes8 bes'> <ees g bes des> <bes bes'> <b b'>
  | <c8 c'> <ees aes c> <ees, ees'> <ees' aes c>
  | <aes,8 aes'> <ees' aes c> <ees, ees'> <ees' aes c>
  | <bes8 bes'> <ees g des'> <ees, ees'> <ees' g des'>
  | <bes8 bes'> <ees g des'> \stemUp <ees, ees'> <g g'>
  \stemDown
  | <aes8 aes'> <ees' aes c> <ees, ees'> <ees' aes c>
  | <aes,8 aes'> <ees' aes c> <ees, ees'> <ees' aes c>
  | <f,8 f'> <f' a ees'> <a, a'> <f' a ees'>
  | <c8 c'> <f a ees'> <f, f'> <f' a ees'>
  | bes,8 <f' bes des> des8 <f bes des>
  | bes,8 <f' bes> <des4 f bes>
  | d16-5 f-4 aes-3 b-2 d-1 d8-1 d16-5 ~
  | d16 \upperStaff f_4 aes_3 b_2 d8_1 r
  | <aes8 ees'> \lowerStaff r8 r4
 } \alternative {
  { \stemUp <ees,,8 ees'> <ees ees'> \stemDown <aes aes'> r }
  { \stemUp <ees,,8 ees'> <ees ees'> \stemDown <aes aes'> r }
 }
 
 
 % A PART, AGAIN
  aes,,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  des,8 <f' aes des> des, <f' aes des>
  aes,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> a, <fis' a ees'> 
  bes,8 <g' bes ees> bes, <bes' d > 
  <ees,8 ees'> <des des'> <c c'> <bes bes'>
  <aes 8 aes'> <ees' aes c> ees, <ees' aes c>
  aes,8 <ees' aes c> ees, <ees' aes c>
  des,8 <f' aes des> <des des'> <des des'>
  <c8 c'> <g g'> \stemUp <c, c'> r
  \stemDown
  <des 8 des'> <f' aes des> <des, des'>  <f' aes des>
  <aes,8 aes'> <ees' aes c> <aes, aes'> <ees' aes c> 
  <ees,8 ees'> <ees' g des'> \stemUp <ees,8 ees'> <ees8 ees'>
  \stemDown
  | <aes8 aes'> <ees ees'> \stemUp <aes, aes'> r
 
 % FOO
 \key des \major
 \stemDown
 | des''8 des8 ~ des16 aes des ees
 \upperStaff
 | f8 f ~ f16 aes, des f
 | aes4 \lowerStaff <aes,,8 aes'> <aes aes'>
 | <des,8 des'> <des des'> <ees ees'> <f f'>
 
 % C PART
 \repeat volta 2 {
  | <ges8 ges'> <bes' des ges> <ees, ees'> <e e'>
  | <f8 f'>  <aes des f> <des, des'> <aes' des f>
  | <aes,8 aes'> <aes' c ges'> <ees ees'> <e e'>
  | <f8 f'> <des des'> <aes aes'> <f f'>
  | <ges8 ges'> <bes' des ges> <ees, ees'> <e e'>
  | <f8 f'>  <aes des f> <des, des'> <aes' des f>
  | <bes,8 bes'> <des' ees g>  <ees,,8 ees'> <des'' ees g>
  | <aes8 c ees> d,16( )ees aes,8-^ <f' des'>
  | <ges,8 ges'> <bes' des ges> <ees, ees'> <e e'>
  | <f8 f'>  <aes des f> <des, des'> <aes' des f>
  | <aes,8 aes'> <aes' c ges'> <ees ees'> <e e'>
  | <f8 f'> <des des'> <aes aes'> <f f'>
  | <ges ges'> <bes bes'> <ees ees'> <ges ges'>
  | <f8 f'> <des des'> <aes aes'> <des des'>
 } \alternative {
  { \stemUp
    | <bes8 bes'> <ees, ees'> <aes,4 aes'>
    | <des8 des'> <des' des'> <aes aes'> <f f'>
  }
  { \stemUp
    | <bes8 bes'> <ees, ees'> <aes,4 aes'>
    | <des8 des'> aes' des, r
  }
 }
 
 % D PART
 \repeat volta 2 {
  \stemDown
  | <ees8 ees'> <aes c ges'> <aes, aes'> <aes' c ges'>
  | <ees,8 ees'> <aes' c ges'> \stemUp <ees,16 ees'>  <aes aes'> <g g'> <ges ges'>
  \stemDown
  | <f8 f'> <aes' des f> <des, des'> <aes' des f>
  | <f,8 f'> <aes' des f> <des, des'> <d d'>
  | <ees8 ees'> <aes c ges'> <aes, aes'> <aes' c ges'>
  | <c,8 c'> <aes' c ges'> <aes, aes'> <aes' c ges'>
  | <des,8 des'> <aes' des f> <aes, aes'> <aes' des f>
  | <des,8 des'> <aes' des f> <f f'> <fes fes'>
  | <ees8 ees'> <aes c ges'> <aes, aes'> <aes' c ges'>
  | <ees,8 ees'> <aes' c ges'> \stemUp <ees,16 ees'>  <aes aes'> <g g'> <ges ges'>
  \stemDown
  | <f8 f'> <aes' des f> <des, des'> <aes' des f>
  | <f8 f'> <des des'> <aes aes'> <f f'>
  | <ges8 ges'> <bes bes'> <ees ees'> <ges ges'>
  | <f8 f'> <des des'> <aes aes'> <des des'>
  \stemUp
 } \alternative {
  { | <bes8 bes'> <ees, ees'> <aes,4 aes'>
    | <des8 des'> <aes' aes'> \stemDown <f' f'> <fes fes'>
  }
  {
    \stemUp
    | <bes8 bes'> <ees, ees'> <aes,4 aes'>
    | <des8 des'> aes' des, r
  }
 }
 
}

bottomsecondary = \notes \relative c' {
 \property Voice . TextScript \override #'padding = #2

 \time 2/4
 \clef bass
 
 % INTRO
 s2*4
 
 % A PART
 \repeat volta 2 {
  s2*15
 } \alternative {
  { \stemUp ees,4 ~ ees8 r }
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
 s2*16
 
 % FOO
 s2*4
 
 
 % C PART
 \repeat volta 2 {
  s2*14
 } \alternative {
  {  s2*2 }
  {  s2*2 }
 }
 
 % final repeats
 
 % D PART
 \repeat volta 2 {
  s2*14
 } \alternative {
  { s2*2 }
  { s2*2 }
 }
 
}

\score {
 \notes \context PianoStaff <
  \context Staff = "up" <
   \context Voice = VA { \voiceOne \topmain }
   \context Voice = VB { \voiceTwo \topsecondary }
  >
  \context Staff = "down" <
   \context Voice = VC { \voiceOne \bottommain }
   \context Voice = VD { \voiceTwo \bottomsecondary }
  >
 >

\paper {}
\midi {}
}

