%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%
% For Javier's templating request project, Spring 2014
% 
%%--------------------------------------------------------------------

\version "2.18.2"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
    ragged-bottom = ##f
%    ragged-last-bottom = ##f
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    title = "Nocturne"
    composer = "F. Chopin"
    opus = "Opus 9, No. 3"
    %piece = "Left-aligned header"
    date = "1832"
    style = "Romantic"
    source = "G. Schirmer,1915"

    maintainer = "Glen Larsen"
    maintainerEmail = "glenl.glx (at) gmail.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Nocturne No. 3"
    mutopiacomposer = "ChopinFF"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Piano"

 footer = "Mutopia-2014/05/26-1955"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\layout {
  \context {
    \Staff
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
}

%--------Definitions
global = {
  \key b \major
  \time 6/8
}

bareTuplet = {
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
}

mybreak = { }
ignore = { \override NoteColumn.ignore-collision = ##t }


% This is the cadenza at the end of the piece. I chose to code it here
% in variable form so I can use skip-of-length(chunk) to get alignment
% correct.
cadenzaA = {
  \stemUp
  cis8[ e fis <b-1> cis dis] \bar ""
  \ottava #1
  \repeat unfold 2 { <e-1>16->[ cis fis g cis, dis] } \bar ""
  \repeat unfold 2 { e16->[ <cis-1> fis g cis, dis] } \bar ""
}
cadenzaB = {
  <e-1>16[ <ais-3 cis-5> <g-2>16] <a-3 c-5>16[ <fisis-1> <gis-3 b-5>16] <fis-2>16[ <g-3 bes-5> <eis-1>16] <fis-3 a>16[ <e-4> <f-3 aes>16] <dis-2>16[ <e gis> <cisis-1>16] <dis fis>16[ cis <d f>16] \bar ""
  bis16[ <cis e> b16] <c ees>16[ ais <gis b>16] a16[ <bes des> gis16] <a c>16[ fisis <gis b>16] fis16[ <g bes> eis16]
  \ottava #0
  <fis! a!>16[ e <f aes>16] \bar ""
  dis16[ <e g> cisis16] <dis fis>16[ cis <d f>16] s16 e8[ dis16 cis16]
  \bar ""
}
trebleCadenza = {
  \cadenzaOn
  \acciaccatura{b8} fis2~ fis8[ <b-1>] % \bar ""
  << {
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
    \cadenzaA
    \cadenzaB
    \revert Accidental.font-size
    \revert NoteHead.font-size
  } \\ {
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
    #(skip-of-length cadenzaA) s16*42 bis16[ cis b] ais!16.[ e32] \bar ""
    \revert Accidental.font-size
    \revert NoteHead.font-size
  } >>
  \cadenzaOff
}

bassCadenza = {
  \cadenzaOn
  <fis,,-5>8[( <cis'-3> <fis-2> <b-1> e)] r % \bar ""
  #(skip-of-length cadenzaA)
  s16*1
  \set tieWaitForNote = ##t
  \override NoteHead.font-size = #-4
  \override Accidental.font-size = #-4
  \once\override TupletBracket.bracket-visibility = ##f
  \once\omit TupletNumber
  \tuplet 2/1 {\tieDown fis,,16~[ cis'~ fis~ ais~] }
  \revert Accidental.font-size
  \revert NoteHead.font-size
  <fis, cis' fis ais e'>1..\sustainOn
  s16 s16\sustainOff
  s16*10
  \tieUp
  r8 fis'~
  \cadenzaOff
}

% All dynamics are done it their own context.
% Markup between staves is done here as well.
dynamicsMarkup = {
  \accidentalStyle default
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \override DynamicLineSpanner.staff-padding = #3
  \override TextScript.staff-padding = #1
  s8\p s2.-"scherzando." s4. s8\< s8 s8\! s2.*2
  s2.*4
  s2.*2 s2.-"leggierissimo."
  s2. | s8-"espress." s2 s8\< | s8 s8\! s8 s8\> s8 s8\! s2. s8*3 s8\> s8 s8\!
  s2.\f | s2. | s2.\p | s2. |
  s2.\p | s2. | s8 s8\> s8\! s8*3 s2. |
  s2.*2 | s2.-"dolciss." |
  s8\> s8*3 s16\! s16\< s16 s16\! |
  s8 s8\> s16 s16\! s8 s8\> s16 s16\! | s2. |
  s8-"scherz." s8*5 | s2. | s8*5 s8\< | s8 s8\> s8*3 s16 s16\! |
  s8*5 s8\< | s8\> s8 s16 s16\! s8 s8*2 | s8*5 s8\< | s8\! s8 s8*4 |
  s2.\p | s2. | s2.-"sostenuto." | s2. |
  s2.\f | s2.\fz | s2.\p | s8*3 s8\> s8*2 |
  s8*2 s8\! s8*3 | s2. | s8*5 s8-\markup{\whiteout "stretto. e cresc."} | s2. |
  s8-"cresc." s8*5 | s2. | s2. | s8*3 s8\fz s8*2 |
  s2.-"con forza." | s8 s8-"rallent." s8*4 |
  s8\p s8*4 s8\< | s8\! s8*2 s8\> s8 s8\! | s8*5 s8\< | s16 s16\! s8\> s8*3 s16 s16\! | s8*5 s8\< |
  s8 s8\! s8*4 | s2.\p | s2.*3 |
  s8\f\> s8 s8\! s8*3 | s2. | s2.\p | s8*2 s8\> s8*3 |
  s8*2 s16 s16\! s8 s8*2 | s8\> s8*2 s8\! s8*2 | s2.-"stretto e cresc." | s2. |
  s2. | s2. | s2. | s8*3 s8\fz s8*2 |
  s2.-"con forza." | s8 s8-"rallent." s8*2 s8\< s8\! | s2.\p |
  s8\> s8*4 s8\! | s2. | s2. | s8*5 s8\< | s16 s16\! s8*5 |
  s16 s16\pp s8*5 |
  % key change, 4/4 time
  s8\f s4 s8\< s16*7 s16\! | s8 s4 s8\> s8\! s4 s8 |
  s4. s4\< s8*2 s8\! | s2. s4\fz | s1\p |
  s4 s4\fz s2 | s8\pp s8 s2. | s1-"ritenuto." |
  s2. s8\cresc s8\! | s1*2 |
  s8\ff s4\dim s4. s4 | s8 s8\p s2. | s4 s4\fz s2 |
  s1 | s2 s4-"smorz." s4 | s16 s16\pp s8 s4 s4\> s8\! s8 |
  s1 | s2\f s16 s16\cresc s8 s4\! | s2 s16 s16\> s16*5 s16\! |
  s1\p | s4 s4\fz s2 | s1\pp |
  s2 s16\< s16*6 s16\! | s2\f s16 s32\cresc s32 s16 s16*4 s16\! | s2 s4 s16\> s16*2 s16\! |
  s1\p | s4 s4\fz s2 | s1\p |
  s2. s8\> s16 s16\! | s1\pp | s2 s4\cresc s8. s16\! |
  s8\f  s4 s8\< s4. s8\! | s1 | s4\cresc s4 s2 |
  s8\ff s4 s8 s4\dim s8 s8\! | s1\p | s4 s4\fz s2 |
  s1 | s1-"smorz." |
  s2\pp s4 s8-\markup{\center-align "rallent."} s8 | s1\ff |
  % key change, 6/8 time
  s2.\p | s8-"poco rallent." s8*4 s8-\markup{\whiteout "scherz."} | s2. | s2. |
  s2.*4 |
  s2. | s2 s16\< s16*2 s32 s32\! | s2. |
  s4. s16\< s16*4 s16\! | s8\pp s8 s2 |
  s2.*4 |
  \grace{s16\< s16} s8\! s8\> s8*3 s8\! | s2. | s2. |
  s8\f s2 s8-"con forza." | s2. | s2. |
  s8-"risoluto." s8 s2 | s2. |

  \cadenzaOn
  s2 s8 s8-"senza Tempo e legatissimo."
  #(skip-of-length cadenzaA)
  s16*1
  \tuplet 2/1 { s16*4 }
  s8*6 s8\dim s8 s4 s2\!
  s16*12
  s8-\markup{\center-align "rallent."} s16 s16
  \cadenzaOff
  % 4/4 time
  | s8\pp s8-\markup{\column{"legatiss." "smorz."}} s4 s8-"rallent." s8*3 |
  s8 s8 s8 \ppp s8*5
}

upperStaff = \relative c'' {
  \tempo "Allegretto." 4. = 66
  \set Staff.connectArpeggios = ##t

  \partial 8 { <fis-1>8( } |
  <dis-4-!>8)[ r16 cisis16( dis8] <d-3-!>8)[ r16 cis( d8)] |
  <cis-2>4.~ cis8 dis( <e-1> |
  <fis-3>8 gis8.-> fis16 <eis-2>8) fis8.->( eis16 |
  <e-1>4.~) e4( <dis-3>8 |
  \mybreak

  <cis-2>8.) b16( cis8 <dis-3>)[ r16 cis16( d8] |
  <fis-5>8-!) <e-4>2-^ <e-5>8~( |
  e8 <gis,-1> <ais-2>) \tuplet 3/2 { <b-3>16 cis b } <ais-2> <b-3> <dis-5>16.-> cis32 |
  <ais-2>2~ \tuplet 3/2 { ais16 eis fis } gis32 ais <b-1> cis |
  \mybreak

  \tuplet 5/3 { <dis-3>8 <f-5> <e-4> <cisis-2> <dis-3>8 } \tuplet 5/3 { <d-1>8 <e-4> dis cis d8 } |
  cis4.~ \tuplet 7/6 { <cis-2>16 <bis-1> <cis-2> <cisis-3> <dis-4> <e-1> eis16 } |
  \tuplet 3/2 { <fis-3>16 <fisis-1> <gis-3> <a-1> <ais-3> <b-4> <c-5> <a-3> <fis-2> <eis-1> fis <fisis-1> <gis-2> <a-3> <ais-4> <b-5> <gis-3> <eis-2>16 } |
  \mybreak

  <e-1>4.~ e4( <dis-3>8) |
  <cis-2>8( dis-> cis gis4 <cis-3>8 |
  \appoggiatura{ <cis-2>8 } <ais'-5>4.) \tuplet 4/3 { <gis-4>8 <fis-3> <eis-4> <dis-3>8 } |
  <cis-2>8( dis8. cis16 gis4 <cis-3>8 |
  \appoggiatura{ fis,16 cis' } <ais'-5>8) <b-5>8._>[( ais16] \tuplet 4/3 { <gis-3>8 <fis-2> <eis-4> <dis-3>8) } |
  \mybreak

  cis8( \appoggiatura{ dis16 eis } dis8. cis16 \acciaccatura{ cis8 } gis4->) cis8( |
  e2.-^) |
  r8 fis,16-.( gis-. ais-. b-. cis8-.) r dis8( |
  b2) r4 |
  \mybreak

  dis8-![ r16 cisis16( dis8] d!8-!)[ r16 cis16( dis8] |
  cis4.~)( cis8 dis e |
  fis8-.) <gis-3>8[( gis32)( fis gis fis)] <eis-1>8( <fis-3>16 <eis-2> b' eis,) |
  e!4.( e4)( dis8) |
  \mybreak

  cis8[\trill r16 b( cis8] dis8)[ r16 cis( dis8] |
  fis8-!) e2-> e8( |
  e8[) \once\override TupletBracket.bracket-visibility = ##f
       \tuplet 5/4 { gis,32 ais gis <fisis-1> gis ais <b-1> cis dis <e-1> <fis!-2> <fisis-3> ais gis fis <e-1> <dis-3> e dis cis dis32] e gis, dis'32.->( cis64) } |
  \mybreak

  \once\override TupletBracket.bracket-visibility = ##f
  ais2~ \tuplet 5/4 { ais16[ eis-. fis-. gis32-. ais-. b-. cis32-.] } |
  dis8-. f16( e cisis dis) d8-. e16( dis cis d) |
  cis4.~ cis8 bis16( cis dis <e-4> |
  \mybreak

  \once\override TupletBracket.bracket-visibility = ##f
  \tuplet 4/3 { <eis-1>16 fis gis <fis-1> <b-2> c c') <fis,,-3>( }
    \tuplet 4/3 { <e-1> eis fis <eis-1> ais <b-1> b') eis,,( } |
  e4.~) e4 dis8 |
  cis8( dis-> cis gis4 cis8 |
  ais'4.->) \tuplet 4/3 { gis8 fis eis dis }  |
  \mybreak

  cis8( dis8. cis16 \acciaccatura{cis8} gis4 cis8 |
  \appoggiatura{fis,16 cis'} <ais'-5>8) <b-5>8.->( ais16 \tuplet 4/3 { gis8 fis eis dis) } |
  cis8( \appoggiatura{dis16 eis} dis8. cis16 \acciaccatura{cis8} gis4) cis8( |
  e2.) |
  \mybreak

  r8 fis,16-.( gis-. ais-. b-. cis8-.) r8 dis8( |
  b2) ais8( b |
  cis4. fis4 dis8 |
  cis4. b4.) |
  \mybreak

  b'8.->( ais16 gis fis <eis-1> <fis-3> <gis-4> <b,-1> <cis-4> <gis-2>) |
  <ais-3>2.( |
  ais4.) dis4( b8 |
  ais4 gis8) gis'4.~ |
  \mybreak

  << { gis16( fis eis dis <cisis-1> <dis-3> \stemDown <e-4> <eis-5>) <gisis,-1> <ais-3> \tuplet 3/2 { b16 eis, ais } }
     \new Voice{ \voiceTwo \stemUp s16*6 s16*4 \once\override TupletNumber.stencil = ##f \tuplet 3/2 { <b-4>16 <eis,-1> <ais-3> } } >> \oneVoice |
  <gis-2>4.-> <fis-1>4~( fis16 <eis-2> |
  <eis-1>4) <ais-4>4.-> <ais-3>8 |
  <ais-2>8( b) r8 r4 r8 |
  \mybreak

  <b-1>8. <bis-2>16( \tuplet 3/2 { <dis-4>16[ <cis-3> <bis-2>16] } <bis-1>8) r bis~ |
  bis8-! cis2-> cis8 |
  cis8 cisis2-> cisis8 |
  cisis4-> dis8( fis'4.~) |
  \mybreak

  \tuplet 7/6 { fis16( eis dis cis <b-1> <dis-4> <ais-2> } \tuplet 14/6 { <gisis-1>16 <fis-4> eis dis <cisis-1> <eis-4> dis cis <b-1> <ais-4> gisis fis eis <dis-3>) } |
  <cisis-2>8-> <ais'-5>4.\fermata b8-.( bis-. |
  \mybreak

  cis8^\markup{"Tempo I."} dis8. cis16 gis4) cis8( |
  ais'4.) \tuplet 4/3 { gis8 fis eis dis } |
  cis8([ \appoggiatura{dis16 eis} dis8. cis16] \acciaccatura{cis8} gis4 cis8)( |
  \appoggiatura{fis,16 cis'} <ais'-5>8)( <b-5>8.[)( ais16] \tuplet 4/3 { gis8 fis eis dis) } |
  cis8( dis cis \acciaccatura{cis} gis4) cis8( |
  \mybreak

  e2.) |
  r8 fis,16-.( gis-. ais-. b-. cis8-.) r dis( |
  b2) ais8( b |
  cis4. fis4 dis8) |
  cis4. b8 \acciaccatura{b} b'4~ |
  \mybreak

  b16( ais gis fis eis\trill <dis-2> <eis-3> <fis-4> <gis-5> <b,-1> <cis-4> <ais-2>16) |
  ais2.~-> |
  << { ais4. \acciaccatura{b16 ais <gisis-1> <cis-2> }
       \stemUp <dis-5>8*1/2^([
         \override NoteHead.font-size = #-4
         \override Accidental.font-size = #-4
         d cis c
         \revert NoteHead.font-size
         \revert Accidental.font-size
         <b-1>8]) \stemNeutral
     }
     \new Voice {\voiceTwo s4. dis4 b8 } >> |
  ais4( gis8) gis'4.~( |
  \mybreak

  << { \tuplet 8/6 { gis16[ fis eis dis <cisis-1> <dis-4> <cisis-3> <cis-2>16]) }
       \tuplet 9/6 { <cisis-1>16_[( <dis-3> <e-4> <eis-5> <gisis,-1> <ais-3> b eis, ais16]) } }
     \new Voice { \voiceTwo s8*5 \stemUp <b-4>16*2/3[ <eis,-1> <ais-3> ] } >> |
  <gis-2>4.( <fis-1>4) r16 <eis-2>16 |
  <eis-1>8 ais2-> ais8 |
  ais8( cis) r r4 b8~ |
  \mybreak

  b8[ r16 bis16] \tuplet 3/2 { dis16 cis bis } bis8 r bis8~ |
  bis8-. cis2-> cis8~ |
  cis8-. cisis2-> cisis8 |
  cisis4-> dis8( fis'4.~) |
  \mybreak

  <fis-5>32( eis dis fis cis <b-1> <dis-4> <ais-2> <fisis-1> <cis'-5> <gis-3> <fis-2> <gisis-4> <eis-1> <dis-3> <fis-5> <cis-2> <b-1> <dis-4> <ais-2> <gisis-1> <fis-4> eis dis |
  cisis8->) ais'4.\fermata b8-.( bis-.) |
  cis8^\markup{"Tempo I."} dis8. cis16 gis4( cis8 |
  \mybreak

  ais'4. \tuplet 4/3 { gis8 fis eis dis) } |
  cis8([ \appoggiatura{dis8 eis} dis8. cis16] gis4 cis8) |
  \appoggiatura{fis,8 cis'} <ais'-5>8[ <b-5>8.->( ais16] \tuplet 4/3 { gis8 fis eis dis) } |
  cis8( dis cis \acciaccatura{cis8} gis4) cis8( |
  e2.) |
  \mybreak

  r8 fis,16-.( gis-. ais-. b-. cis8-.) r d_> |
  \bar "||"
  \time 4/4 \key b \minor
  << { b2.(^\markup{"Agitato."} ais8. b16 } \\ { r8 <fis d>4 q8~ q q4 q8 } >> |
  << { d'2 cis2) } \\ { r8 <b g e>4 q8~ q q4 q8 } >> |
  \mybreak

  << { dis2.( cisis8 dis } \\ { <b a dis,>8 q4 q q q8 } >> |
  << { fis'2 e4) \once\stemDown \once\ignore b'4( } \\ { r8 <b, g>4 q4.-> b4~ } >> |
  << { e4) e8.->( fis16 d4) d8.->( e16 } \\ { <b g>4 q <b e,> q } >> |
  \mybreak

  << { <cis b e,>8-.) r <b b'>4-> r <d b fis>( } \\ { s1 } >> |
  << { cis4) cis8. cis16 cis4( \once\slurDown\acciaccatura{e8} d8. cis16) } \\ { <b g>2 <b fis> } >> |
  << { cis2-> <cis ais>4.. b16 } \\ { <b eis,>2 e,~ } >> |
  \mybreak

  << { b'2.(^\markup{\italic "a tempo."} ais8. b16 } \\ { e,8 d4-> d8~ d <fis d>4 q8 } >> |
  << { d'2 cis) } \\ { r8 <b g e>4 q8~ q q4 q8 } >> |
  << { dis2.( cisis8 dis } \\ { <b a dis,>8 q4 q q q8 } >>
  \mybreak

  << { e1) } \\ { <g, e>8 q4 q4. q4~ } >> |
  << { c4 c8.->( d16 b4) b8.->( c16 } \\ { <g e>4 q <g d> q } >> |
  << { <a g c,>8_!) r <g' a, g>4 r <b, g d>4( } \\ { s1 } >> |
  \mybreak

  << { c4) c8.( d16 b4) b8.( c16 } \\ { <g e>4 q <g d> q } >> |
  << { <ais g>2.) s4 } \\ {cis,2( e4) r } >> |
  << { <d' fis, d>2 d4\arpeggio^( cis8. b16 } \\ { s2 <fis e!>2\arpeggio } >> |
  \mybreak

  << { <b fis d>2) r2 } \\ { s1 } >> |
  << { <cis b gis cis,>2 cis4. cis8 } \\ { s2 <a fis cis> } >> |
  << { <e' cis>1( } \\ { <a, e>2 gis2 } >> |
  \mybreak

  << { e'4) e8.->( f16 d4) d8.->( e16 } \\ { g,4 <a g> <a f> q } >> |
  << { <cis a e>8_.) r <a' a,>4-> r <cis, fisis,>4( } \\ { s1 } >> |
  << { <bis gis>4_.) bis8.->( cis16 ais4) ais8.->( bis16 } \\ { s4 dis,4 cis <cis dis> } >> |
  \mybreak

  << { <gis' bis,>8) r <gis' gis,>4-> r2 } \\ { s1 } >> |
  << { <dis cis ais dis,>2 dis4. dis8 } \\ { s2 <b gis dis> } >> |
  << { <fis' dis fis,>1( } \\ { b,2 ais } >> |
  \mybreak

  << { fis'4) fis8.->( g16 e4) e8.->( fis16 } \\ { a,4 a g <b g> } >> |
  << { <dis b fis>8) r <b b'>4-> r <b gis d>4->( } \\ { s1 } >> |
  << { ais4) ais8.->( b16 gis4) gis8.->( ais16 } \\ { cis,4 cis b <b cis> } >> |
  \mybreak

  << { fis'8) r ais8.->( b16 gis4) gis8.->( ais16 } \\ { ais,4 cis b! <b cis> } >> |
  << { <fis' ais,>4) b\rest b2\rest } \\ { s1 } >> |
  r1
  \mybreak

  << { b2.( ais8. b16 } \\ { r8 <fis d>4 q8~ q q4 q8 } >> |
  << { d'2 cis) } \\ { r8 <b g e>4 q8~ q q4 a8 } >> |
  << { dis2.( cisis8 dis } \\ { <b a dis,>8 q4 q <a dis,>4 q8 } >> |
  \mybreak

  << { e'1) } \\ { <g, e>8 q4 q4. q4~ } >> |
  << { c4 c8.->( d16 b4) b8.->( cis16 } \\ { <g e>4 q <g d> q } >> |
  << { <a g c,>8_!) r8 <a g g'>4-> r <b g d>4( } \\ { s1 } >> | % FIX-ME: slur in voice 1, last beat
  \mybreak

  << { c4) c8.->( d16 b4) b8.->( c16 } \\ { <g e>4 q <g d> q } >> |
  << { <ais g>2.) r4 } \\ { cis,2( e4) s } >> |
  \mybreak

  << { <d' fis, d> 2 d4->\arpeggio d8.( cis16) } \\ { s2 <fis, e!>\arpeggio } >> |
  \oneVoice <gis b cis gis'>2\fermata s2\fermata |
  \mybreak

  \key b \major \time 6/8
  e'!2.->^\markup{"Tempo I."}
  r8 fis,16-.( gis-. ais-. b-. cis8-.) r cisis8( |
  dis8)[^\markup{"Tempo I."} r16 cisis16( dis8] d)[ r16 cis16( d8] |
  cis4.~) cis8 dis!( e |
  \mybreak

  fis8 gis8.-> fis16 dis8) fis8.->( e16 |
  e4.~->) e4 dis8( |
  cis8\trill)[ r16 b16( cis8] dis)[ r16 cis( dis8] |
  fis8-!) e2 e8~ |
  \mybreak

  e8[ \tuplet 6/5 { <dis'-5>16 <cis-4> <b-3> <gis-2>16] <e-1>16[ <cis-4> <b-3> <gis-1> ais b <dis-5> <cis-4>16] } |
  <ais-2>2~-> \tuplet 3/2 { ais16 eis fis } gis32 ais b cis |
  \tuplet 5/3 { dis8 f e cisis dis } \tuplet 5/3 { d e dis cis d } |
  \mybreak

  cis4.~ \tuplet 7/6 { cis16( bis cis cisis dis e eis } |
  \tuplet 3/2 { fis16 fisis gis a ais b c a fis) } \tuplet 3/2 { eis( fis fisis gis a ais b gis eis) } |
  \mybreak

  e!4.~ e4 dis8 |
  cis8( dis8.-> cis16 gis4 cis8 |
  ais'4. \tuplet 4/3 { gis8 fis eis dis) } |
  cis8[( \acciaccatura{dis16 eis} dis8. cis16] \acciaccatura{cis8} gis4 cis8 |
  \mybreak

  \acciaccatura{fis,16 cis'} <ais'-5>8) <b-5>8.( ais16 \tuplet 4/3 { gis8 fis eis dis) } |
  cis8( dis cis gis4) cis8( |
  e2.) |
  \mybreak

  r8^\markup{\italic "risoluto."} \tuplet 11/8 { fis,16-. gis-. ais-. b-. cis-. dis-. e-. fis-. gis-. ais-. <b-1>-. } \tuplet 3/2 { <cis-2>16[ r16 dis16]( } |
  <b-1>4.)( <ais-4>4 <gis-3>8 |
  <fis-2>4. <e-1>4 <dis-4>8 |
  \mybreak

  <cis-3>8 <dis-4> <cis-3> <b-4 fisis-1>4_> ais8) |
  gis4.(\startTrillSpan \grace{fisis16 gis} ais4)\stopTrillSpan b8 |

  \trebleCadenza
  \bar "||"

  \time 4/4
  \accidentalStyle forget
  <b' dis,>8^\markup{\center-align "Adagio."} gis''16[( fis cis <b-1> <fis-4> <cis-2>)] <b-1>[ <fis-2> <b-1> fis' <b-5> \ottava #1 <fis'-1> <b-2> <cis-3>] |
  \accidentalStyle default
  <dis-4>1\fermata
  \ottava #0
  \bar "|."
}

lowerStaff = \relative c {
  \partial 8 { r8 } |
  << { s8 <fis-3>4 s8 <fis-3>4 } \\ { b,8^( fis' fis') b,,8^( f' f') } >> |
  << { s8 <e,-4>4 s8 <g-3>4 } \\ { b,8 e e' b, g' g' } >> |
  << { s8 a,4 s8 gis4 } \\ { b,8 a' a' b,, gis' gis' } >> |
  << { s8 gis,4 s8 fis4 } \\ { b,8 gis' gis' b,, fis' fis' } >> |

  << { s8 e,4 s8 fis4 } \\ { b,8 e e' b, fis' fis' } >> |
  cis,,8\sustainOn cis'([ gis' cis gis\sustainOff e']) |
  << { cis,2 s4 } \\ { cis8[^( e b' gis e' b)] } >> |
  fis,8\sustainOn([ cis' <ais'-1> <fis-3> e'\sustainOff ais,]) |

  << { s8 <fis>4 s8 <fis>4 } \\ { b,8^( fis' fis') b,,8^( f' f') } >> |
  << { s8 <e,>4 s8 <g>4 } \\ { b,8 e e' b, g' g' } >> |
  << { s8 a,4 s8 gis4 } \\ { b,8 a' a' b,, gis' gis' } >> |

  << { s8 g,4 s8 fis4 } \\ { b,8 g' gis'! b,, fis' fis' } >> |
  eis,,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' ais' fis\sustainOff cis' cis,]) |
  eis,8\sustainOn([ cis' b' eis, cis'\sustainOff cis,]) |
  fis,8\sustainOn([ cis' ais' fis cis'\sustainOff cis,]) |

  eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' b' g e' b\sustainOff]) |
  fis,8\sustainOn([ cis' <ais'> <fis> e' ais,\sustainOff]) |
  b,8\sustainOn([ fis' dis' b fis' fis,\sustainOff]) |

  << { s8 <fis>4 s8 <fis>4 } \\ { b,8^( fis' fis') b,,8^( f' f') } >> |
  << { s8 <e,>4 s8 <g>4 } \\ { b,8 e e' b, g' g' } >> |
  << { s8 a,4 s8 gis4 } \\ { b,8 a' a' b,, gis'! gis'! } >> |
  << { s8 g,4 s8 fis4 } \\ { b,8 g' g'! b,, fis' fis' } >> |

  << { s8 e,4 s8 fis4 } \\ { b,8 e e' b, fis' fis' } >> |
  cis,,8\sustainOn cis'([ gis' cis gis\sustainOff e']) |
  << { cis,2 s4 } \\ { cis8[^( e b' gis e' b)] } >> |

  fis,8\sustainOn([ cis' <ais'> <fis> e'\sustainOff ais,]) |
  << { s8 <fis>4 s8 <fis>4 } \\ { b,8^( fis'! fis'!) b,,8^( f' f') } >> |
  << { s8 <e,>4 s8 <g>4 } \\ { b,8 e e' b, g' g' } >> |

  << { s8 a,4 s8 gis4 } \\ { b,8 a' a' b,, gis'! gis'! } >> |
  << { s8 g,4 s8 fis4 } \\ { b,8 g' g'! b,, fis' fis' } >> |
  eis,,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' ais' fis\sustainOff cis' cis,]) |

  eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' ais' fis cis'\sustainOff cis,]) |
  eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' b' g\sustainOff e' b]) |

  fis,8\sustainOn([ cis' ais'\sustainOff fis e' ais,]) |
  b,8\sustainOn([ fis' dis' b fis'\sustainOff fis,]) |
  <ais,-5>8\sustainOn([ <cis-4> <fis-2> cis cis' fis,\sustainOff]) |
  <gis,-5>8\sustainOn([ <dis'-3> <fis-2> dis\sustainOff b' fis]) |

  gis,8\sustainOn([ cis eis cis b'\sustainOff eis,]) |
  fis,8\sustainOn([ cis' eis cis ais'\sustainOff eis]) |
  fis,8\sustainOn([ b dis b ais' dis,\sustainOff]) |
  eis,8\sustainOn([ b' dis b gis' dis\sustainOff]) |

  eis,8\sustainOn([ ais cisis ais gis'!\sustainOff cisis,]) |
  dis,8\sustainOn[ ais' fis' dis\sustainOff ais' fis] |
  ais,8\sustainOn[ eis' cisis' ais eis' eis,\sustainOff] |
  ais,8\sustainOn[ fis' dis' a fis' fis,\sustainOff] |

  ais,!8\sustainOn[ fisis' disis' ais! fisis'\sustainOff fisis, ] |
  ais,8\sustainOn[ gis' eis' b! gis'\sustainOff gis,] |
  ais,8\sustainOn[ gis' eis' ais, gis' gis,\sustainOff] |
  ais,8\sustainOn[ fis' dis' ais fis' fis,\sustainOff ] |

  ais,8\sustainOn[ fis' dis' gisis,\sustainOff fis' fis, ] |
  \tuplet 5/3 { ais,8\sustainOn[ eis' ais cisis ais] } eis'4.\fermata\sustainOff |

  eis,,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' ais' fis\sustainOff cis' cis,]) |
  eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' ais' fis\sustainOff e' ais,]) |
  eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |

  fis,8\sustainOn([ cis' b' g e' b\sustainOff]) |
  fis,8\sustainOn([ cis'\sustainOff <ais'> <fis> e' ais,]) |
  b,8\sustainOn([ fis' dis' b fis'\sustainOff fis,]) |
  <ais,>8\sustainOn([ <cis> <fis> cis cis'\sustainOff fis,]) |
  <gis,>8\sustainOn([ <dis'> <fis> dis b' fis\sustainOff]) |

  gis,8\sustainOn([ cis eis cis b' eis,\sustainOff]) |
  fis,8\sustainOn([ cis' eis cis ais' eis\sustainOff]) |
  fis,8\sustainOn([ b dis b ais'\sustainOff dis,]) |
  eis,8\sustainOn([ b' dis b gis'\sustainOff dis]) |

  eis,8\sustainOn([ ais cisis ais gis'\sustainOn cisis,]) |
  dis,8\sustainOn([ ais' fis' dis\sustainOff ais' fis]) |
  ais,8\sustainOn([ eis' cisis' ais eis' eis,\sustainOff]) |
  ais,8\sustainOn([ fis' dis' a fis' fis,\sustainOff]) |

  ais,8\sustainOn([ fisis' disis' ais! fisis' fisis,\sustainOff]) |
  ais,8\sustainOn([ gis' eis' b! gis' gis,\sustainOff]) |
  ais,8\sustainOn([ gis' eis' ais, gis' gis,\sustainOff]) |
  ais,8\sustainOn([ fis' dis' ais fis' fis,\sustainOff]) |

  ais,8\sustainOn([ fis' dis' gisis,\sustainOff fis' fis, ]) |
  \tuplet 5/3 { ais,8\sustainOn[ eis' ais cisis ais] } eis'4.\fermata\sustainOff |
  eis,,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |

  fis,8\sustainOn([ cis' ais' fis\sustainOff cis' cis,]) |
  eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' ais' fis\sustainOff cis' cis,]) |
  eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  fis,8\sustainOn([ cis' b' g e'! b\sustainOff]) |

  fis,8\sustainOn([ cis' <ais'>\sustainOff <fis> e' ais,]) |

  \time 4/4 \key b \minor % d \major

  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = #'(4 4)
  \tuplet 3/2 4 {
    b,8_\markup{\italic "sempre legato."} <eis_1> <fis_3> <g_2> <fis_1> <fis,_5>8 <b_3>8 <eis_1> <fis_3> <g_2> <fis_1> fis,8 |
    \bareTuplet
    <b-3>8 <fis'-1> <g-2>8 <a-1> g b,8 <e-4>8 fis g a g b,8 |

    fis'8 ais <b-1> <c-2> <b-1> b, <fis'-3>8 ais b <c-2> <b-1> b, |
    <e-4>8 ais b c b b, <e-4>8 ais b c b b, |
    e8 ais b cis! b b, <e-3>8 ais b cis b b, |

    fis'8 ais <b-1> <cis-2> <b-1> b, <fis'-3>8 ais b <cis-2> <b-1> b, |
    <e-4>8 ais b cis b b, <fis'-3>8 ais b cis b b, |
    gis'8 ais b cis b b, g' ais b cis b b, |

    <b-3>8 <eis-1> <fis-3> <g-2> <fis-1> fis, b eis fis g fis fis, |
    b8 <fis'-1> <g-2> <a-1> g b, <e-4>8 fis g a g b, |
    <fis'-3>8 ais b c b b, fis'8 ais b cis b b, |

    <c-4>8 <fis-2> <g-1> <a!-2> <g-1> g, c8 fis g a g g, |
    c8 fis g a g g, d'8 fis g a g g, |
    e'8 fis g a g g, d'8 fis g a g g, |

    c8 fis g a g g, d'8 fis g a g g, |
    <e'-2>8 <fis-1> e fis e d <cis-4>8 <d-1> cis d cis fis, |
    <b-3>8 <eis-1> <fis-3> <g-2> <fis-1> fis, ais8 eis' fis g fis fis, |

    b8 eis fis g fis fis, b8 eis fis g fis b, |
    <eis,-5>8 <bis'-3> <cis-2> <d-1> <cis-2> <eis,-5>8 <fis-4>8 <bis-1> <cis-2> <d-1> cis fis, |
    <fisis-4>8 <dis'-1> <e-2> <fis!-1> e fisis, gis8 <dis'-2> <e-1> fis! e gis, |

    <a-4>8 <gis'-1>( <a-3>) <bes-2> <a-1> a, <d-4>8 gis <a-1> <bes-2> <a-1> a, |
    e8 gis a bes a e <a-5>8 <dis-3> <e-1> <fis-2> <e-1> a, |
    gis8 <cisis-1> <dis-3> <eis-2> <dis-1> dis, fisis <cisis'-1> <dis-3> <e!-2> <dis-1> dis, |

    gis8 cisis dis e dis dis, gis8 cisis dis e dis gis, |
    fisis8 cisis' dis e dis <fisis,-5>8 <gis-4>8 <cisis-1> <dis-2> <e-1> dis gis,8 |
    a8 <eis'-1> <fis-3> <gis-2> <fis-1> a,8 ais8 eis' fis gis fis ais,8 |

    b8 <ais'-1>( <b-1>) <c-2> <b-1> b, e ais b c b b, |
    fis'8 ais b c b <b,-3> <eis,-5> cis' d e d eis, |
    fis8 bis <cis-3> <dis-2> <cis-1> cis, eis bis' <cis-3> <d-2> <cis-1> cis, |

    fis8 <bis-1> <cis-3> <dis-2> <cis-1> cis, eis bis' cis d cis cis, |
    fis8 bis cis d cis cis, fis bis cis d cis cis, |
    fis( bis cis d cis fis,) e'( d fis,) e'[( d fis,)] |

    b8 eis fis g fis fis, b eis fis g fis fis, |
    b8 fis' g a g b, e! fis g a g b, |
    fis'8 ais b c b b, fis' ais b c b b, |

    c8 fis g a! g g, d'8 fis g a g g, |
    c8 fis g a g g, d'8 fis g a g g, |
    e'8 fis g a g g, d'8 fis g a g g, |

    c8 fis g a g g, d' fis g a g g, |
    <e'-2>8 <fis-1> e fis e d <cis-4> <d-1> cis d cis fis, |

    <b-3>8 <eis-1> <fis-3> <g-2> <fis-1> fis, ais eis' fis g fis <fis,-4> |
  }                             % end of tuplet list

  % 2nd voice is strictly for the pedal notation (which didn't like the cross staff thing.)
  << { \once\bareTuplet \tuplet 3/2 { \oneVoice eis8(<cis'-3> <b'-1> <gis-4> <cis-2> <b-3> }
       \change Staff="upper" \once\stemDown <gis'_1>2) \change Staff="lower" } \\
     { s8\sustainOn s8 s4 s4\sustainOff } >> |

  \key b \major \time 6/8

  fis,,8\sustainOn([ cis' b' g e'! b])\sustainOff |
  fis,8\sustainOn([ cis' <ais'>\sustainOff <fis> e' ais,]) |
  << { s8 <fis>4 s8 <fis>4 } \\ { b,8^( fis' fis') b,,8^( f' f') } >> |
  << { s8 <e,>4 s8 <g>4 } \\ { b,8 e e' b, g' g' } >> |

  << { s8 a,4 s8 gis4 } \\ { b,8 a' a' b,, gis'! gis'! } >> |
  << { s8 g,4 s8 fis4 } \\ { b,8 g' g' b,, fis' fis' } >> |
  << { s8 e,4 s8 fis4 } \\ { b,8 e e' b, fis' fis' } >> |
  cis,,8\sustainOn cis'[ gis' cis gis e'\sustainOff] |

  << { cis,2 s4 } \\ { cis8[ e b' gis e' b] } >> |
  fis,8\sustainOn[ cis' ais' fis e'\sustainOff ais,] |
  << { s8 fis4 s8 fis4 } \\ { b,8 fis'! fis'! b,,8 f' f' } >> |

  << { s8 e,4 s8 g4 } \\ { b,8 e e' b, g' g' } >> |
  << { s8 a,4 s8 gis4 } \\ { b,8 a' a' b,, gis'! gis'! } >> |

  << { s8 g,4 s8 fis4 } \\ { b,8 g' g' b,, fis' fis' } >> |
  eis,,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  \repeat unfold 2 {
    fis,8\sustainOn([ cis' ais' fis\sustainOff cis' cis,]) |
    eis,8\sustainOn([ cis' b' eis, cis' cis,\sustainOff]) |
  }
  fis,8\sustainOn([ cis' b' g e'! b])\sustainOff |

  fis,8([ cis' ais' fis e' ais,]) |
  << { \tuplet 2/1 { \bareTuplet gis,4 dis' s gis, e' s } } \\ { gis,8 dis' b' gis, e' b' } >> |
  << { \tuplet 2/1 { \bareTuplet ais,4 fis' s b, fis' s } } \\ { ais,8 fis' cis' b, fis' dis' } >> |

  << { \tuplet 2/1 { \bareTuplet cis,4 ais' s dis, cis' s } } \\ { cis,8 ais' e' dis, cis' fisis } >> |
  << { \tuplet 2/1 { \bareTuplet e,4 b' s eis, gis s } } \\ { e8 b' e eis, gis d' } >> |
  \bassCadenza

  \time 4/4
  <fis b,>8\sustainOn b,,16_[( fis' b fis' b cis)] dis16[ cis b fis dis cis b fis] |
  b,1\fermata\sustainOff
}

%-------Typeset music and generate midi
\score {
    \context PianoStaff <<
        %-Midi instrument values at
        % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" \with {
          \consists "Span_arpeggio_engraver"
        } {
          \clef treble
          \global
          \upperStaff
        }
        \new Dynamics { \dynamicsMarkup }
        \new Staff = "lower" {
          \clef bass
          \global
          \lowerStaff
        }
    >>
    \layout{ }
    \midi  { \tempo 4. = 66 }
}
