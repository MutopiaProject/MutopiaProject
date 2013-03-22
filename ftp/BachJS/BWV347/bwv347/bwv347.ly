\version "2.16.0"

\header{
  %indication d'entête et bas de page
  title = "Ich dank dir, lieber Herre"
  subtitle = "BWV 347"
  composer = "Johann Sebastian Bach"
  poet = "Vierstimmige Choräle"
  maintainer = "Laurent Ducos"

  % information exigées par mutopia
  mutopiatitle = "Ich dank dir, lieber Herre BWV 347"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Piano"
  date = "1784-1787"
  source = "Editions de J.P Kimberger-C.P.E Bach"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Laurent Ducos"
  maintainerEmail = "laurentdany@free.fr"
  lastupdated = "2013/02/27"

 footer = "Mutopia-2013/02/27-379"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\paper {
  top-margin = 12
}

\include "italiano.ly" % Permet d'entrer les notes en francais

Soprane =  \context Voice = "Soprane" {
%voix principale de la portée en clef de sol
	\set Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\voiceOne
 	\key la \major
	\repeat volta 2 {
	  \partial 4
	  la'4
	  la' la' la' si'
	  sol' fad' mi'-\fermata si'
	  dod'' si' la' sold'8 fad'
	  \set Timing.measureLength = #(ly:make-moment 3 4)
	  sold'4 fad' mi'-\fermata
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	mi''4
	\set Timing.measureLength = #(ly:make-moment 4 4)
	re'' dod'' si' la'
	la'8 si' dod''4 si'-\fermata dod''
	re'' dod'' si' lad'
	si'2.-\fermata mi'4
	la' si' dod'' re''
	mi'' re''8 dod'' si'4-\fermata re''
	dod'' si' mi''4. re''8
	dod''8 si' la' si'dod''4 si'
	\set Timing.measureLength = #(ly:make-moment 3 4)
	la'2.-\fermata
	\bar "|."
      }

Alto =  \context Voice = "Alto" {
%voix secondaire de la portée en clef de sol
	\set Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\voiceTwo
	\key la \major
	\repeat volta 2 {
	  \partial 4
	  mi'4
	  fad' mi' fad' fad'
	  mi' red' si sold'
	  la' sold'8fad' mi'2~
	  \set Timing.measureLength = #(ly:make-moment 3 4)
	  mi'4 red' si
        }
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	dod''8 si'
	\set Timing.measureLength = #(ly:make-moment 4 4)
	la'4 la' sold' la'8 sol'
	fad'8 sold' la'4 sold' lad'
	si'8 la' sol'4 fad'8 mi' fad'4
	fad'2. mi'8 re'
	dod'4 re' mi' fad'8 sold'
	la'2 sold'4 si'
	la'8 sold' fad'4 mi' fad'8 sold'
	la'2 la'4 sold'
	\set Timing.measureLength = #(ly:make-moment 3 4)
	mi'2.
	\bar "|."
      }

Tenor =  \context Voice = "Tenor" {
%voix principale de la portée en clef de fa
	\set Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\clef bass
	\voiceOne
 	\key la \major
	\repeat volta 2 {
	  \partial 4
	  dod'4
	  dod' dod'8 si la sold fad4
	  si4. la8 sold4 mi'
	  mi' red' dod'2
	  \set Timing.measureLength = #(ly:make-moment 3 4)
	  si4. la8 sold4
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	sold4
	\set Timing.measureLength = #(ly:make-moment 4 4)
	la8 si dod' re' mi'4 mi'
	re' mi' mi' mi'
	fad'8 si4 lad8 si4 dod'
	re'2. sold4
	la sold8 fad mi mi' re'4
	\ottava #1 dod''8 re'' mi'' fad'' mi''4 \ottava #0 fad'
	fad'8 mi' re' dod' si4 dod'8 re'
	mi'4. re'8 dod'[ fad' si mi'16 re']
	\set Timing.measureLength = #(ly:make-moment 3 4)
	dod'2.
	\bar "|."
      }

Basse =  \context Voice = "Basse" {
%voix secondaire de la portée en clef de fa
	\set Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\clef bass
	\voiceTwo
  	\key la \major
	\repeat volta 2 {
	  \partial 4
	  la8 sold
	  fad4 dod re red
	  mi si, mi, mi
	  la si dod' si8 la
	  \set Timing.measureLength = #(ly:make-moment 3 4)
	  si4 si, mi
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1 4)
	dod4
	\set Timing.measureLength = #(ly:make-moment 4 4)
	fad8 sold la4 mi dod8 la,
	re4 dod8 re mi4 dod
	si, dod re8 sol fad4
	si,2. dod4
	fad mi8 re dod4 si,
	la8 si dod' re' mi'4 si,
	fad8 sold la4 sold8 mi la4~
	la8 sold fad4 mi8 re mi4
	\set Timing.measureLength = #(ly:make-moment 3 4)
	la,2.
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
	\layout {
	}
	\midi {
%indication d'interprétation midi
		\tempo 4 = 72
	}

}
