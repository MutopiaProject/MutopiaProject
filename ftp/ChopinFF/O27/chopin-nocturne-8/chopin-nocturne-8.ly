% Chopin's nocturne #8 in Db major, Op. 27, No. 2

\version "2.14.2"

\header {
  title ="Nocturne 8 in  D♭ Major"
  composer = "Frédéric François Chopin (1810-1849)"
  arranger = \markup{\italic"ed." "Claude Debussy"}
  opus = "Op. 27, No. 2"
  mutopiatitle = "Nocturne 8 in Db Major"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "O 27"
  mutopiainstrument = "Piano"
  date = "1835"
  source = "Debussy, 1915"
  style = "Romantic"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  % original was under MutopiaBSD license
  %{ The MutopiaBSD License

  Permission is hereby granted, without written agreement and without license or
  royalty fees, to use, copy, modify, distribute, perform and record this music
  and to distribute, perform and record modified versions of this music for any
  purpose, provided that the above copyright notice, this paragraph and the
  following disclaimer appear with all copies of this music, whatever the format
  of the copy, printed, audio or otherwise.

  THIS MUSIC IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  %}
  maintainer = "Keith OHara"
  % original typeset by P Scott Horne, 20 Oct 2004
  % maintainerEmail = "shorne@hornetranslations.com"
  % maintainerWeb = "www.hornetranslations.com"

 maintainer = "Scott Horne and Keith OHara"
 footer = "Mutopia-2012/02/12-486"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\paper {
  %#(set-paper-size "letter")
  bottom-margin = 13\mm
  %ragged-right=##t
  %annotate-spacing = ##t
  #(layout-set-staff-size 18.5)
  ragged-last-bottom = ##f
  first-page-number = #2
  page-breaking-system-system-spacing = #'((padding . -3))
  system-system-spacing #'padding = #0.5 % let 5 systems fit on letter paper
}

%% Make special slurred grace notes for measure 67
startGraceMusic =  {
  \once \override PhrasingSlur #'control-points =
  #'((1.5 . 2.75) (2.5 . 3.0) (3.0 . 2) (2.8 . -0.3))
  s1*0\(
  \override Stem #'stroke-style = #"grace"
}
stopGraceMusic =  {
  \revert Stem #'stroke-style
  s1*0\)
}
% More textual dynamics
smorz= #(make-music 'CrescendoEvent 'span-direction START
'span-type 'text 'span-text "smorzando.")

myPageBreak = {
  \pageBreak
}

treble =  \relative c' \context Voice = "treble" {
  |%1
  R2.\p
  |%2
  s1*0_\markup\italic"dolce"
  f'4.-5\( ees8-4 des8. f,16
  |%3
  aes4. -\tweak #'text #(markup #:tied-lyric "2~1") -0\)~
  aes8 \<\( des-2 f-3
  |%4
  bes4.-5\! ~ bes16 aes-4 e-2 f-3 c-1 des-4 \)
  |%5
  \stemUp
  a2.-2-> ( \>
  |%6
  bes4.-3 \! )
  \stemNeutral
  r16 c'-5 \> bes f-1 aes-3  ges\!
  |%7
  f4
  ees8 -\tweak #'text #(markup #:tied-lyric "3~2") -0 ~
  <<
    ees8\<
    {
      s16
      \once\override Score.TextScript #'script-priority = #-100
      s16^\markup\tiny\natural^\turn
    }
  >> f8  ges\!
  |%8
  <<
    \acciaccatura ges8^1
    ges'4.\fz
    \new Voice {
      \override DynamicLineSpanner #'staff-padding = #1
      \teeny\stemUp\override Fingering #'font-size =#-3
      s8 s8*1/3
      ees-4[\>( des-3 beses-1 ges-4 ees-3]\!)
    }
  >>
  c16-.-2 \<des-. d-.-1 ees-.-2 f-.  ges-.-4
  |%9
  g4^1\>\( ~ g32 aes bes-4 aes-3
  f4. -\tweak #'text #(markup #:tied-lyric "1~4") -0 \) \! ~
  |%10
  <des f>8\p\>\(^\markup\italic"espressivo"
  <ees ges!>8.^3^5
  <bes des>16^1^2\! <c ees>8^1^4 \>
  <des f>^3^5 <a c>^1^2 \!
  |%11
  \set subdivideBeams = ##t
  <c ees>^>^1^4 <bes des>16^2^3 \) r32
  <des bes' >32^1^4
  \times 2/3 {<des bes'>16^2^5 [ ( \> <c aes'> <bes ges'>^1^3] ) \!}
  <<
    \new Voice { \stemUp f'4^>^2^5 }
    {
      bes,8[
      \times 2/3 {a16^1 \< bes^2 b^2 }
      \times 2/3 {<c^1 f^5>^. <des^2 f^5>^. <ees^3 f^5>^.] }
    }
  >>
  |%12
  <des f>8^2^4 \( \> <ees ges>8.^3^5
  <bes des>16^1^2 \!
  \acciaccatura <bes des>8
  <des f>16.^2^4 <c ees>32 \)
  \acciaccatura f8^5 \times 2/3 {
    <c ees>16^2^4 \( <bes des> <c ees>
  }
  <des f>^.\)[ r32 <a c>32^1^3 \( ]
  |%13
  <c ees>8^2^4 <bes des>16 \) r
  %{ % alternate setting in one voice
  <des bes'>8^>_1^3[_( ~ <d bes'>16)_1 <aes' ces>]^2^4
  \times 2/3 {<d, bes'>16^1^3
  <aes'!^2 a!^4> <d, bes'>}
  <aes'! f'>16[^2^5 aes32\rest <aes bes>]
  %}
  << {
    bes'8^>^3[ ~ bes16 ces^2^4]
    bes16*2/3 ^1^3
    \once \override NoteColumn #'force-hshift = #-0.9
    a^2^4 bes
    f'16^5[ s32 bes,]
  } \\ {
    des,8(_1[ \< d16)_1 aes' ]
    \times 2/3 { d,16
    \once \override Accidental #'Y-offset = #-0.3
    aes'! d,\! }
    aes'16^2 [ r32 aes ]
  } >> %%}
  |%14
  <ges bes>8^2^4( <aes ces> <ees ges>^1^2)
  \times 2/3 {<ges bes>16^3^5([ <f aes> <ges bes>}
  \times 2/3 {<f aes> <ees ges> <f aes>}
  <ges bes>16) r32 <d f>^1^3 \( ]
  |%15
  <f aes>8^2^4 \> <ees ges>16 \! \) r32 <ges ees'>32
  \times 2/3 {
    <ges ees'>16^2^5[(\> <f des'>^1^4 <ees  ces'>^2^5])
  }
  \override Fingering #'staff-padding = ##f
  \times 2/3 {<d  bes'>^.\< <bes bes'>^. <b bes'!>^. }
  \times 2/3 {<c! bes'>^. <cis_2 bes'>^. <d_1 bes'>^. }
  \times 2/3 {<ees_2 bes'>^. <e_1 bes'>^. <f  bes>^. }
  \revert Fingering #'staff-padding
  |%16
  \times 4/5 {
    <ges bes>16^2^4\<\( <aes ces> <ges bes> <f aes> <ges  bes>\!
  }
  <aes ces>16^.[\) r32 <ees ges>^1^2\(]
  % shorten the time of the grace note for MIDI
  \acciaccatura <ees ges>8*1/4
  <ges bes>16^.^2^4_> \) [ f32\rest%{bug472%} <f aes>32 \( ]
  \times 2/3 {
    \once\override Script #'avoid-slur = #'inside
    \once\override Fingering #'staff-padding = #4
    <f aes>16^\prall^2^4_>[( <ees ges>^.)\) r32 <f aes>]\(
  }
  \times 2/3 {
    \once\override Fingering #'staff-padding = #4
    <f aes>16^1^3\<([ <ges  bes>^.)\) f32\rest%{bug472%} <d f>32^1^3\(]
  }
  |%17
  \acciaccatura <d f>8*1/4 <f aes>8^.\) r\! <ees ges>^2^4-> ~
  <ees ges>\(\< <d!_1 ges>^. <des_2 ges>^.
  |%18
  <c ges'>8._\f \)
  <beses beses'>16^\markup\italic"con forza"
  <aes aes'>8^\marcato ~
  <aes aes'> \( <ges ges'> <des des'>
  |%19
  <c c'>4 \)
  \stemDown aes'8_\p^2\( \stemNeutral
  \times 2/3 { beses16 [ ces^3 beses]}
  aes [ beses^1 fes'16.^4 ees32]
  |%20
  ees8\)^2 r16 <beses beses'> \f ( <aes aes' >8) ~ <aes aes'> [ \>
  <aes aes'>32\( <ges ges'>^4 <aes aes'> <ges ges'> ]
  <fes fes'>^5 <ees ees'>^4 <fes fes'> <ees  ees'> \!
  |%21
  <c c'>8\)\fz r8 r16
  \stemDown
  aes'16_\pp^2\( \stemNeutral
  \times 2/3 {beses16 ces beses}
  aes [ beses^3
  \acciaccatura beses8^1
  fes'16^.^5 \) r32 ees32^4] \(
  |%22
  ees4^3\) r8 ees4.-> ~
  |%23
  ees \( d
  |%24
  cis4 \) r8 des!4.^>^4 ~
  |%25
  \allowPageTurn
  \unset subdivideBeams
  \tempo\markup\italic"rit." 
  des8 c bes^>-\tweak #'text #(markup #:tied-lyric "2~3") ^0 ~
  bes16\< aes^.\( bes^. c^.^1 des^. ees^.\! \myPageBreak
  |%26
  \tempo\markup\italic"a tempo" 
  f4.^5 _\markup\italic"dolce" ees8 des8. f,16
  |%27
  \stemDown
  aes4.-\tweak #'text #(markup #:tied-lyric "2~1") ^0 ~
  \stemNeutral
  aes8\< des f
  |%28
  bes4.^5 \) \! ~ bes16 aes^4 ( e^2 ) f^3 ( c^) des^4 \(
  |%29
  a2._>_2\)\(
  |%30
  bes4^3\) r8 r16 c'^5(\> bes f^1 aes^3  ges)
  |%31
  f4 ( \> ees8^3 ) ~ ees16 \! d^2 \( \< ees e^1 f16.^2 ges32^3\)\!
  |%32
  \set subdivideBeams = ##t
  \acciaccatura ges8^1
  ges'8^5 \> ~
  \times 2/3 { ges16 [ \( ees^4 des^3 }
  \times 2/3 { beses^1 ges^4  ees^3 ] }
  c^2 \) \! r32
  \stemDown
  aes^1(^\markup\italic"leggierissimo"
  \stemNeutral
  \times 2/3 { ees'^2[ c'^5) a,^1]( }
  \times 2/3 { e'[ des') bes,!]( }
  \times 2/3 { f'[ d') b,]( }
  \times 2/3 { ges'[ ees'! ) c,]\( }
  |%33
  \unset subdivideBeams
  <g' e'>8.-\tweak #'text #(markup #:tied-lyric "2~1") ^0 ^5 \)
  <aes f'>16^2^5
  \times 2/3 {
    <aes f'>^1^4 [ ( <bes ges'!>^.) aes32\rest <aes f'> ]
  }
  <<
    \new Voice {
      \hideNotes % merged chord to draw second slur
      \override NoteColumn #'ignore-collision = ##t
      f4._\( | e8\)
      \revert NoteColumn #'ignore-collision
    } {
      \acciaccatura <aes f'>8*1/4^2^5 <f des'>4.^4\(
      |%34
      <e cis'>8\)(_\markup\italic"dolce"
    }
  >> <fis d'>^2^5) <cis a'>^1^4\(
  <e cis'>16^2^5[\< <d b'>^\prall^4 <cis! ais'>^1^3
  <d b'> <e cis'>^.^1^5\)\! r32 <b gis'>32^1^4 \(]
  |%35
  <d b'>8^.^2^5\>\)[ r16 <cis a'>^1^4\(]\!
  \times 2/3 { <cis a'>^.^1^5 <cis gis'>^. <cis fis>^. \) }
  <d e>8.^1^3 \(
  <ais e'>16^.^2^5
  <b e>^._1 <bis e>^._2 \)
  |%36
  <cis e>4^2^4 ( <d fis>16) <a cis>^1^2
  \acciaccatura <gis cis>8*1/4
  <cis e>16.^2^4 \< <b d>32 \(
  \times 2/3 {<b d>16^\prall^1^4 [ <ais cis>^2^3 <b d>]}
  \times 2/3 {<b d>^2^4 [ <cis e>^. \) r32 <gis b>^1^2 \( \!]}
  |%37
  <b d>8^2^4 \> <a cis> \! \) <cis a' >^2^5-> ~ <cis  a'> \<
  <cis a'> <cis  a'> \!
  |%38
  << {
    gis'8^4 a8. gis16  fis8[ ~
    \times 2/3 {fis16 <e_2> fis]} gis
  } \\ {
    cis,4._1 ~
    \override Fingering #'staff-padding = ##f
    \times 2/3 { cis16 [ <dis_2> <cis_1> } bis8._1 ]
  } >>
  r32 <bis dis>^1^3 \(
  |%39
  <dis fis>8^2^4 [ \> ~
  \times 2/3 {<dis fis>16 \! <cis e> \) r32 <e cis'>^1^4 ] }
  \times 2/3 {<e cis'>16^1^5 [ (<gis b> ) r32 <fis a>^3^5 ( ] }
  \times 2/3 {<e gis>16^2^4 [ ) \< <gis, gis'>^. <a gis'>^. ] }
  \times 2/3 {<ais^2 gis'^4>^. [ <b gis'>^. <bis gis'>^. ] }
  \times 4/5 {<cis^2 gis'^4>32^. [ <cisis gis'>^.
  <dis gis>^.^2^4 <e gis>^. <eis gis>^.^1^3 \! ] }
  |%40
  <fis gis>8^2^3
  \acciaccatura {\slurUp b} <fis a> \( <fis gis>
  <fis dis'>16^. [ \) r16
  { \slurUp <e gis>8^.^1^4 \( \< <dis gis>^.^2^4 \) \! ] }
  |%41
  << {
    gis4\>^2^5 ( fis8 ) \!
  } \\ {
    dis4.
  } >>
  \override Fingering #'staff-padding = ##f
  r8 \slurUp <c!_2 ees! ges^5>^.\<\( <ces_1 ees ges>^.\)\!
  \revert Fingering #'staff-padding
  |%42
  <bes! ees ges>^. \acciaccatura ges' ges'4\fz \> ~ ges16 \! \( d^3
  \times 2/3 { ees^4 [ a,^1 bes^3 ] }
  \times 2/3 { f^1 [ ges^4 d^2 \) ] }
  |%43
  <beses ees ges>8^. \acciaccatura ges' ges'4\fz \> ~ ges16 \( d^3
  \times 2/3 { ees [ aes,^1 beses^3 \! ] }
  \times 2/3 { f^1 [ ges^4 d^2 ] }
  |%44
  <a ees' ges>8 \) \acciaccatura ges' ges'4\fz \>
  <a,,! cis fis>8 \! \acciaccatura fis' fis'8\noBeam\fz \>
  <a,, c fis> \!
  |%45
  << {
    \acciaccatura fis'\f fis'^5[\(\dim
    \times 2/3 { ges!16 f^4 e ] }
  } \new Voice {
    \override NoteColumn #'ignore-collision = ##t
    \hideNotes fis8_~ fis8 \unHideNotes
    \revert NoteColumn #'ignore-collision
  } >>
  \times 2/3 { ges,!16^1 \> ees'^5 d^4 }
  \times 2/3 { des [ ees,^1 c'^5 ] }
  \times 2/3 { bes^4 [ a c, ] }
  \times 2/3 { aes'^.^4 [ g^. ges^. \) \! ] }
  |%46
  f4.-\tweak #'text #(markup #:tied-lyric "1~5") ^0_\markup\italic"dolce"\(
  ees8 des8. f,16
  |%47
  \stemDown
  aes4.-\tweak #'text #(markup #:tied-lyric "2~1") ^0 ~
  aes8 \< des^2 f^3
  |%48
  bes4.^5\fz ~ bes16 aes^4 e^2 f^3 c^1 des^3
  |%49
  ces2.^2\f-> \) \myPageBreak
  |%50
  \allowPageTurn
  \set subdivideBeams = ##t
  ces'4.^3 ~
  \times 2/3 { ces16 [ \( g^1 aes^4 }
  \times 2/3 { g^3 fis^2 g^1 }
  \times 2/3 { bes^4 aes f^1 \) ] }
  |%51
  <<
    {
      \stemDown ees4.^>^3 ( des^\trill ) |
      s_\markup\italic"con forza"
    }
    \new Voice \with {
      \override Accidental #'extra-spacing-height = #'(0.5 . -0.5)
      \override Accidental #'extra-spacing-width = #'(0.1 . 0)
      \override Fingering #'font-size = #-3
      \override Fingering #'avoid-slur = #'inside
      subdivideBeams = ##t
      baseMoment = #(ly:make-moment 1 16)
    }{
      \override Staff.AccidentalPlacement #'right-padding = #0
      \teeny\stemDown
      s4. s8
      ees16*4/18 ^3[\( des c! des ees des c des
      ees f^1 ges aes bes
      ces^1 des ees f^1 ges^2 ] |
      \ottava #1
      |%52
      \override TupletNumber #'font-size = #3
      \times 12/48 {
        bes16^4[
        aes^3 ces^5 g^1  aes^3 g^2ces^5 ges^1
        aeses^3 ges^2 ces f,^1  ges^3 f^2 ces' e,^1
        f^3 e^2 ces' ees,^1  fes^3 ees^2 ces' eeses,^1
        des^2 ees des c!^1  des ees f^1 ges
        aes bes ces!^1 des f^4 ees^3 des^2 ces^1
        aes^4 f des^2 ces^1
        \ottava #0
        aes^4 f des^2 ces^1]\!\)
        \revert Staff.AccidentalPlacement #'right-padding
      }
    }
  >>
  |%53
  bes8.^2 [ \( a32 bes ]
  ces [ \> bes \times 2/3 { des!^4 ces bes^2 ] }
  bes4^1 \! \)
  bes'8^> -\tweak #'text #(markup #:tied-lyric "5~4") ^0\(~
  |%54
  <ges bes>_\> <aes ces> <ees ges>^1^2 \! \)
  \acciaccatura <ees ges>8*1/2
  <ges bes>16^2^4 [ \< r32 <f aes> ]
  \times 2/3 { <f aes>16^\prall^2^4 [ \( <ees ges> <f aes> ] }
  <ges bes>^. \) [ r32 <d f>^1^3 \! \( ]
  |%55
  \override Fingering #'staff-padding = ##f
  <f aes>8^2^4 <ees ges>16 \) r32 <ges ees'>
  \times 2/3 { <ges ees'>16^2^5[ \( <f des'!>^1^4 <ees ces'>^2^5] }
  \times 2/3 { <d bes'>^. [ \< \) <bes bes'>^. \( <b bes'!>^. ] }
  \times 2/3 { <c bes'>^. [ <cis_2 bes'>^. <d_1 bes'>^. ] }
  \times 2/3 { <ees_2 bes'>^. [ <e bes'>^. <f bes>^. \! \) ] }
  |%56
  \revert Fingering #'staff-padding
  <ges bes>8^2^4 \( <aes ces>8. \> <ees ges>16^1^2 \! \)
  \acciaccatura <ees ges>16 <ges bes>^2^4 \( [ r32 <f aes> ]
  \times 2/3 { <f aes>16^\prall^2^4_>[ <ees ges> <f aes> ] }
  \times 2/3 { <f aes>^1^3 [ <ges bes>^. \) f32\rest <d f>^1^3 \( ] }
  |%57
  <f aes>8^2^4 [ <ees ges> \) ]
  <bes' ges'>_\fz->^2^5[^\markup\italic"con forza" ~
  <bes ges'>16 \(\cresc <aes f'>^.^1^4]
  \times 2/3 { <ges ees'>^.^2^5 <f des'>^.^1^4 <ees c'>^.^2^5 }
  \times 2/3 { <des bes'>^.^1^4 <c aes'>^.^1^3 <bes ges'>^.^2^5\)\! }
  |%58
  <aes f'>8^1^4_\<^\markup\italic"appassionato" \(
  <bes ges'> <aes f'>
  <ges ees'>\f^2^5 <f des'> <des f>^1^2 \)
  |%59
  \stemNeutral
  <des aes'>4.^1^4 <des ees bes'>_>
  |%60
  <<
    {
      <aes des ees^~>4.*1/2 \fz -\tweak #'text #(markup #:tied-lyric "3~1") ^0
      \once\override NoteColumn #'ignore-collision = ##t
      \hideNotes ees'4*3/4 \unHideNotes
      ees'''4.*1/2 ->^5~
      \hideNotes ees16 s8 \stemNeutral\unHideNotes
    }
    \new Voice {
      \teeny \override Fingering #'font-size = #-3
      \stemUp
      s8.
      ees,,,16*3/9\<\( aes^2 des^4 ees^1 aes^2
      \ottava #1
      des^4 ees^1 aes des^4\)\!
      s8.
      ees16*3/9\>\( des^4 aes^2 ees^1
      \ottava #0
      des^4 aes ees^1
      des^4 aes \) \!
    }
  >>
  |%61
  ees4._>\f
  << {
    <aes, aes'>\(^\marcato 
    |%62
    des4-1\)\fz
  } \\ {
    \once\override NoteColumn #'force-hshift = #-0.25
    <f-4>8. [ ees16 ] \times 2/3 { f ees des }
  } >>
  r8
  <des''-4>8^>_\markup\italic"dolciss."( g,4^1 )
  |%63
  <c-5>8-> ( ges!4^2 )
  <ces-4>8-> ( f,4 )
  |%64
  <bes-3>8-> ( e,4 )
  <beses'-5>8-> ( ees,4^2 )
  |%65
  << {
    aes2.-5 ~
    aes4
  } \\ {
    r4 aes,16^.^1 \( bes^.^2 c^.^1 des^.^2 d^.^1
    ees^. f^.^3 ges!^.^4
    |%66
    f4\)
  } >>
  r8
  \ottava #1
  \stemDown
  r des'^2 \grace bes' g,
  |%67
  r c^2 \grace a' ges,
  r ces^2 \grace aes' f,
  |%68
  r bes^2 \grace g' e,
  r beses'^2 \grace ges' ees,
  \stemNeutral
  \ottava #0
  << \new Voice { 
    \voiceOne
    |%69a
    <aes^4>2.^> ~
    |%70a
    aes4. \once\override DynamicLineSpanner #'staff-padding = #0.5
    f16-2\<\( ges g_4 aes_3 c_5 bes \!
    |%71a
    aes4. -\tweak #'text #(markup #:tied-lyric "3~5") ^0 \) ~
    aes16 \( g^4 ges^3 f^5 ees^4 f
    |%72a
    des4.^4 \) f16^5 \( ges^3 g^4 aes^3 c bes
    |%73a
    aes4. -\tweak #'text #(markup #:tied-lyric "3~5") ^0 \) ~
    aes16 \( g^4 ges^3 f^5 ees^4 f
    |%74a
    des2. \)
  } \new Voice {
    \voiceTwo
%   \override Fingering #'avoid-slur = #'outside 
    |%69b
    aes'4. ~ aes16 \( g^.-3 ges^.-2 f^.-1 ees^.-2 f^.-3
    |%70b
    des2. \)
    |%71b
    c16_1 ( des_2 d_1 ees_2 ges_4 f ees4 ) aes,8\(
    |%72b
    #(add-grace-property 'Voice 'Fingering 'font-size -6)
    beses16_1-\tweak #'padding #3 \> aes_2 g aes
    \stemUp \acciaccatura <c^3>8\stemDown bes16\! aes_1 aes4.\)
    |%73b
    c16_1 ( des_2 d_1 ees_2 ges_4 f ees4 ) aes,8
    |%74b
    f2.
  } >> \noBreak
  |%75
  s1*0_\markup\italic"dolciss. e dim."
  \times 6/7 {
    <aes f'>16^1^3 \( <bes ges'>^1^4 <c aes'>^2^5 <des bes'>^1^4
    <ees c'>^2^5 <f des'>^1^4 <ges ees'>^2^5
  }
  \ottava #1
  \times 6/7 {
    <aes f'>16^1^3 <bes ges'>^1^4 <c aes'>^2^5 <des bes'>^1^4
    <ees c'>^2^5 <f des'>^1^4 <ges ees'>^2^5
  }
  |%76
  <aes f'>4^2^5\>\)
  \ottava #0
  r8 <aes,, f'>4.^2^5(\!
  <f des'>2.\pp\fermata)
  \bar "|."
} % end treble

bass =  \relative c \context Voice = "bass" {
  \dynamicUp\stemDown
  |%1
  des,16\sustainOn\( f''^1 aes,^3 f'^1 des^2  f,^4\)
  des^5 \(f' aes, f' des  f,\)
  |%2
  des_\markup\italic"sempre legato" f' aes, f' des f,
  des f' aes, f' des f,
  |%3
  des f' aes, f' des f,  des f' aes, f' des f,
  |%4
  des f' aes, f' des f,  des f' aes, f' des f,
  \sustainOff
  |%5
  des,\sustainOn ges''^1 a,^4 ges' ees^2 ges,^5
  des^5 ges' a, ges' ees ges,
  \sustainOff
  |%6
  des\sustainOn ges' bes,^3 ges' ees ges,^4
  des ges' bes, ges' ees ges,
  \sustainOff
  |%7
  c,\sustainOn ges'' a,^4 ges' ees ges,^5
  \sustainOff
  bes,\sustainOn ges'' bes,^4 ges' ees ges,
  \sustainOff
  |%8
  beses,\sustainOn ges'' beses,^3 ges' des^2 ees,^5 \sustainOff
  aes,^5\sustainOn ges'' aes,^3 ges' c,^2 ees,^5 \sustainOff
  |%9
  des,\sustainOn e'' g,^3 e' bes^2 des,^5
  \sustainOff
  des,\sustainOn f'' aes,^3 f' des f,^4
  \sustainOff
  |%10
  bes,\sustainOn f'' bes,^3 f'^1 des^2 f,^5
  \sustainOff
  bes,\sustainOn f'' a,^4 f' ees f,^5
  \sustainOff
  |%11
  bes,\sustainOn f'' bes,^3 f' des f,^5
  \sustainOff
  f,\sustainOn f'' c^3 f ees a,^4
  \sustainOff
  |%12
  bes,\sustainOn f'' bes, f' des f,^5
  \sustainOff
  bes,\sustainOn f'' a,^4 f' ees f,^5
  \sustainOff
  |%13
  bes,\sustainOn f'' bes, f' des f,^5
  \sustainOff
  bes,\sustainOn aes''! bes,^3 aes'
  \endSpanners d,\cresc f,^5
  \sustainOff
  |%14
  ees,\sustainOn ges'' bes,^3 ges' ees ges,^4
  \sustainOff
  ees\sustainOn aes' bes,^3 aes' d, f,^5
  \sustainOff
  |%15
  ees\sustainOn ges' bes,^3 ges' ees ges,^5
  \sustainOff
  bes,\sustainOn aes'' bes,^4 aes' d, f,^5
  \sustainOff
  |%16
  ees,\sustainOn ges'' bes,^3 ges' ees ges,^4
  \sustainOff
  ees\sustainOn aes' bes,^4 aes' d, f,^5
  \sustainOff
  |%17
  ees\sustainOn ges' bes,^3 ges' ees ges,^5
  \sustainOff
  beses,\sustainOn \endSpanners des'\cresc ees,^4 des' ges,^2 ees^3
  \sustainOff
  |%18
  aes,\sustainOn c' ees,^3 c' ges^2 ees
  \sustainOff
  <<
    {
      \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
      beses4.^\marcato
    }
    \\
    {
      beses16\sustainOn beses' ees, beses' ges ees
      \sustainOff
    }
  >>
  |%19
  aes,16\sustainOn aes' ees aes ges ees^4_(
  \sustainOff
  des\sustainOn ) fes' ges,^3 fes' beses,^2 des,^5_\(
  \sustainOff
  |%20
  c^5\sustainOn \) ees' ges,^3 ees' aes,^2 ges
  \sustainOff
  << {
    beses,4.
  } \\ {
    beses16\sustainOn des' ees,^3 des' ges,^2 ees^3 \sustainOff
  } >>
  |%21
  aes,16\sustainOn aes' ees^3 aes ges_( aes,
  \sustainOff
  des^4) \sustainOn fes' ges,^3 fes' beses,^2 des,^5_\(
  \sustainOff
  |%22
  c^5^\markup\italic"sempre legato"\sustainOn\)\(
  ees' ges,^3 ees' beses^2 ges\sustainOff\)
  ces,16\sustainOn\( ees' ges, ees' beses ges \sustainOff\)
  |%23
  << {
    % avoid a collision with the lower voice
    \override Stem #'details #'beamed-minimum-free-lengths = #'(5.5)
    s16*5
    f8.[ e8]\!
    \revert Stem #'beamed-minimum-free-lengths
  } \\ {
    ces16\sustainOn ees' f,^3 ees' aes, f^3\sustainOff
    b,\sustainOn d' e,^4 d' gis,^2 e^3\sustainOff
  } >>
  |%24
  a,\sustainOn cis' e,^3 cis' a e
  \sustainOff
  beses\sustainOn des'! ees,!^4 des' ges,!^2 ees^3
  \sustainOff
  |%25
  << {
    aes,!4.
  } \\ {
    aes!16\sustainOn c'! ees,^3 c' ges des^4
    \sustainOff
  } >>
  aes16\sustainOn aes' c,^4 aes' ges aes,
  \sustainOff
  |%26
  des, \sustainOn f'' aes,^3 f' des^2 f,^4
  des f' aes,^3 f' des^2 f,^4
  |%27
  des f' aes, f' des f,  des f' aes, f' des  f,
  |%28
  des f' aes,^3 f' des^2 f,^4  des f' aes, f' des f,
  \sustainOff
  |%29
  des,16\sustainOn ges'' a,^3 ges' des ges,^4\sustainOff
  des\sustainOn ges' a, ges' d^2 ges,^4\sustainOff %%%%% d or des??
  |%30
  des16\sustainOn ges' bes,^3 ges' ees16 ges,^4\sustainOff
  des\sustainOn ges' bes, ges' ees ges,\sustainOff
  |%31
  c,\sustainOn ges'' a,^4 ges' ees ges,^5
  \sustainOff
  bes,\sustainOn ges'' bes,^3 ges' ees ges,^5
  \sustainOff
  |%32
  beses,->\sustainOn ges'' beses,^3 ges' des ees,^5
  \sustainOff
  aes,\sustainOn ges'' aes,^3 ges' c, ees,^5
  \sustainOff
  |%33
  des,\sustainOn f'' aes,^4 f' des f,^5
  des\> f' aes,^3 f' des aes \! \sustainOff
  |%34
  cis,\sustainOn e' e,^4 e' a, e
  \sustainOff
  d\sustainOn e' e,^4 e' gis,^2 e
  \sustainOff
  |%35
  cis\sustainOn e' e,^4 e' a, e
  \sustainOff
  gis,\sustainOn e'' e,^5 e' d e,
  \sustainOff
  |%36
  a,\sustainOn e'' e,^5 e' cis e,
  \sustainOff
  e,\sustainOn e'' gis,^3 e' d e,
  \sustainOff
  |%37
  a,\sustainOn e'' a,^3 e' cis e,^5
  \sustainOff
  dis,\sustainOn fis'' a,^3 fis' cis dis,^5
  \sustainOff
  |%38
  gis,\sustainOn \endSpanners fis''\cresc gis,^3 fis' cis dis,^5
  \sustainOff
  gis,\sustainOn fis'' gis,^3 fis' bis,^2 dis,^5
  \sustainOff
  |%39
  gis,\sustainOn e'' gis,^3 e' cis e,^5
  gis,,_> e''' gis, e' cis e,
  \sustainOff
  |%40
  << {
    s2.^\cresc
    s2.
    s2.
    s2.
    c!4.  cis4 d4\!
    ees!4
  } \\ {
    gis,16\sustainOn dis'' fis,^3 dis' bis dis,^5
    gis,,-> dis''' fis, dis' bis dis,
    \sustainOff
    |%41
    a->\sustainOn dis' fis,^3 dis' bis dis,^5
    \sustainOff
    a,->\sustainOn ees'''! ges,!^3 ees' ces ees,!^5
    \sustainOff
    |%42
    bes!->\sustainOn ees' ges,^3 ees' bes ees,^4
    \sustainOff
    bes,->\sustainOn ees'' ges,^3 ees' bes ees,^4
    \sustainOff
    |%43
    ces->\sustainOn ees' ges,^3 ees' beses ees,^4
    \sustainOff
    ces,->\sustainOn ees'' ges,^3 ees' beses ees,^4
    \sustainOff
    |%44
    c!16\sustainOn ees' ges,^3 ees' a, ees^4
    \sustainOff
    \phrasingSlurUp
    cis16\sustainOn [\( cis' fis,^3 a!\) ]
    \sustainOff
    d,16\sustainOn [\( c'
    |%45
    fis,^3 a\) ]
    \sustainOff
    ees!16\sustainOn\( c' ges! aes\)
    aes, \( ges'' aes,^3 ges' c, ees,^5 \)
    \sustainOff
  } >>
  |%46
  des, \sustainOn f'' aes,^3 f' des f,^4
  des f' aes, f' des f,
  |%47
  des f' aes, f' des f,  des f' aes, f' des  f,
  |%48
  des f' aes, f' des f,  des f' aes, f' des f,
  \sustainOff
  |%49
  des,\sustainOn f'' \! aes, f' des f,  des f' aes, f' des f,
  |%50
  des f' aes, f' des f,  des f' aes, f' des f,\sustainOff
  |%51
  des,\sustainOn f'' aes, f' ces f,^4  des f' aes, f' ces f,
  |%52
  des f'\< aes, f' ces f,^4
  des f' aes, f'\> ces f,\sustainOff
  |%53
  d\sustainOn\! f' aes, f' bes,\sustainOff f^4
  d\sustainOn f' aes, f' bes,\sustainOff f
  |%54
  ees\sustainOn^\markup{ \italic "con anima" }
  ges' bes,^3 ges' ees\sustainOff ges,^4
  ees\sustainOn aes' bes,^3 aes' d, f,^5\sustainOff
  |%55
  ees\sustainOn ges' bes,^3 ges' ees ges,^5\sustainOff
  bes,\sustainOn aes'' bes,^3 aes' d, f,^5\sustainOff
  |%56
  ees,\sustainOn ges'' bes,^3 ges' ees ges,^4\sustainOff
  ees\sustainOn aes' bes,^3 aes' d, f,^5\sustainOff
  |%57
  ees\sustainOn ges' bes,^3 ges' ees ges,^4\sustainOff
  ges,\sustainOn ees'' ges,^3 ees' bes ees,^4\sustainOff
  |%58
  aes,\sustainOn des' f,^3 des' aes aes,\sustainOff
  bes\sustainOn des' f,^3 des' bes bes,\sustainOff
  |%59
  f\sustainOn aes' des,^2 aes' des, f,\sustainOff
  ges\sustainOn bes' des,^3 bes' ees,^2 ges,\sustainOff
  |%60
  aes,_>\sustainOn \( des'' ees,^3 des' aes ees \)
  aes, \( des' ees, des' aes ees \)
  |%61
  aes,,_> \( des'' ees, des' ges, ees \) \sustainOff
  aes,\sustainOn \( c' ees,_3 c' ges aes,_5 \) \sustainOff
  |%62
  des,\sustainOn \( f''\p aes,^3 f' des f,^4\sustainOff \)
  des\sustainOn \(
  fes' bes,^3 fes' des g,^4\sustainOff \)
  |%63
  << \context Voice {
    des16\sustainOn \( ees' a,^3 ees' c ges!^4 \)
    \sustainOff des16\sustainOn \( d' 
    \once\override DynamicTextSpanner #'whiteout = ##t 
    aes^3\dim d\! ces f,^4 \)
    \sustainOff
    |%64
    des!16\sustainOn \( des'! g,^3 des' bes e,^4 \)
    \sustainOff
    des16\sustainOn \( des' ges,^3 des' beses ees,^4 \)
    \sustainOff
    |%65
    des16\sustainOn(\p c' ges^3 c aes ees^4 )
    des16 ( c' ges c aes ees ) \sustainOff
    |%66
    des,16\sustainOn f'' aes,^3 f' des f,^4\sustainOff
    des16\sustainOn [ fes' bes, fes' des g,^4 ] \sustainOff
    |%67
    des16\sustainOn [ ees' a, ees' c ges!^4 ] \sustainOff
    des16\sustainOn [ d' aes d ces f,^4 ] \sustainOff
  } \new Voice {
    \stemUp
    des4.  des4.
    des!4. des4.
    des4.  des4.
    s2 bes'4-3
    s8 a4-3 s8 aes4-3
  } >>
  |%68
  des,16\sustainOn des' g,^3 des' bes e,^4\sustainOff
  des\sustainOn des' ges,^3 des' beses ees,^4\sustainOff
  |%69
  des\sustainOn c' ges \endSpanners c\dim aes ees
  des c' ges c aes ees\sustainOff
  |%70
  des,\sustainOn des'' des,^4 des' f, aes,^5
  des,^\markup\italic"calando" des'' des, des' f, aes,\sustainOff
  |%71
  des,\sustainOn c'' ees,^3 c' ges aes,^5
  des, c'' ees, c' ges aes,\sustainOff
  |%72
  des,\sustainOn des'' des,^4 des' f, aes,^5
  des, des'' des, des' f, aes,\sustainOff
  |%73
  des,\smorz\sustainOn c'' ees,^3 c' ges aes,^5
  des, c'' ees, c' ges aes,\sustainOff
  |%74
  des,\sustainOn des'' des,^4 des' f, aes,^5
  des, des'' des, des' f, aes,\sustainOff\!
  |%75
  des, \sustainOn
  des'' des, des' f, aes,
  des, des'' des, des' f, aes,
  |%76
  \stemNeutral
  des,4 r8\sustainOff <aes' aes'>4.~
  |%77
  \once\override Script #'staff-padding = #1.5
  <des aes'>2.^\fermata
} % end bass

\markup \footnote "" "* Often performed at 30–40 beats per minute."
\score {
  \new PianoStaff \with {
    \override TextScript #'layer = #2
    \override Hairpin #'layer = #0
    \override PhrasingSlur #'layer = #0
    \override Slur #'layer = #0
    \override DynamicLineSpanner #'staff-padding = #1.5
    \override DynamicText #'whiteout = ##t
    \override Fingering #'whiteout = ##t
    \override Fingering #'layer = #2
    \override DynamicLineSpanner #'whiteout = ##t
    \override DynamicText #'whiteout = ##t
    \override TextScript #'whiteout = ##t
    \override StaffGrouper #'staff-staff-spacing #'padding = #0.5
    \override TupletBracket #'bracket-visibility = #'if-no-beam
    \override NoteCollision #'merge-differently-dotted = ##t
    % bug 1235
    \override Stem #'extra-spacing-height = #'(-1 . 1)
    % bug 1779
    \override BarLine #'space-alist #'next-note = #'(fixed-space . 1.0)
    % bug 2051
    \override PhrasingSlur #'Y-extent = #'(0 . 0)
    %bug 163
    \override PhrasingSlur #'height-limit = #4
    \override PhrasingSlur #'ratio = #0.2
  } <<
    \override Score.SpacingSpanner #'shortest-duration-space = #1.9
    \new Staff \with { fingeringOrientations = #'(left) }{
      #(add-grace-property 'Voice 'Fingering 'font-size -6)
      \time 6/8
      \tempo "Lento sostenuto *" 4. = 50
      \clef treble
      \key des \major
      #(set-accidental-style 'piano 'PianoStaff)
      \treble
    }
    \new Staff \with { 
      pedalSustainStyle = #'mixed
      \override Fingering #'avoid-slur = #'inside 
    } {
      \clef bass
      \key des \major
      \bass
    }
  >>
  \layout {}
}
\score {
  << \time 6/8 \key des \major \treble \bass >>
  \midi {
    \context {
      \Voice
      \remove "Dynamic_performer"
    } \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 105 8) % 4. = 35
    }
  }
}
