%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                FILE AnDieMusik.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                   FRANZ SCHUBERT: Gesang "An die Musik", für eine Singstimme mit Klavierbegleitung
%                                           WITH SEPARATE SCORE AND MIDI OUTPUTS
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.27"
\include "italiano.ly"

\paper {

% #(set-paper-size "letter")
% #(set-paper-size " a4")
 paper-height = 279\mm
 paper-width = 210\mm
 line-width = 180\mm
 between-system-padding = #0.5
 between-system-spacing = #0.5
}

\header {
 title = \markup { \fontsize #1.5 "An die Musik" }
 subtitle = \markup { \fontsize #0.1 \bold "Franz von Schober" \small "(1798-1882)" }
 subsubtitle = " "
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 547 (Op. 88 N° 4, 1817)" }
% MUTOPIA
 mutopiatitle = "An die Musik"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Franz von Schober (1798-1882)"
 mutopiaopus = "D 547 (Op. 88 No 4)"
 mutopiainstrument = "Voice, Piano"
 date = "1817"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.dlib.indiana.edu/variations/scores/"
 footer = "Mutopia-2007/07/12-1001"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                            COMMANDS AND FUNCTIONS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          1. TO IMPROVE THE SCORE      
%
% SHIFTING A DYNAMIC TO THE RIGHT
shiftDynR = \once \override DynamicText #'extra-offset = #'(1.5 . 0)
shiftPinR = \once \override Hairpin #'extra-offset = #'(2 . 0)
shiftPinL = \once \override Hairpin #'extra-offset = #'(-0.5 . 0)
shiftCrescR = { \set crescendoText = \markup { \fontsize #-1 \italic "   cresc." } \set crescendoSpanner = #'dashed-line }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                     2. TO IMPROVE THE MIDI OUTPUT VOLUME      
%
% 1. A f (forte) has been "hidden" at the beginning of the melody (for the default volume has no consistency).
hideDyn = \once \override DynamicText #'transparent = ##t
% Note: as the "forte-piano" reacts as a "piano" only, it has been changed into "forte + piano"

% 2. A RANGE OF VOLUME HAS BEEN DETERMINED FOR EACH INSTRUMENT.
%    Example:  \set Staff.midiMinimumVolume = #0.3  \set Staff.midiMaximumVolume = #0.7
% The volume range for the clarinet has been fully extended from 0 to 1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      GENERAL STRUCTURE OF THIS FILE
%
%  Melody and both piano staves are cut in three parts : one introduction, one body and one end.
%  Each part has its own identifier.
%  Lyrics are made up of two strophes.
%
%  Score and midi outputs are dissociated:
%
%  A. PREPARING NOTES (SHARED BY BOTH OUTPUTS)
%     1. MELODY: Notes
%     2. PIANO RIGHT HAND: Notes
%     3. PIANO LEFT HAND: Notes
%  B. PREPARING THE SCORE OUTPUT
%     4. MELODY: Notes for the score output
%     5. MELODY: Dynamics for the score output (none)
%     6. LYRICS
%     7. PIANO RIGHT HAND: Notes for the score output
%     8. PIANO LEFT HAND: Notes for the score output
%     9. PIANO STAVES: Dynamics for the score output
%    10. SCORE OUTPUT
%  C. PREPARING THE MIDI OUTPUT
%    11. MELODY: Notes for the Midi output
%    12. MELODY: Dynamics for the Midi output (none)
%    13. PIANO RIGHT HAND: Notes for the Midi output
%    14. PIANO LEFT HAND: Notes for the Midi output
%    15. PIANO STAVES: Dynamics for the Midi output
%    16. MIDI OUTPUT
%
% 	                        WELCOME ANY SUGGESTION TO IMPROVE SCORE OR MIDI OR ENCODING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      A. PREPARING NOTES (SHARED BY BOTH OUTPUTS)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                1. MELODY: Notes
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% INTRO

melNoteIntro = \relative do'' {

% 1 - 2
 R1
 R1
}
 
% BODY

melNoteBody = \relative do'' {
 \repeat volta 2 {
 
% 3 23
 r4\f la re re

% 4 24
 fad,2. si4 %\break
 \appoggiatura si8 re,4. re8 fad[( mi)] re[( mi)]
 fad4 re r2
 r4 la' si si

% 8 28
 dod,4. dod8 re4. re8 %\break
 fad8[( mi)] re[( mi)] fad2
 R1
 r4 re' mi4. sol,8

% 12 32
 fad4( la2) si8[( dod)] %\break
 re4. fad8 mi[( dod)] la[( sol)]
 \appoggiatura sol8 fad4 fad r la
 si4. si8 si4 dod8[( re)]

% 16 36
 re4. re8 fad4. mi8 %\break
 \appoggiatura mi4 re2 r8 si dod re
 re4( fad,8) fad la4( dod,8) dod
 re2 r2

% 20 40
 R1
 R1
 R1
 } % fin du repeat
}

% END

melNoteEnd = \relative do'' {

% 43
 R1
 \bar "|."
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                2. PIANO RIGHT HAND: Notes
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

upNoteIntro = \relative do' {

% 1
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>->[ <la re la'> <la re la'> <la re la'>] <la dod sol'>[ <la dod sol'> <sol la dod mi> <sol la dod mi>]
}

% BODY

upNoteBody = \relative do {
 \repeat volta 2 {

% 3 23
 <fad la re>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 
% 4 24
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <fad re' fad>[ <fad re' fad> <si re fad> <si re fad>]
 r8 <la re fad>[ <la re fad> <la re fad>] r <la dod sol'>[ <la dod sol'> <la dod sol'>]
 r8 <la re fad>[ <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>8[ <la re la'> <la re la'> <la re la'>] <si re si'>[ <si re si'> <si re si'> <si re si'>] \clef bass
 
% 8 28
 r8 <mi, sol dod>[ <mi sol dod> <mi sol dod>] r <re fad re'>[ <re fad re'> <re fad re'>] \clef treble
 r8 <sol la mi'>[ <sol la mi'> <sol la mi'>] r <fad la fad'>[ <fad la fad'> <fad la fad'>]
 <la dod mi>8[ <la dod mi> <la dod la'> <la dod la'>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]
 
% 12 32
 <re fad la>8[ <re fad la> <dod mi la> <dod mi la>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]
 r8 <la, re fad>[ <la re fad> <la re fad>] <la dod sol'>[ <la dod sol'> <do re la'> <do re la'>]
 r8 <si re si'>[ <si re si'> <si re si'>] r <re fa si>[ <re fa si> <re fa si>]
 
% 16 36
 r8 <re fad! la>[ <re fad la> <re fad la>] r <mi fad dod'>[ <mi fad dod'> <mi sol dod>]
 r8 <re fad re'>[ <re fad re'> <re fad re'>] r <re fa si>[ <re fa si> <re fa si>]
 r8 <re fad! la>[ <re fad la> <re fad la>] r <sol, la dod>[ <sol la dod> <sol la dod>]
 <fad la re>8[ <re' fad re'> <re fad re'> <re fad re'>] <re fad re'>[ <re fad re'> <mi sol dod> <fad la re>]
 
% 20 40
 << { <la dod>8^>[ ^(<sol si>) <re sol si>^. <re sol si>^.] <re sol si>[ <si sol' si> <re sol si> <mi sol si>] } \\
    { re4 } >>
 <sol si>8[( <la, fad' la>) <la fad' la>_. <la fad' la>_.] <la fad' la>[ <la fad' la> <dod fad la> <re fad la>]
 << { <red fad la>8^>[ ^(<mi sol>) <si mi sol>^. <si mi sol>^.] <dod mi sol>^>[ _(<sol la dod mi>) <sol la dod mi>_. <sol la dod mi>_.] } \\
    { si4 } >>
 } % fin du repeat
}

% END

upNoteEnd = \relative do' {

% 43
 <sol la dod mi>8^>[( <fad la re>) <fad la re>-. <fad la re>-.] <fad la re>4 r4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                3. PIANO LEFT HAND: Notes
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

downNoteIntro = \relative do {

% 1
 r4 la( re) re^.
 fad,2 la4-. la,-.
}

% BODY

downNoteBody = \relative do, {
 \repeat volta 2 {

% 3 23
 re r r2

% 4 24
 r4 fad( si) sold-.
 la4 r la r
 re4^. la( re) re^.
 fad,2(sol)

% 8 28
 la4( lad si2)
 dod( re)
 la4( la' sold sol)
 fad4( re dod la)

% 12 32
 re4( la8[ la'] sold4 sol)
 fad4(re dod4. la8)
 re2( mi4 fad)
 sol2( sold)

% 16 36 
 la2( lad)
 si2( sold)
 la2( la,)
 re4 r r2

% 20 40
 <sol,, sol'>2 r8 sol'-.[ si-. dod-.]
 <re, re'>2 r8 re'^.[ mi^. fad^.]
% <sol,, sol'>8 ~ <sol sol'>4. r8 sol'-.[ si-. dod-.]
% <re, re'>8 ~ <re re'>4. r8 re'^.[ mi^. fad^.]
 <sol, sol'>2 la
 } % fin du repeat
}


% END

downNoteEnd = \relative do, {

% 43
 <re re'>2. r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           B. PREPARING THE SCORE OUTPUT
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           4. MELODY: Notes for the Score output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreMelNoteAll = {
 \override DynamicTextSpanner #'dash-period = #-1.0
 \clef treble
 \time 2/2
 \key re \major
 s1*0^\markup { \bold \large \bigger { \hspace #-3.0 \italic Mäßig. } }
 \melNoteIntro \melNoteBody \melNoteEnd
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           5. MELODY: Dynamics for the Score output (none)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           6. LYRICS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% FIRST STROPHE

lyrOne = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "1. "
% 3 - 9
 Du1 hol -- de Kunst, in wie -- viel grau -- en Stun -- den,
 Wo mich des Le -- bens wil -- der Kreis um -- strickt,
 
% 11 - 19
 Hast du mein Herz zu war -- mer Lieb ent -- zun -- den,
 Hast mich in ei -- ne beß -- re Welt ent -- rückt,
 in ei -- ne beß -- re Welt ent -- rückt.
}

% SECOND STROPHE

lyrTwo = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "2. "

% 23 - 29
 Oft hat ein Seuf -- zer, dei -- ner Harf ent -- flos -- sen,
 Ein sü -- ßer, hei -- li -- ger Ak -- kord von dir
 
% 31 - 39
 Den Him -- mel beß -- rer Zei -- ten mir er -- schlos -- sen,
 Du hol -- de Kunst, ich dan -- ke dir da -- für,
 Du hol -- de Kunst, ich dan -- ke dir!
}
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           7. PIANO RIGHT HAND: Notes for the Score output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


scoreUpNoteAll = {
 \clef treble
 \time 2/2
 \key re \major
 \upNoteIntro \upNoteBody \upNoteEnd
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           8. PIANO LEFT HAND: Notes for the Score output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreDownNoteAll = {
 \clef bass
 \time 2/2
 \key re \major
 \downNoteIntro \downNoteBody \downNoteEnd
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           9. PIANO STAVES: Dynamics for the Score Output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

scorePiaDynIntro = \relative do' {

% 1
 s2\p s2
 s1
}

% BODY

scorePiaDynBody = \relative do {
 \repeat volta 2 {

% 3 23
 \shiftDynR s2\pp s2

% 4 24
 s1  s1  s1  s1
 
% 8 28
 s1  s1  s1  s1
 
% 12 32
 s1  s1  s1
 \shiftCrescR s2\cr s2\!

% 16 36
 s8 s8\cr s8 s8\! s8 \shiftPinL s8\decr s8 s8\!
 s2 s8 s8\p s4
 s1
 \shiftPinR s2\cr s8 s8 s8\! s8
 
% 20 40
 \shiftDynR s1\fp
 \shiftDynR s1\fp
 s1
 } % fin du repeat
}

% FIN

scorePiaDynEnd = \relative do' {

% 43
 s1
}

scorePiaDynAll = {
 \override DynamicTextSpanner #'dash-period = #-1.0
 \scorePiaDynIntro \scorePiaDynBody \scorePiaDynEnd
}

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                              10. SCORE OUTPUT (no \midi)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "mel" { \autoBeamOff \scoreMelNoteAll }
  \new Lyrics \lyricsto "mel" \lyrOne
  \new Lyrics \lyricsto "mel" \lyrTwo
  \new PianoStaff <<
	  \new Staff = "up" { \autoBeamOff \scoreUpNoteAll }
   \new Dynamics = "dynamics" \scorePiaDynAll
   \new Staff = "down" { \autoBeamOff \scoreDownNoteAll }
  >>
 >>
 \layout {
 	\context { \RemoveEmptyStaffContext }
 	\context {
   \Score
   \override VerticalAxisGroup #'remove-first = ##t
	  \override SpacingSpanner #'spacing-increment = #1.0
	 }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \cresc works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #0

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"

   \override TextScript #'font-size = #2
   \override TextScript #'font-shape = #'italic

   \consists "Skip_event_swallow_translator"

   \consists "Axis_group_engraver"
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        C. PREPARING THE MIDI OUTPUT
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        11. MELODY: Notes for the midi output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

midiMelNoteAll = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \clef treble
 \time 2/2
 \key re \major
 \melNoteIntro \melNoteBody \melNoteBody \melNoteEnd
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        12. MELODY: Dynamics for the Midi output (none)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        13. PIANO RIGHT HAND: Notes for the Midi Output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

midiUpNoteAll = {
 \set Staff.midiInstrument = "acoustic grand"
% \set Staff.midiMinimumVolume = #0.1
% \set Staff.midiMaximumVolume = #0.6
 \clef treble
 \time 2/2
 \key re \major
 \upNoteIntro \upNoteBody \upNoteBody \upNoteEnd
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        14. PIANO LEFT HAND: Notes for the Midi Output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


midiDownNoteAll = {
 \set Staff.midiInstrument = "acoustic grand"
% \set Staff.midiMinimumVolume = #0.1
% \set Staff.midiMaximumVolume = #0.4
 \clef bass
 \time 2/2
 \key re \major
 \downNoteIntro \downNoteBody \downNoteBody \downNoteEnd
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        15. PIANO STAVES: Dynamics for the Midi Output
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO

midiPiaDynIntro = \relative do' {

% 1
 s2\p s2
 s1
}

% BODY

midiPiaDynBody = \relative do {

% 3 23
 s2\pp s2

% 4 24
 s1  s1  s1  s1
 
% 8 28
 s1  s1  s1  s1
 
% 12 32
 s1  s1  s1
 s1\cr

% 16 36
 s2\!\ff s2\decr
 s2\!\mf s2\p
 s1
 s1\cr
 
% 20 40
 s8\!\f s8\p s2.
 s8\f s8\p s2.
 s1
}

% FIN

midiPiaDynEnd = \relative do' {

% 43
 s1
}

midiPiaDynAll = {
 \midiPiaDynIntro \midiPiaDynBody \midiPiaDynBody \midiPiaDynEnd
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                         16. MIDI OUTPUT (no \layout)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "mel" { \midiMelNoteAll }
  \new PianoStaff <<
   \new Staff = "up" << \midiUpNoteAll \midiPiaDynAll >>
   \new Staff = "down" << \midiDownNoteAll \midiPiaDynAll >>
  >>
 >>
 \midi {
	 \context {
   \Score
	  tempoWholesPerMinute = #(ly:make-moment 90 4)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                END OF THE FILE AnDieMusik.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
