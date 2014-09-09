%---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----

%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.2"
\language "english"

% #(set-default-paper-size "letter")

#(set-global-staff-size 18)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
    %ragged-bottom = ##f
    %ragged-last-bottom = ##f
}

\header {
    title = "Prélude II."
    composer = "Claude Debussy (1862-1918)"
    opus = "CD 125; L.117"
    piece = \markup \italic \huge "Voiles"
    date = "1910"
    style = "Romantic"
    source = "Durand, 1910"

    maintainer = "Knute Snortum"
    maintainerEmail = "knute (at) snortum (dot) net"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Prélude 1: Danseuses de Delphes"
    mutopiaopus = "CD 125; L.117"
    mutopiacomposer = "DebussyC"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2014/05/26-1956"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
\include "debussy-L117-prel-2-defs.ly"

%------------Music

upperStaff = \relative c''' {
  \tempo "Modéré" 8 = 88
  r4^\dansUnRythme <gs e>8-- ~ ( q32 <fs d> <e c> <d bf> |
  <c af>8.. <c' gs>32 <bf fs>4 ) |
  r4 <gs e>8-- ~ ( q32 <fs d> <e c> <d bf> |
  <c af>4 ~ q16 <bf fs> <af e> <fs d> ) |
  <e c>2 ~ |
  q4 r |
  \clef bass
  r8 af,= ( bf <c c,> ) ~ |
  
  \barNumberCheck #8
  q4 ~ q8 r |
  r8 
  <<
    { 
      s4. | 
      r4 \clef treble \slurDown <gs''='' e>8-- ^\tresDoux ~ ( 
        q32 <fs d> <e c> <d bf> | 
      <c af>4 )  
    }
    \\
    { 
      \clef bass \slurUp \tieNeutral af,=8 ( bf <c c,> ) ~ | 
      q4 s4 |
      s4 
    }
  >>
  r4 |
  \stemUp \slurDown
  <gs''='' e>8-- ~ ( q32 <fs d> <e c> <d bf> <c af>4 ~ |
  q16 <bf fs>-. <af e>-. <fs d>-. ) <e c>4 ~ |
  q4 r |
  \stemNeutral \slurNeutral
  <gs' e>8-- ~ ( q32 <fs d> <e c> <d bf> <c af>4 ~
  q8.. <c' gs>32 <bf fs>4 ) |

}

lowerTop = \relative c {
  \voiceOne
  R1 * 2 |
  r4 s | 
  s2 |
  r8 \shapeSlurOne af _\touPP _( [ bf ] ) s |
  
  \barNumberCheck #8
  s2 | 
  r8 \shapeSlurOne af  _( [ bf ] ) s |
  s4 <d'=' d,>-- ~ ( |
  q8 <e e,> <d d,> <c c,> |
  <bf bf,>16 <af af,> <bf bf,>4 <af af,>8 ) |
  q2 |
  q2 |
  r8 \clef treble <af' e c af>-. ( <bf fs d bf>-. 
    \configLVTies <c af e c>-. ) \laissezVibrer \clef bass
  
}

lowerBottom = \relative c, {
  \voiceTwo
  s2 * 4 |
  s4 bf-. \pp ( |
  bf8-. bf-. r bf-. |
  bf4-. ) r |
  
  \barNumberCheck #8
  bf8-. ( bf-. r bf-. |
  bf4-. ) r |
  bf8-. ( bf-. r bf-. |
  bf4-. ) r |
  s2 |
  r8 bf4-. ( bf8-. ) |
  r8 bf4-. ( bf8-. |
  bf4-. ) s4 |
  bf8-. ( bf-. r bf-. |
  bf8-. )
}

lowerStaff = <<
  { \lowerTop }
  \\
  { \lowerBottom }
>>

dynamics = {
  s4 s4 -\pTresDoux |
  s4 \< s4 \> |
  s4 \! s8 \p s8 \> |
  s4 \piuP s16 s \> s s \! |
  s2 |
  s2 |
  s2 -\ppExpr |
  
  \barNumberCheck #8
  s2 |
  s2 |
  s4 \< s4 \! |
  s2 * 4 |
  s2 \pp |
  s4 \< s4 \> |
  s2 \pp |
}

%-------Typeset music 
\score {
    \removeWithTag #'played
    \context PianoStaff <<
        %\set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \layout{ 
      \context {
        \PianoStaff
        \consists #Span_stem_engraver
      }
    }
}
%-------generate Midi
\score {
    \removeWithTag #'printed
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \midi  { \tempo 4 = 40 }
}
