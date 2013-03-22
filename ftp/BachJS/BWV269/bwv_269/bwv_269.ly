\version "2.16.1"

\header {
  %indication d'entête et bas de page
  title = "Aus meines Herzens Grunde"
  subtitle = "BWV 269"
  composer = "Johann Sebastian Bach"
  poet = "Vierstimmige Choräle"

  maintainer = "Laurent Ducos"

  % information exigées par mutopia
  mutopiatitle = "Aus meines Herzens Grunde (Chorale 1)"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 269"
  date = "1784-1787"
  source = "Editions de J.P Kimberger - C.P.E Bach"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Laurent Ducos"
  maintainerEmail = "laurentdany@free.fr"

 footer = "Mutopia-2013/03/22-378"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\paper {
  top-margin = 12
}

blanknotes = {
\override NoteHead #'transparent = ##t
\override Stem #'transparent = ##t
\override Flag #'transparent = ##t
 }
unblanknotes = {
\revert NoteHead #'transparent
\revert Stem #'transparent
\revert Flag #'transparent
}

\include "italiano.ly" % Permet d'entrer les notes en francais

#(set-global-staff-size 20)
Soprane =  \context Voice = "Soprane" {
%voix principale de la portée en clef de sol
	\set Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol \major
	\clef treble
	\voiceOne
	\repeat volta 2
	{
	  \partial 4
	  sol'
	  sol'2 re''4
	  si'4. la'8 sol'4
	  sol'4. la'8 si'4
	  la'2-\fermata si'4
	  re''2 do''4
	  si' la'2 |
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	  sol'2-\fermata
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	si'4
	\set Timing.measureLength = #(ly:make-moment 3 4)
	si'4 do'' re'' |
	re''4. do''8 si'4
	la'2-\fermata sol'4
	si'2 do''4
	re''2 do''4
	si'2.
	sol'2-\fermata  si'4
	re''2 do''4
	si'2 la'4
	sol'4. la'8 si'4
	la'2-\fermata si'4
	re''2 do''4
	si' la'2
	sol'2-\fermata

	\bar "|."
      }

Alto =  \context Voice = "Alto" {
%voix secondaire de la portée en clef de sol
	\set Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol\major
	\clef treble
	\voiceTwo
	\repeat volta 2 {
	  \partial 4
	  re'4
	  re' mi' re'
	  re'2 si4
	  mi'8 re' mi' fad' sol'4
	  fad'2 sol'4
	  re' mi' fad'
	  sol'2 fad'4
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	  re'2
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	sol'4~
	\set Timing.measureLength = #(ly:make-moment 3 4)
	sol'8 fad' mi' fad' sol'4~
	sol'8 la' sol' fad' sol'4
	fad'2 mi'4
	mi'4 fad'8 sol' la'4
	la' sol'4. fad'8
	sol'2 fa'4
	mi'2 sol'4
	la'4. sol'8 fad'4
	sol'2 fad'4~
	fad'8 mi' mi' fad' sol'4
	fad'2 sol'4
	la'2 sol'8 fad'
	sol'2 fad'4
	re'2
	\bar "|."
      }

Tenor =  \context Voice = "Tenor" {
%voix principale de la portée en clef de fa
	\set Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol \major
	\clef bass
	\voiceOne
	\repeat volta 2 {
	  \partial 4
	  si4
	  si do'8 si la4
	  sol fad sol
	  do'8 si do'4 re'
	  re'2 re'4
	  la si do'
	  re' mi' re'8 do'
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	  si2
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	re'4
	\set Timing.measureLength = #(ly:make-moment 3 4)
	re'4 do' si8 la
	si do' re'4 re'
	re'2 si4
	sol la mi'
	re'2 re'4
	re'2.
	do'2 re'4
	re'8 do' si4 do'
	re'2 re'8 do'
	si4 do' re'
	re'2 re'4
	re'2 mi'4
	mi'2 re'8 do'
	si2
	\bar "|."
      }

Basse =  \context Voice = "Basse" {
%voix secondaire de la portée en clef de fa
	\set Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol \major
	\clef bass
	\voiceTwo
	\tieUp
	\repeat volta 2 {
	  \partial 4
	  sol,4
	  sol mi fad4
	  sol re mi
	  do si,8 la, sol,4
	  re2 sol,4
	  fad, sol, la,
	  si, do re |
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	  sol,2
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	sol,4
	\set Timing.measureLength = #(ly:make-moment 3 4)
	sol,4 la, si, |
	si,4. la,8 sol,4
	re2 mi4~
	mi re do
	si,4. do8 re4
	sol,8 la, si,4 sol,
	do2 sol,4
	fad, sol, la,
	si, sol, re
	mi8 re do si, la, sol,
	re2 sol4~
	sol fad mi~
	mi8 re do4 re
	sol,2
	\bar "|."
      }

SopraneStaff = \context Staff = SopraneStaff <<
  \Soprane
  \Alto
>>


TenorStaff = \context Staff = TenorStaff <<
  \Tenor
  \Basse
>>

\score {
  \context PianoStaff <<
    <<
      \SopraneStaff
      \TenorStaff

    >>
  >>
  \layout { }
  \midi {
    %indication d'interprétation midi
    \tempo 4 = 72
  }
}
