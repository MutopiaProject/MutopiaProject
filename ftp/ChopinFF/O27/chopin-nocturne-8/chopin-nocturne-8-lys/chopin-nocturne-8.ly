#(ly:set-option 'old-relative)
#(ly:set-option 'old-relative)

% Chopin's nocturne #8 in Db major, Op. 27, No. 2
% typeset by P Scott Horne, 20 Oct 2004

\version "2.2.0"

\header {
 mutopiatitle = "Nocturne 8 in Db Major"
 mutopiacomposer = "Frédéric François Chopin (1810-1849)"
 mutopiapoet = "F F Chopin (1810-1849)"
 mutopiaopus = "O 27"
 mutopiainstrument = "Piano"
 date = "1835"
 source = "Debussy, 1915"
 style = "Romantic"
 copyright = "MutopiaBSD"
 maintainer = "Scott Horne"
 maintainerEmail = "shorne@hornetranslations.com"
 maintainerWeb = "www.hornetranslations.com"
 lastupdated = "2004/Oct/20"
 title = "Nocturne 8 in D$\\flat$ Major"
 composer = "Fr\\\'ed\\\'eric Fran\\c cois Chopin (1810--1849)"
 opus = "Op. 27, No. 2"

 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
 footer = "Mutopia-2004/10/20-486"
}

%%%% KNOWN DEFECTS
%
% 1. MIDI output: Some acciaccature and polyrhythms ruin the rhythm
%     in the MIDI file.  This is a defect in LilyPond.  To work around
%     this problem, I have indicated with %%%MIDI%%% the changes that
%     need to be made to get reasonably good MIDI output.  Note
%     that these changes will alter the typeset output.
% 2. A few slurs and ties are ugly.  See, for example, the two ties
%     in m. 60 and the slurs leading from the acciaccature
%     in mm. 66-68.
% 3. The subdivided beaming of the original (_e.g._, a single beam
%     rather than two to connect the two sets of triplets at the end
%     of m. 11) is not reproduced here.
% 4. The clef and key signature in the top staff at the beginning
%     of m. 52 are printed in the smaller type used in that measure.
%     Various attempted hacks, such as a zero-length skip, have not
%     succeeded in restoring the clef and key signature to full size.
% 5. The original shows changes of fingering on a single note with
%     a curve over the two numbers.  This notation has been changed
%     here to two numbers separated by a space, the whole centred
%     over the note's head.
% 6. There should be a single slur, not two, connecting the fast notes
%     in mm. 51-52.  LilyPond complains of missing  \)  and  \(  when
%     I write a single slur, however, so I had little choice but to break
%     the slur into two.
%
% Please contact me through Mutopia if you have any suggestions
% on these or other matters.
%
%%%%


%% Set notes in small type
smallNotesBegin =
{
  \set Staff.fontSize = #-1
  \override Stem  #'length = #5.5
  \override Beam  #'thickness = #0.384
  \override Beam  #'space-function =
    #(lambda (beam mult) (* 0.8 (Beam::space_function beam mult)))
}

smallNotesEnd =
{
  \unset Staff.fontSize
  \revert Stem  #'length
  \revert Beam  #'thickness
  \revert Beam  #'space-function
}

%% Disable the tuplet number.
%% Used with unmeasured beamed notes: add a skip if necessary,
%% then set a tuplet against the other staff.
noTupletNumber =
{
  \once\override TupletBracket #'number-visibility = ##f
}

%% Set and unset superior ottava bracket.
ottavaBegin =
{
  #(set-octavation 1)
}

ottavaEnd =
{
  #(set-octavation 0)
}



treble = \notes \relative c' \context Voice = treble
{
    \set Staff.extraNatural = ##f
%1
  s1*0^\markup{ \bold "Lento sostenuto ("
    \note-by-number #2 #1 #1 \bold " = 50)" }
  R2.
%2
   %% the MIDI file needs a dynamic,
   %% so I've added an invisible piano sign
   \once\override DynamicText #'transparent = ##t
  f'4.-5_\markup{ \italic "dolce" }\p \( ees8-4 des8. f,16
%3
    \override Stem #'direction = #DOWN
  %% changed notation of fingering slightly
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 0)
  aes4.^\markup{ \fontsize #-5 \number "2 1" } \)
  ~ aes8 \<\( des-2 f-3
    \revert Stem #'direction
%4
  bes4.-5\! ~ bes16 aes-4 e-2 f-3 c-1 des-4 \)
%5
    \override Stem #'direction = #UP
   a2._2 ( \>
%6
   bes4._3 \! )
    \revert Stem #'direction
   r16 c'-5 \> bes f-1 aes-3  ges\!
%7
  f4
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 0)
  ees8^\markup{ \fontsize #-5 \number "3 2" } ~
    \once \override Score.TextScript  #'script-priority = #-100
    \once \override Score.TextScript #'extra-offset = #'(2.3 . 0)
    \once \override Score.Script #'extra-offset = #'(2 . 0)
  ees^\markup { \tiny \natural }^\turn \<
  f  ges\!
%8
  <<
\slurUp
    \acciaccatura ges8^1
\slurBoth
     \once \override Stem #'direction = #DOWN
    ges'4.\fz
    \\
    {s4
       \override Stem #'direction = #UP
       \smallNotesBegin
       \noTupletNumber
     \times 1/5 {ees8-4 \>(des-3 beses-1 ges-4 ees-3\!)}
       \smallNotesEnd
       \revert Stem #'direction
    } >>
  c,16-.-2 \<des-. d-.-1 ees-.-2 f-.  ges-.-4 \!
%9
  g4^1\>\( ~ g32 aes
    \override Fingering #'extra-offset = #'(0 . 1)
  bes-4 aes-3
    \revert Fingering #'extra-offset
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 1)
  f4.^\markup { \fontsize #-5 \number "1 4" } \) \! ~
%10
    \once \override TextScript #'padding = #3.5
  <des f>8_\p^\markup { \italic "espressivo" } \> \(
    \override Fingering #'extra-offset = #'(0 . -2)
  <ees ges!>8.^3^5
    \revert Fingering #'extra-offset
    \override Fingering #'extra-offset = #'(0 . 0.5)
  <bes des>16^1^2 \! <c ees>8^1^4 \>
    \revert Fingering #'extra-offset
 <des f>^3^5 <a c>^1^2 \!
%11
  <c ees>^>^1^4 <bes des>16^2^3 \) r32
  <des bes' >32^1^4
    \override Hairpin #'extra-offset = #'(0 . -1)
  \times 2/3 {<des bes'>16^2^5 [ ( \> <c aes'> <bes ges'>^1^3] ) \!}
    \revert Hairpin #'extra-offset
  <<
   { f'4^2^5 }
   \\
    %% fix beaming
   { bes,8
%{
\set subdivideBeams = ##t
\set Score.beatLength = #(ly:make-moment 1 8)
%}
    \override Hairpin #'extra-offset = #'(0 . -0.7)
      \times 2/3 {a16^1 [ \< bes^2 b^2 }
      \times 2/3 {< c f>^.^1^5 <des f>^.^2^5
%{
\unset subdivideBeams
\unset Score.beatLength
%}
    \override Fingering #'extra-offset = #'(1 . 0)
  <ees f>^.^3^5 \! ]
  } } >>
    \revert Fingering #'extra-offset
    \revert Hairpin #'extra-offset
%12
  <des f>8^2^4 \( \> <ees ges>8.^3^5
    \override Fingering #'extra-offset = #'(0 . 0.5)
  <bes des>16^1^2 \!  
    \revert Fingering #'extra-offset
  %% BUG IN LILYPOND 1.6.8: The *first* acciaccatura below
  %% throws off the timing in MIDI
%%%MIDI%%% Comment out the following line to produce a MIDI file
  \acciaccatura { <bes des>8 }
  <des f>16.^2^4 <c ees>32 \)
  \times 2/3 {
    \acciaccatura f8^5 <c ees>16^2^4 \( <bes des> <c ees> }
  <des f>^. \) [ r32 <a c>32^1^3 \( ]
%13
 <c ees>8^>^2^4 <bes des>16 \) r
    \override Staff.HorizontalBracket #'padding = #-3.8
 << {
  bes'8^>^3[ ~ bes16 ces^4 ]
  bes16*1/2^3 [
    \once \override Fingering #'extra-offset = #'(0 . -3.2)
  a16*1/2^2-\startGroup s32-\stopGroup bes16*1/2 ]
    \once \override Fingering #'extra-offset = #'(0 . -1.7)
  f'16^5 [ s32 bes, ]
 } \\ {
    \override Hairpin #'extra-offset = #'(0 . -1)
  des,8-(_1 [ \< d16-)_1 aes'_2 ]
    \revert Hairpin #'extra-offset
    \override Fingering #'extra-offset = #'(0 . -1)
  d,16*1/2^1 [ s32
    \revert Fingering #'extra-offset
    \override Fingering #'extra-offset = #'(0 . -1.8)
  aes'!16*1/2^4
    \revert Fingering #'extra-offset
  d,16*1/2 ] \!
    \once \override Fingering #'extra-offset = #'(0 . 2)
  aes'16^2 [ r32 aes ]
 } >>
   \revert Staff.HorizontalBracket #'padding
%14
  <ges bes>8^2^4 ( <aes ces> <ees ges>^1^2 )
  \times 2/3 {<ges bes>16^3^5 ( [ <f aes> <ges bes>}
  \times 2/3 {<f aes> <ees ges> <f aes>}
  <ges bes>16) r32 <d f>^1^3 \( ]
%15
  <f aes>8^2^4 \> <ees ges>16 \! \) r32 <ges ees'>32
  \times 2/3 {<ges ees'>16^2^5 ( [ \> <f des'>^1^4 <ees  ces'>^2^5
    \! ] ) }
  \times 2/3 {<d  bes'>^. [ \< <bes bes'>^. <b bes'>^. ] }
    %% move fingerings
    \override Fingering #'extra-offset = #'(0 . 2)
  \times 2/3 {<c bes'>[^. <cis_2 bes'>^. <d_1 bes'>^.]}
    \revert Fingering #'extra-offset
    \override Fingering #'extra-offset = #'(0 . 3)
  \times 2/3 {<ees_2 bes'>[^. <e_1 bes'>^. <f  bes>^. ] \!}
    \revert Fingering #'extra-offset
%16
    \override Hairpin #'extra-offset = #'(0 . -1)
  %% BUG IN LILYPOND: The timing of the MIDI output is wrong in this measure
  \times 4/5 {
    <ges bes>^2^4 \< \( <aes ces> <ges bes> <f aes> <ges  bes> \!}
  <aes ces>^. [ \) r32 <ees ges>^1^2 \( ]
%%%MIDI%%% Comment out the following line to produce a MIDI file
  \acciaccatura <ees ges>8
  <ges bes>16^.^2^4 ) \) [ r32 <f aes>32 \( ]
  \times 2/3 {
    <f aes>16^\prall^2^4 [ ( <ees ges>^. ) \) r32 <f aes> ] \( }
  \times 2/3 {<f aes>16^1^3 \< ( [ <ges  bes>^. ) \) r32
    <d f>32^1^3 \( ] }
    \revert Hairpin #'extra-offset
%17
  \acciaccatura { <d f>8 } 
  <f aes>^. \) \! r <ees ges>^2^4 ~
  {\dynamicDown\cresc<ees ges> \( \endcresc}
    \override Fingering #'extra-offset = #'(0 . 2)
   <d!_1 ges>^. <des_2 ges>^. \endcresc
    \revert Fingering #'extra-offset
%18
  <c ges'>8._\f \)
  <beses beses'>16^\markup { \italic "con forza" }
  <aes aes'>8^\marcato ~
  <aes aes'> \( <ges ges'> <des des'>
%19
  <c c'>4 \)
    \once \override Stem #'direction = #DOWN
  aes'8_\p^2(
  \times 2/3 { beses16 [ ces^3 beses]}
   aes [ beses^1 fes'16.^4 ees32]
%20
   ees8)^2 r16 <beses beses'> \f ( <aes aes' >8) ~ <aes aes'> [ \>
  <aes aes'>32(<ges ges'>^4<aes aes'><ges ges'> ]
  <fes fes'>^5<ees ees'>^4<fes fes'><ees  ees'> \!
%21
  <c c'>8) r8 r16
    \once \override Stem #'direction = #DOWN
  aes'16_\pp^2 \(
  \times 2/3 {beses16 ces beses}
   aes [ beses^3
%%%MIDI%%% Comment out the following line to produce a MIDI file
   \acciaccatura beses8^1
   fes'16^.^5 \) r32 ees32^4] ~ %% tie seems wrong: not in Paderewski
%22
   ees4^3 r8 ees4. ~
%23
  ees ( d
%24
  cis4 ) r8 des!4.^>^4 ~
%25
  des8^\markup { \bold "Rit." } c
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 0)
  bes^>^\markup{ \fontsize #-5 \number "2 3" } ~
  bes16 \< aes^. \( bes^. c^.^1 des^. ees^. \!
%26
   f4.^5^\markup { \bold "a Tempo" } ees8 des8. f,16
%27
    \override Stem #'direction = #DOWN
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 0)
   aes4.^\markup{ \fontsize #-5 \number "2 1" } ~
    \revert Stem #'direction
   aes8 \< des f
%28
   bes4.^5 \) \! ~ bes16 aes^4 ( e^2 ) f^3 ( c^) des^4 (
%29
   a2._>_2 ) (
%30
    \override Stem #'direction = #UP
  bes4^3 ) r8 r16 
    \revert Stem #'direction
  c'^5 ( \> bes f^1 aes^3  ges ) \!
%31
  f4 ( \> ees8^3 ) ~ ees16 \! d^2 \( \< ees e^1 f16.^2 ges32^3 \! \)
%32
    \override Hairpin #'extra-offset = #'(0 . -0.6)
  \acciaccatura ges8^1
  ges'8^5 \> ~
  %% fix beaming
  \times 2/3 { ges16 [ \( ees^4 des^3 }
  \times 2/3 { beses^1 ges^4  ees^3 ] }
  c^2 \) \! r32
    \revert Hairpin #'extra-offset
    \once \override TextScript #'padding = #4
    \override Stem #'direction = #DOWN
  aes^1^\markup { \italic "leggierissimo" } ( 
    \revert Stem #'direction
  \times 2/3 { ees'^2 [ c'^5 ) a,^1 ( ] }
  \times 2/3 { e' [ des' ) bes,! ( ]}
  \times 2/3 { f' [ d' ) b, ( ]}
  \times 2/3 { ges' [ ees'! ) c, ( ]}
%33a
  %% fingering is inverted on first chord
    \once \override Score.TextScript  #'script-priority = #-100
  <g' e'>8.^\markup{ \fontsize #-5 \number "2 1" }^5 )
  <aes f'>16^2^5
  \times 2/3 {
    <aes f'>^1^4 [ ( <bes ges'!>^. ) r32 <aes f'> ] }
  %% hideous hack just to get the two slurs coming off the
  %% dotted quarter note in measure 33
  \partcombine
  \relative a''
     {
       \stemDown
       \slurUp \grace s8 <f des'>4.^4 (
%34a
       <e cis'>8 ) [ ( <fis d'>^2^5 ) <cis a'>^1^4 ] \(
       <e cis'>16^2^5 [ <d b'>^\prall^4 <cis! ais'>^1^3
       <d b'> <e cis'>^.^1^5 \) s32 <b gis'>32^1^4 ( ]
%35a
       <d b'>8^.^2^5 ) [ s16 <cis a'>^1^4 \( ]
       \times 2/3 { <cis a'>^.^1^5 <cis gis'>^. <cis fis>^. \) }
     }
     \relative a''
     {
%33b
       \slurDown \acciaccatura { <aes f'>8^2^5 } f4. (
%34b
       e8_\markup{ \italic dolce } ) [ fis cis ] 
       e16 \< [ d cis d e \! r32 b ]
%35b
       d8 \> [ r16 cis16 ] \!
       \times 2/3 {cis cis cis}
     }
    \override Fingering #'extra-offset = #'(1 . 0)
  <d, e>8.^1^3 \(
    \revert Fingering #'extra-offset
   <ais e'>16^.^2^5
    \override Fingering #'extra-offset = #'(0 . 3.6)
  <b e>^._1 <bis e>^._2 \)
    \revert Fingering #'extra-offset
%36
  <cis e>4^2^4 ( <d fis>16) <a cis>^1^2
%%%MIDI%%% Comment out the following line to produce a MIDI file
  \acciaccatura <gis cis>8
  <cis e>16.^2^4 \< <b d>32 \(
  \times 2/3 {<b d>16^\prall^1^4 [ <ais cis>^2^3 <b d>]}
  \times 2/3 {<b d>^2^4 [ <cis e>^. \) r32 <gis b>^1^2 ( \!]}
%37
  <b d>8^2^4 \> <a cis> \! ) <cis a' >^2^5 ~ <cis  a'> \<
  <cis a'> <cis  a'> \!
%38
 <<
   {gis'8^4 a8. gis16  fis8[ ~ \times 2/3 {fis16 e_2 fis]} gis}
  \\
   {cis,4._1 ~ \times 2/3 { cis16 [ dis^2 cis^1 } bis8._1 ] }
 >>
 r32 <bis, dis>^1^3 \(
%39
  <dis fis>8^2^4 [ \> ~
  \times 2/3 {<dis fis>16 \! <cis e> \) r32 <e cis'>^1^4 ] }
  \times 2/3 {<e cis'>16^1^5 [ (<gis b> ) r32 <fis a>^3^5 ( ] }
  \times 2/3 {<e gis>16^2^4 [ ) \< <gis, gis'>^. <a gis'>^. ] }
    \override Fingering #'extra-offset = #'(0 . 1.8)
  \times 2/3 {<ais_2 gis'>^. [ <b gis'>^. <bis gis'>^. ] }
    \revert Fingering #'extra-offset
    \override Fingering #'extra-offset = #'(0 . 2.7)
  \times 4/5 {<cis_2 gis'>32^. [ <cisis gis'>^.
    \revert Fingering #'extra-offset
    <dis gis>^.^2^4 <e gis>^. <eis gis>^.^1^3 \! ] }
%40
    \override Fingering #'extra-offset = #'(1 . 0)
  <fis gis>8^2^3
    \revert Fingering #'extra-offset
  \acciaccatura {\slurUp b} <fis a> \( <fis gis>
  <fis dis'>16^. [ \) r16
  { \slurUp <e gis>8^.^1^4 \( \< <dis gis>^.^2^4 \) \! ] }
%41
  <<
    { gis4^\>^2^5 ( fis8 ) \! }
  \\
    { dis4. }
  >>
  r8 { \slurUp
    \override Fingering #'extra-offset = #'(0 . 2.3)
  <c!_2 ees! ges>^.^\markup{ \fontsize #-5 \number 5 } \< \(
    \revert Fingering #'extra-offset
    \override Fingering #'extra-offset = #'(0 . 2.3)
  <ces_1 ees ges>^. \) \! }
    \revert Fingering #'extra-offset
%42
  <bes! ees ges>^. \acciaccatura ges' ges'4\fz \> ~ ges16 \! \( d^3
  \times 2/3 { ees^4 [ a,^1 bes^3 ] }
  \times 2/3 { f^1 [ ges^4 d^2 \) ] }
%43
  <beses ees ges>8^. \acciaccatura ges' ges'4\fz \> ~ ges16 \( d^3
  \times 2/3 { ees [ aes,^1 beses^3 \! ] }
  \times 2/3 { f^1 [ ges^4 d^2 ] }
%44
  <a ees' ges>8 \) \acciaccatura ges' ges'4\fz \>
  <a,,! cis fis>8 \! \acciaccatura fis' fis'8\noBeam\fz \>
  <a,, c fis> \!
%45
  \acciaccatura fis'\f fis'^5_\markup{ \italic dim. } [ (
  \times 2/3 { ges!16 ) \( f^4 e ] }
  \times 2/3 { ges,!^1 \> ees'^5 d^4 }
  \times 2/3 { des [ ees,^1 c'^5 ] }
  \times 2/3 { bes^4 [ a c, ] }
  \times 2/3 { aes'^.^4 [ g^. ges^. \) \! ] }
%46
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 2)
  f4.^\markup{ \fontsize #-5 \number "1 5" } \( ees8 des8. f,16
%47
    \once \override Stem #'direction = #DOWN
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 0)
  aes4.^\markup{ \fontsize #-5 \number "2 1" } ~
  aes8 \< des^2 f^3 \!
%48
  bes4.^5\fz ~ bes16 aes^4 e^2 f^3 c^1 des^3
%49
  ces2.^2\f \)
%50
  ces'4.^3 ~
  \times 2/3 { ces16 [ \( g^1 aes^4 }
  \times 2/3 { g^3 fis^2 g^1 }
  \times 2/3 { bes^4 aes f^1 \) ] }
%51
  <<
    { \stemDown ees4.^>^3 ( des^\trill ) }
    \\
      %% The slur below should end at the last note of the following
      %% measure, but LilyPond complains of missing  \)  and  \(
      %% when I do that, so I have had to use two slurs instead.
    { s16*7 \stemDown
         \noTupletNumber
%%%MIDI%%% To produce a MIDI file, replace the following three lines
      \times 5/18 {
          \smallNotesBegin
        ees16^3 [ \( des c! 
%%%MIDI%%% with these:
%{ %%%
      s16 \times 4/16 {
          \smallNotesBegin
        c!16 [ \(
%} %%%
        des ees des c des ees f^1 ges aes bes ces des
          \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1.5)
          \ottavaBegin
        ees f^1 ges^2 ] \) }
          %% have to unset these now so that the clef and the
          %% key signature will be the right size if the line breaks
          %% after this measure
          %% But clef and key signature still come out too small!
          \smallNotesEnd
\ottavaEnd
    }
  >>
%%  s1*0 %% trying to force clef and key signature back to normal size
%52
%%  s1*0
\ottavaBegin
     \smallNotesBegin
  \times 12/48 { 
    %% slur should begin in previous measure; see above
    bes''16^4 [ \( aes^3 ces^5 g^1  aes^3 g^2 \< ces^5 ges^1
    aeses^3 ges^2 ces f,^1  ges^3 f^2 ces' e,^1
    f^3 e^2 ces' ees,^1  fes^3 ees^2 ces' eeses,^1
    des^2 ees des c!^1  des ees f^1 ges
    aes bes ces!^1 des \!  f^4 \> ees^3 des^2 ces^1
    aes^4 f des^2 ces^1
      \ottavaEnd
    aes^4 f des^2 ces^1 ] \! \) }
      \smallNotesEnd
%53
    \once\override Stem #'direction = #DOWN
  bes8.^2 [ \( a32 bes ]
    \override Hairpin #'extra-offset = #'(0 . -1)
  ces [ \> bes \times 2/3 { des^4 ces bes^2 ] }
  bes4^1 \! \)
    \revert Hairpin #'extra-offset
    \once \override Score.TextScript #'extra-offset = #'(-0.3 . 0)
  bes'8^>^\markup{ \fontsize #-5 \number "5 4" } ~ \(
%54
  <ges bes>_\> <aes ces> <ees ges>^1^2 \! \)
%%%MIDI%%% Comment out the following line to produce a MIDI file
  \acciaccatura <ees ges>
  <ges bes>16^2^4 [ \< r32 <f aes> ]
  \times 2/3 { <f aes>16^\prall^2^4 [ \( <ees ges> <f aes> ] }
  <ges bes>^. \) [ r32 <d f>^1^3 \! \( ]
%55
  <f aes>8^2^4 <ees ges>16 \) r32 <ges ees'>
  \times 2/3 { <ges ees'>16^2^5 \( <f des'!>^1^4 <ees ces'>^2^5 }
  \times 2/3 { <d bes'>^. [ \< \) <bes bes'>^. \( <b bes'!>^. ] }
    \override Fingering #'extra-offset = #'(0 . 2.3)
  \times 2/3 { <c! bes'>^. [ <cis_2 bes'>^. <d_1 bes'>^. ] }
    \revert Fingering #'extra-offset
    \override Fingering #'extra-offset = #'(0 . 3.3)
  \times 2/3 { <ees_2 bes'>^. [ <e bes'>^. <f bes>^. \! \) ] }
    \revert Fingering #'extra-offset
%56
  <ges bes>8^2^4 \( <aes ces>8. \> <ees ges>16^1^2 \! \)
  \acciaccatura <ees ges>16 <ges bes>^2^4 \( [ r32 <f aes> ]
  \times 2/3 { <f aes>16^\prall^2^4 [ \> <ees ges> <f aes> \! ] }
  \times 2/3 { <f aes>^1^3 [ <ges bes>^. \) r32 <d f>^1^3 \( ] }
%57
  <f aes>8^2^4 [ <ees ges> \) ]
%%    \once\override TextScript #'extra-offset = #'(0 . 1)
  <bes' ges'>_\fz_\>^2^5^\markup{ \italic "con forza" } [ ~ \cresc
  <bes ges'>16 \( \! <aes f'>^.^1^4 ] \endcresc
  \times 2/3 { <ges ees'>^.^2^5 <f des'>^.^1^4 <ees c'>^.^2^5 }
  \times 2/3 { <des bes'>^.^1^4 <c aes'>^.^1^3
    <bes ges'>^.^2^5 \) }
%58
  <aes f'>8^1^4_\<^\markup{ \italic appassionato } \(
  <bes ges'> <aes f'> \!
  <ges ees'>\f^2^5 <f des'> <des f>^1^2 \)
%59
  <des aes'>4.^1^4 <des ees bes'>_>
%60
  <<
    %% ties should go upwards
    { <aes des ees>\fz^\markup{ \fontsize #-5 \number "3 1" } }
    \\
    {
        \override NoteHead #'transparent = ##t
        \override Stem #'transparent = ##t
        \override Beam #'transparent = ##t
        \override Stem #'direction = #DOWN
        \override Tie #'direction = #UP
      <des ees>8.\noBeam ~
        \revert NoteHead #'transparent
        \revert Stem #'transparent
        \revert Beam #'transparent
        \revert Stem #'direction
        \revert Tie #'direction
        \noTupletNumber
      \times 3/9 {
         \smallNotesBegin
        ees16 \< \( aes^2 des^4 ees^1 aes^2
            \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1.5)
            \ottavaBegin
        des^4 ees^1 aes des^4 \) \! }
          \smallNotesEnd
    }
  >>
    <<
      { 
          \override Stem #'direction = #DOWN
        ees''''4.^5
          \revert Stem #'direction
      }
      \\
      { 
        \override NoteHead #'transparent = ##t
        \override Stem #'transparent = ##t
        \override Beam #'transparent = ##t
        \override Stem #'direction = #DOWN
        \override Tie #'direction = #UP
      ees8.\noBeam ~
        \revert NoteHead #'transparent
        \revert Stem #'transparent
        \revert Beam #'transparent
        \revert Stem #'direction
        \revert Tie #'direction
        \noTupletNumber
         \noTupletNumber
       \times 3/9 {
         \smallNotesBegin
        ees16 \> \( des^4 aes^2 ees^1 ]
         \ottavaEnd
        des^4 aes ees^1
          \once\override Fingering #'extra-offset = #'(0 . 1)
        des^4 aes \) \! }
         \smallNotesEnd
      }
    >>
%%61
    \override Stem #'direction = #UP
  ees,,,4._>\f
    \revert Stem #'direction
  <<
     { <aes, aes'>^\marcato s4 }
     \\
       \once \override NoteColumn  #'force-hshift = #-0.7
       \override Stem #'beamed-minimum-free-lengths = #'(3)
       \once \override Fingering #'extra-offset = #'(0 . -2)
     { f'8.-4 \( [ ees16 ] \times 2/3 { f ees des }
       \revert Stem #'beamed-minimum-free-lengths
%%62
        \once\override Stem #'direction = #UP
       des4\p^1 \)
     }
  >>
  r8
  des''8^>^4_\markup{ \italic "dolciss." } ( g,4^1 )
%63
  c8^>^5 ( ges!4^2 )
  ces8^>^4 ( f,4 )
%64
  bes8^>^3 ( e,4 )
  beses'8^>^5 ( ees,4^2 )
%65a
  <<
      \once\override DynamicText #'extra-offset = #'(0 . -2)
    { aes2.^5_\p ~
%66a
      aes4 }
    \\
%65b
    {
       \override Slur #'attachment = #'(stem . stem)
      r4 aes,16^.^1 ( bes^.^2 c^.^1 des^.^2 d^.^1
      ees^. f^.^3 ges!^.^4
%66b
      f4 )
     }
  >>
  r8
    \ottavaBegin
  r des'^2 [ ( \acciaccatura bes' g, ) ]
%67
    \override Stem #'direction = #DOWN
  r c^2 ( \acciaccatura a' ges,! )
  r ces^2 ( \acciaccatura aes' f, )
%68
  r bes^2 ( \acciaccatura g' e, )
  r beses'^2 ( \acciaccatura ges' ees, )
    \revert Stem #'direction
    \revert Slur #'attachment
    \ottavaEnd
%69a
  <<
    { aes2.^4^> ~
%70a
        \override Slur #'attachment = #'(stem . stem)
        \override Fingering #'extra-offset = #'(0 . 4)
      aes4. f16_2_\< ( ges g_4
        \revert Fingering #'extra-offset
        \override Fingering #'extra-offset = #'(0 . 5)
      aes_3
      c_5 bes \!
        \revert Fingering #'extra-offset
%71a
        \override Fingering #'extra-offset = #'(0 . 1)
        \override TextScript #'extra-offset = #'(0 . 1)
      aes4.^\markup{ \fontsize #-5 \number "3 5" } ) ~
      aes16 ( g^4 ges^3 f^5 ees^4 f
%72a
      des4.^4 ) f16^5 ( ges^3 g^4 aes^3 c bes
%73a
      aes4.^\markup{ \fontsize #-5 \number "3 5" } ) ~
      aes16 ( g^4 ges^3 f^5 ees^4 f
%74a
      des2. )
        \revert Fingering #'extra-offset
        \revert TextScript #'extra-offset
        \revert Slur #'attachment
    }
    \\
    {
%69b
        \override Slur #'attachment = #'(stem . stem)
      aes'4. ~ aes16 ( g^.^3 ges^.^2 f^.^1 ees^.^2 f^.^3
%70b
      des2. )
%71b
      c16_1 ( des_2 d_1 ees_2 ges_4 f ees4 ) aes,8 (
%72b
      beses16_1 \> aes_2 g aes \acciaccatura c8^3 bes16 \!
      aes_4 aes4. )
%73b
      c16_1 ( des_2 d_1 ees_2 ges_4 f ees4 ) aes,8
%74b
      f2.
    }
        \revert Slur #'attachment
  >>
%75
  \times 6/7 {
    <aes f'>16^1^3 \( <bes ges'>^1^4 <c aes'>^2^5 <des bes'>^1^4
    <ees c'>^2^5 <f des'>^1^4 <ges ees'>^2^5 }
      \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 2.5)
      \ottavaBegin
  \times 6/7 {
    <aes f'>^1^3 <bes ges'>^1^4 <c aes'>^2^5 <des bes'>^1^4
    <ees c'>^2^5 <f des'>^1^4 <ges ees'>^2^5 }
%76
  <aes f'>4^2^5 \)
      \ottavaEnd
  r8 <aes,, f'>4.^2^5 \(
    \override Stem #'direction = #UP
  <f des'>2.\pp^\fermata \)
    \revert Stem #'direction

  \bar "|."
} % end treble


bass = \notes \relative c \context Voice = bass
{
    \set Staff.extraNatural = ##f
%1
  <<
    {
      %% hack to get a decent-looking slur
        \override NoteHead #'transparent = ##t
        \override Stem #'transparent = ##t
        \override Beam #'transparent = ##t
        \override Stem #'direction = #DOWN
      des16 (f' aes, f' des  f,)
%{ %%%MIDI%%% Change previous line to
      des,16 (f'' aes, f' des  f,)
%} %%%MIDI
        \revert NoteHead #'transparent
        \revert Stem #'transparent
        \revert Beam #'transparent
        \revert Stem #'direction
    }
    \\
    {
      %% the MIDI file needs a dynamic,
      %% so I've added an invisible pianissimo sign
      \once\override DynamicText #'transparent = ##t
     des,16\sustainDown\pp f''^1 aes,^3 f'^1 des^2  f,^4
    }
    >>
  des^5 (f' aes, f' des  f,)
%2
  des_\markup{ \italic sempre \italic legato } f' aes, f' des f,
  des f' aes, f' des f,
%3
  des f' aes, f' des f,  des f' aes, f' des f,
%4
  des f' aes, f' des f,  des f' aes, f' des f,
  \sustainUp
%5
  des,\sustainDown ges''^1 a,^4 ges' ees^2 ges,^5
  des^5 ges' a, ges' ees ges,
  \sustainUp
%6
  des\sustainDown ges' bes,^3 ges' ees ges,^4
  des ges' bes, ges' ees ges,
  \sustainUp
%7
  c,\sustainDown ges'' a,^4 ges' ees ges,^5
  \sustainUp
  bes,\sustainDown ges'' bes,^4 ges' ees ges,
  \sustainUp
%8
  beses,\sustainDown ges'' beses,^3 ges' des^2 ees,^5 \sustainUp
  aes,^5\sustainDown ges'' aes,^3 ges' c,^2 ees,^5 \sustainUp
%9
  des,\sustainDown e'' g,^3 e' bes^2 des,^5
  \sustainUp
  des,\sustainDown f'' aes,^3 f' des f,^4
  \sustainUp  
%10
  bes,\sustainDown f'' bes,^3 f'^1 des^2 f,^5
  \sustainUp  
  bes,\sustainDown f'' a,^4 f' ees f,^5
  \sustainUp  
%11
  bes,\sustainDown f'' bes,^3 f' des f,^5
  \sustainUp  
  f,\sustainDown f'' c^3 f ees a,^4
  \sustainUp  
%12
  bes,\sustainDown f'' bes, f' des f,^5
  \sustainUp  
  bes,\sustainDown f'' a,^4 f' ees f,^5
  \sustainUp  
%13
    \once \override TextScript #'padding = #3
  bes,\sustainDown f'' bes, f' des f,^5
  \sustainUp  
    \dynamicUp
  bes,\sustainDown aes''! bes,^3 aes'
  \cresc d, \endcresc f,^5
  \sustainUp  
    \revert TextScript #'padding
%14
  ees,\sustainDown ges'' bes,^3 ges' ees ges,^4
  \sustainUp  
  ees\sustainDown aes' bes,^3 aes' d, f,^5
  \sustainUp  
%15
  ees\sustainDown ges' bes,^3 ges' ees ges,^5
  \sustainUp  
  bes,\sustainDown aes'' bes,^4 aes' d, f,^5
  \sustainUp  
%16
  ees,\sustainDown ges'' bes,^3 ges' ees ges,^4
  \sustainUp  
  ees\sustainDown aes' bes,^4 aes' d, f,^5
  \sustainUp  
%17
  ees\sustainDown ges' bes,^3 ges' ees ges,^5
  \sustainUp  
  beses,\sustainDown \<des' ees,^4 des' ges,^2 \! ees^3
  \sustainUp  
%18
  aes,\sustainDown c' ees,^3 c' ges^2 ees
  \sustainUp  
  <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    beses4.^\marcato
  }
  \\
  {
    beses16\sustainDown beses' ees, beses' ges ees
    \sustainUp  
  }
  >>
%19
  aes16\sustainDown aes' ees aes ges ees^4 (
  \sustainUp  
  des\sustainDown ) fes' ges,^3 fes' beses,^2 des,^5 (
  \sustainUp  
%20
   c^5\sustainDown ) ees' ges,^3 ees' aes,^2 ges
  \sustainUp  
  <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    beses,4.
  }
  \\
  {
    beses16\sustainDown des' ees,^3 des' ges,^2 ees^3
    \sustainUp  
  }
  >>
%21
  aes16\sustainDown aes' ees^3 aes ges \( aes,
  \sustainUp  
  des^4 \) \sustainDown fes' ges,^3 fes' beses,^2 des,^5 (
  \sustainUp  
%22a
    \once \override TextScript #'padding = #3
  c^5^\markup{ \italic "sempre legato" }\sustainDown ) \(
  ees' ges,^3 ees' beses^2 ges \sustainUp \)
  <<
%23a
  { 
   \override Stem   #'beamed-minimum-free-lengths = #'(5.5)
     % to avoid a collision with the lower voice
   s16*11^\>
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
   f8. [ e8 ] \!
   \revert Stem #'beamed-minimum-free-lengths
  }
  \\
%22b
  { ces16\sustainDown \( ees' ges, ees' beses ges \sustainUp \)
%23b
    ces,16\sustainDown ees' f,^3 ees' aes, f^3
    \sustainUp  
    b,\sustainDown d' e,^4 d' gis,^2 e^3
    \sustainUp}
 >>
%24
  a,\sustainDown cis' e,^3 cis' a e
  \sustainUp  
  beses\sustainDown des'! ees,!^4 des' ges,!^2 ees^3
  \sustainUp  
%25
  <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    aes,!4.
  }
  \\
  {
    aes!16\sustainDown c'! ees,^3 c' ges des^4
    \sustainUp  
  }
  >>
  aes16\sustainDown aes' c,^4 aes' ges aes,
  \sustainUp  
%26
    \once \override TextScript #'padding = #5
  des,^\markup{ \italic dolce } \sustainDown f'' aes,^3 f' des^2 f,^4
  des f' aes,^3 f' des^2 f,^4
%27
  des f' aes, f' des f,  des f' aes, f' des  f,
%28
  des f' aes,^3 f' des^2 f,^4  des f' aes, f' des f,
  \sustainUp  
%29
  des,16\sustainDown ges'' a,^3 ges' des ges,^4\sustainUp
  des\sustainDown ges' a, ges' d^2 ges,^4\sustainUp  
%30
  des16\sustainDown ges' bes,^3 ges' ees16 ges,^4\sustainUp
  des\sustainDown ges' bes, ges' ees ges,\sustainUp  
%31
  c,\sustainDown ges'' a,^4 ges' ees ges,^5
  \sustainUp  
  bes,\sustainDown ges'' bes,^3 ges' ees ges,^5
  \sustainUp  
%32
  beses,\sustainDown ges'' beses,^3 ges' des ees,^5
  \sustainUp  
  aes,\sustainDown ges'' aes,^3 ges' c, ees,^5
  \sustainUp  
%33
  des,\sustainDown f'' aes,^4 f' des f,^5
  des\> f' aes,^3 f' des aes \! \sustainUp  
%34
  cis,\sustainDown e' e,^4 e' a, e
  \sustainUp  
  d\sustainDown e' e,^4 e' gis,^2 e
  \sustainUp  
%35
  cis\sustainDown e' e,^4 e' a, e
  \sustainUp  
  gis,\sustainDown e'' e,^5 e' d e,
  \sustainUp  
%36
  a,\sustainDown e'' e,^5 e' cis e,
  \sustainUp  
  e,\sustainDown e'' gis,^3 e' d e,
  \sustainUp  
%37
  a,\sustainDown e'' a,^3 e' cis e,^5
 \sustainUp  
  dis,\sustainDown fis'' a,^3 fis' cis dis,^5
  \sustainUp  
%38
  gis,\sustainDown\cresc fis''\endcresc gis,^3 fis' cis dis,^5
  \sustainUp  
  gis,\sustainDown fis'' gis,^3 fis' bis,^2 dis,^5
  \sustainUp  
%39
  gis,\sustainDown e'' gis,^3 e' cis e,^5
   \once\override Script #'extra-offset = #'(0 . -4)
  gis,,^> e''' gis, e' cis e,
  \sustainUp  
%40
  \cresc gis,\sustainDown dis'' fis,^3 dis' bis dis,^5
   \once\override Script #'extra-offset = #'(0 . -4)
  gis,,^\marcato dis''' fis, dis' bis dis,
  \sustainUp  
%41
   \once\override Script #'extra-offset = #'(0 . -4)
  a^\marcato\sustainDown dis' fis,^3 dis' bis dis,^5
  \sustainUp  
   \once\override Script #'extra-offset = #'(0 . -4)
  a,^\marcato\sustainDown ees'''! ges,!^3 ees' ces ees,!^5
  \sustainUp  
%42
   \once\override Script #'extra-offset = #'(0 . -4)
  bes!^\marcato\sustainDown ees' ges,^3 ees' bes ees,^4
  \sustainUp  
   \once\override Script #'extra-offset = #'(0 . -4)
  bes,^\marcato\sustainDown ees'' ges,^3 ees' bes ees,^4
  \sustainUp  
%43
   \once\override Script #'extra-offset = #'(0 . -4)
  ces^\marcato\sustainDown ees' ges,^3 ees' beses ees,^4
  \sustainUp  
   \once\override Script #'extra-offset = #'(0 . -4)
  ces,^\marcato\sustainDown ees'' ges,^3 ees' beses ees,^4
  \sustainUp  
%44
 <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    c!4.
  }
  \\
  {c!16\sustainDown ees' ges,^3 ees' a, ees^4
  \sustainUp}
 >>
 <<
  {cis4}
  \\
  {\slurUp cis16\sustainDown [ ( cis' fis,^3 a! ) ]
  \sustainUp}
 >>
\endcresc %% BUG: \endcresc within << >> does not work
 <<
  {d4}
  \\
  {\slurUp d16\sustainDown [ ( c' %% \endcresc above should be here
%45
  fis,^3 a ) ]
  \sustainUp}
 >>
 <<
  {ees!4}
  \\
  {\slurUp ees!16\sustainDown (c' ges! aes)}
 >>
  aes, \( ges'' aes,^3 ges' c, ees,^5 \)
  \sustainUp  
%46
    \once \override TextScript #'padding = #4
  des,^\markup{ \italic dolce }\sustainDown f'' aes,^3 f' des f,^4
  des f' aes, f' des f,
%47
  des f' aes, f' des f,  des f' aes, f' des  f,
%48
  des f' aes, f' des f,  des f' aes, f' des f,
  \sustainUp  
%49
  des,\sustainDown \> f'' \! aes, f' des f,  des f' aes, f' des f,
%50
  des f' aes, f' des f,  des f' aes, f' des f,\sustainUp
%51
  des,\sustainDown f'' aes, f' ces f,^4  des f' aes, f' ces f,
%52
    \once \override TextScript #'padding = #3
  des^\markup{ \italic "con forza" } f' aes, f' ces f,^4
  des f' aes, f' ces f,\sustainUp
%53
  d\sustainDown f' aes, f' bes,\sustainUp f^4
  d\sustainDown f' aes, f' bes,\sustainUp f
%54
    \once \override TextScript #'padding = #4
  ees\sustainDown^\markup{ \italic "con anima" }
  ges' bes,^3 ges' ees\sustainUp ges,^4
  ees\sustainDown aes' bes,^3 aes' d, f,^5\sustainUp
%55
  ees\sustainDown ges' bes,^3 ges' ees ges,^5\sustainUp
  bes,\sustainDown aes'' bes,^3 aes' d, f,^5\sustainUp
%56
  ees,\sustainDown ges'' bes,^3 ges' ees ges,^4\sustainUp
  ees\sustainDown aes' bes,^3 aes' d, f,^5\sustainUp
%57
  ees\sustainDown ges' bes,^3 ges' ees ges,^4\sustainUp
  ges,\sustainDown ees'' ges,^3 ees' bes ees,^4\sustainUp
%58
  aes,\sustainDown des' f,^3 des' aes aes,\sustainUp
  bes\sustainDown des' f,^3 des' bes bes,\sustainUp
%59
    \once\override Stem #'direction = #DOWN
  f\sustainDown aes' des,^2 aes' des, f,\sustainUp
  ges\sustainDown bes' des,^3 bes' ees,^2 ges,\sustainUp
%60
   \once\override Script #'extra-offset = #'(0 . -4)
  aes,^>\sustainDown ( des'' ees,^3 des' aes ees )
  aes, ( des' ees, des' aes ees )
%61
   \once\override Script #'extra-offset = #'(0 . -4)
  aes,,^\marcato ( des'' ees, des' ges, ees ) \sustainUp
  aes,\sustainDown ( c' ees,^3 c' ges aes,^5 ) \sustainUp
%62
  des,\sustainDown ( f'' aes,^3 f' des f,^4\sustainUp )
    \once \override TextScript #'padding = #3
  des\sustainDown (
  fes' bes,^3 fes' des g,^4\sustainUp )
%63
 <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    des4.
  }
  \\
  {\slurUp des16\sustainDown ( ees' a,^3 ees' c ges!^4 )
  \sustainUp}
 >>
 <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    des4.
  }
  \\
  {\slurUp des16\sustainDown ( d' 
    \once \override TextScript #'padding = #2
  aes^3^\markup{ \italic "dim." }
  d ces f,^4 )
  \sustainUp}
 >>
%64
 <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    des!4.
  }
  \\
  {\slurUp des!16\sustainDown ( des'! g,^3 des' bes e,^4 )
  \sustainUp}
 >>
 <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    des4.
  }
  \\
  {\slurUp des16\sustainDown ( des' ges,^3 des' beses ees,^4 )
  \sustainUp}
 >>
%65
 <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    des4.
  }
  \\
  {\slurUp des16\sustainDown ( c' ges^3 c aes ees^4 )
  }
 >>
 <<
  {
    \once \override Staff.NoteCollision
      #'merge-differently-dotted = ##t
    des4.
  }
  \\
  {\slurUp des16 ( c' ges c aes ees ) \sustainUp}
 >>
%66
  des,\sustainDown f'' aes,^3 f' des f,^4\sustainUp
 <<
  {s8 bes4^3}
  \\
  {des,16\sustainDown [ fes' bes, fes' des g,^4 ] \sustainUp
  }
 >>
%67
 <<
  {s8 a4^3}
  \\
  {des,16\sustainDown [ ees' a, ees' c ges!^4 ] \sustainUp
  }
 >>
 <<
  {s8 aes4^3}
  \\
  {des,16\sustainDown [ d' aes d ces f,^4 ] \sustainUp
  }
 >>
%68
  des,\sustainDown des' g,^3 des' bes e,^4\sustainUp
  des\sustainDown des' ges,^3 des' beses ees,^4\sustainUp
%69
  des\sustainDown c' ges c^\markup{ \italic dim. } aes ees 
  des c' ges c aes ees\sustainUp
%70
  des,\sustainDown des'' des,^4 des' f, aes,^5
    \once \override TextScript #'padding = #3
  des,^\markup{ \italic calando } des'' des, des' f, aes,\sustainUp
%71
  des,\sustainDown c'' ees,^3 c' ges aes,^5
  des, c'' ees, c' ges aes,\sustainUp
%72
  des,\sustainDown des'' des,^4 des' f, aes,^5
  des, des'' des, des' f, aes,\sustainUp
%73
%    \override TextSpanner #'direction = #-1
    \once \override TextScript #'padding = #2
    \override TextSpanner #'edge-text = #'("smorz." . "")
  des,\startTextSpan\sustainDown c'' ees,^3 c' ges aes,^5
  des, c'' ees, c' ges aes,\sustainUp
%74
  des,\sustainDown des'' des,^4 des' f, aes,^5
  des, des'' des, des' f, aes,\sustainUp\stopTextSpan
%75
    \once \override TextScript #'padding = #3
  des,^\markup{ \italic "dolciss.\ e dim." }\sustainDown
  des'' des, des' f, aes,
  des, des'' des, des' f, aes,
%76
  des,4 \> r8 <aes' aes'>4. \! ~
%77
    \once\override Script #'padding = #1.5
  <des aes'>2.^\fermata
} % end bass


\score {
 <<
  \context PianoStaff \notes
  <<
    \context Staff = top
    <<
        %\tempo 4.=50
        \time 6/8
        \clef treble
        \key des \major
        \treble
    >>
    \context Staff = bottom
    <<
        \clef bass
        \key des \major
        \bass
    >>
  >>
 >>
  \midi {
    \tempo 4=34 % actually dotted quarter = 50
    \context {
      \VoiceContext
      \remove "Dynamic_performer" % causes problems
      \remove "Span_dynamic_performer"
    }
  }
  \paper { 
    \context {
      \StaffContext \consists "Horizontal_bracket_engraver"
    }
  }
}

