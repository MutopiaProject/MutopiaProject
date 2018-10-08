\version "2.18.2"
%\include "notes.lyi"

\include "articulate.ly"
\header {
	title = "Fuga V"
	opus = "BWV 850"
	composer = "Johann Sebastian Bach (1685-1750)"

	mutopiatitle = "Das Wohltemperierte Clavier I, Fuga V"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 850"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Breitkopf & Härtel, 1866, Plate XIV, p.20-21"

	style= "Baroque"
	maintainer = "Sven Reichard"
	license = "Creative Commons Attribution-ShareAlike 4.0"
	footer = "Mutopia-2018/10/08-2233"
	copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
	tagline = ##f
}

\include "bwv850b-notes.ly"

\score {
%\articulate
  \new PianoStaff <<
    \new Staff = "up"{
      \set Staff.midiInstrument="harpsichord"
      \global \clef treble
      << \soprano
	 \alto
	 >>
    }
    \new Staff = "down"{
      \set Staff.midiInstrument="harpsichord"
      \global \clef bass
      <<
	\tenor
	\bass
      >>
      }
  >>
  \midi{\tempo 4=72}
  \layout{  }

}

%\score {
%		\new PianoStaff <<
%			#(set-accidental-style 'piano)
%			\set PianoStaff.connectArpeggios = ##t
%			\new Staff = "RH" %\rightHand
%			\new Staff = "LH" %\leftHand
%		>>
%		\midi{}
%		\layout{}
%}
