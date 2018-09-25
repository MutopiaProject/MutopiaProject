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
	copyright = "Creative Commons Share-Alike 4.0"
	maintainer = "Sven Reichard"
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
  \layout{}
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
