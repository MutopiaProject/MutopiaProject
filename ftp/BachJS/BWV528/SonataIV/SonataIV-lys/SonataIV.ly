\version "2.8.8"

\header {
  title =       "Sonata IV"
  opus =        "BWV 528"
  composer =    "Johann Sebastian Bach (1685-1750)"
  enteredby =   "Felix Braun"
  
  %mutopia headers
  mutopiatitle = "Trio Sonata IV in e minor"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 528"
  mutopiainstrument = "Organ"
  source = "Neue Bach-Ausgabe BA 5057"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Felix Braun"

 footer = "Mutopia-2016/05/03-780"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"
\include "Adagio.ly"
\include "Andante.ly"
\include "Allegro.ly"

staffSettings = {
		\set Staff.midiInstrument = "church organ"
		#(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
                #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
                #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
                #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
 		#(override-auto-beam-setting '(end 1 24 3 8) 1 8)
                #(override-auto-beam-setting '(end 1 24 3 8) 2 8)
                \set tupletSpannerDuration = #(ly:make-moment 1 8)
		\override TupletNumber #'transparent = ##t
}

%#(set-default-paper-size "a4")
\book {
	% first movement: Adagio--Vivace
	\score {
		<<
			% we have a tempo change in this movement, don't print
			% metronome markings
			\override Score.MetronomeMark #'transparent = ##t
			\new GrandStaff <<
				#(set-accidental-style 'piano)
				\new Staff = "right" {
					\staffSettings
		    			\key e \minor
					\clef violin
					\time 4/4
					\sintro

					% the actual tempo-change is in
					% the alto voice
					\time 3/4 <<{dis''4}{s8 s8^vivace}>>
					\sopranA
				}
				\new Staff = "left" {
				\staffSettings
					\key e \minor
					\clef violin
					\time 4/4 
					\aintro

					\time 3/4 h8 \tempo 8=186
					\altA
				}
    			>>
	 		\new Staff = "feet" {
				#(set-accidental-style 'modern)
				\staffSettings
				\key e \minor
				\clef bass
				\time 4/4
				\bintro

				\time 3/4 h,8
				\bassA
    			}
		>>
		\header
		{
			piece = "1. Adagio"
		}
		\layout{
			indent = #0
		}
		\midi {\tempo 8=68}
	}

	% second movement: Andante
	\score {
		<<
			\new GrandStaff <<
				#(set-accidental-style 'piano)
				\new Staff = "right" {
					\staffSettings
		    			\key h \minor
					\clef violin
					\time 4/4
					\sopranB
				}
				\new Staff = "left" {
					\staffSettings
					\key h \minor
					\clef violin
					\time 4/4 
					\altB
				}
    			>>
    			\new Staff = "feet" {
    				#(set-accidental-style 'modern)
				\staffSettings
				\key h \minor
				\clef bass
				\time 4/4
				\bassB
    			}
		>>
		\header
		{
			piece = "2. Andante"
			opus = ""
		}
		\layout{
			indent = #0
	  	}
	  	\midi {
			\tempo 8=78
		}
	}

	% third movement: un pocc'allegro
	\score {
		<<
			\new GrandStaff <<
				#(set-accidental-style 'piano)
				\new Staff = "right" {
					\staffSettings
		    			\key e \minor
					\time 3/8
					\clef violin
					\sopranC
				}
				\new Staff = "left" {
					\staffSettings
					\key e \minor
					\time 3/8 
					\clef violin
					\altC
				}
    			>>
    			\new Staff = "feet" {
    				#(set-accidental-style 'modern)
				\staffSettings
				\key e \minor
				\clef bass
				\time 3/8
				\bassC
    			}
		>>
		\header
		{
			piece = "3. Un poc'allegro"
			opus = ""
		}
		\layout{
			indent = #0
		}
		\midi {
			\tempo 8=118
		}
	}
}
