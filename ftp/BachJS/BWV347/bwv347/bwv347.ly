\version "2.18.2"

\header{
  %indication d'entête et bas de page
  title = "Ich dank dir, lieber Herre"
  subtitle = "BWV 347"
  composer = "Johann Sebastian Bach"
  poet = "Vierstimmige Choräle"
  maintainer = "Laurent Ducos"

  % information exigées par mutopia
  mutopiatitle = "Ich dank dir, lieber Herre"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 347"
  date = "1784-1787"
  source = "Editions de J.P Kimberger - C.P.E Bach"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Laurent Ducos"
  maintainerEmail = "laurentdany@free.fr"

 footer = "Mutopia-2016/04/25-379"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
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
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  sold'4 fad' mi'-\fermata
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1/4)
	mi''4
	\set Timing.measureLength = #(ly:make-moment 4/4)
	re'' dod'' si' la'
	la'8 si' dod''4 si'-\fermata dod''
	re'' dod'' si' lad'
	si'2.-\fermata mi'4
	la' si' dod'' re''
	mi'' re''8 dod'' si'4-\fermata re''
	dod'' si' mi''4. re''8
	dod''8 si' la' si'dod''4 si'
	\set Timing.measureLength = #(ly:make-moment 3/4)
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
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  mi'4 red' si
        }
% partie b
	\set Timing.measureLength = #(ly:make-moment 1/4)
	dod''8 si'
	\set Timing.measureLength = #(ly:make-moment 4/4)
	la'4 la' sold' la'8 sol'
	fad'8 sold'! la'4 sold' lad'
	si'8 la'! sol'4 fad'8 mi' fad'4
	fad'2. mi'8 re'
	dod'4 re' mi' fad'8 sold'
	la'2 mi'4 si'
	la'8 sold' fad'4 mi' fad'8 sold'
	la'2 la'4 sold'
	\set Timing.measureLength = #(ly:make-moment 3/4)
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
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  si4. la8 sold4
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1/4)
	sold4
	\set Timing.measureLength = #(ly:make-moment 4/4)
	la8 si dod' re' mi'4 mi'
	re' mi' mi' mi'
	fad'8 si4 lad8 si4 dod'
	re'2. sold4
	la sold8 fad mi mi' re'4
	dod'8 re' mi' fad' sold'4 fad'
	fad'8 mi' re' dod' si4 dod'8 re'
	mi'4. re'8 dod'[ fad' si mi'16 re']
	\set Timing.measureLength = #(ly:make-moment 3/4)
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
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  si4 si, mi
	}
% partie b
	\set Timing.measureLength = #(ly:make-moment 1/4)
	dod4
	\set Timing.measureLength = #(ly:make-moment 4/4)
	fad8 sold la4 mi dod8 la,
	re4 dod8 re mi4 dod
	si, dod re8 sol fad4
	si,2. dod4
	fad mi8 re dod4 si,
	la,8 si, dod re mi4 si,
	fad8 sold la4 sold8 mi la4~
	la8 sold fad4 mi8 re mi4
	\set Timing.measureLength = #(ly:make-moment 3/4)
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
