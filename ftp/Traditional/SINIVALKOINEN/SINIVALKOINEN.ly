%Finnish Fol Song: SININEN JA VALKOINEN
\version "2.10.20"
\header {
dedication = "Omistettu siskolleni Amerikassa"
title = "Taivas on sininen ja valkoinen"
subtitle = "Kansanlaulu"
composer = "Finnish folk song"
arranger = "Arr. Tanja Kivi"
copyright = "Public Domain"
mutopiacomposer = "Traditional" 
mutopiainstrument = "Voice and Piano"
style = "Folk"
maintainer = "Tanja Kivi"
source = "Transcription"
 footer = "Mutopia-2007/08/07-1019"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
<<
  \new ChordNames \chordmode { \set chordChanges = ##t
a2:m d2:m a4:m e4:7 a2:m a2:m d4:m g4:7 c2 e2:7 
a2:m d2:m g2:7 c2 a2:m a4:m e4:7 a2:m a2:m }
  \new Staff { \override Staff.TimeSignature #'style = #'() \clef treble \time 4/4 \key a \minor 
a4 a8 c'8 e'8 e'8 e'8 d'8 c'8( [ b8) ] a8( [ gis8) ] a4 c'8( d'8) e'4 e'4 f'4 e'8( d'8) e'2 e'4 r4 
e'4 e'4 b'4 a'4 g'8( [ f'8) ] e'8( [ d'8) ] e'4 a8( [ b8)] c'8( [ d'8) ] e'8( [ d'8) ] c'4 b8 b8 a2 a4 r4 \bar "|." }
  \addlyrics { 
Tai4 -- vas8 on8 si8 -- ni8 -- nen8 ja8 val4 -- koi4 -- nen4 ja4 __ tah8 -- to8 -- si8 -- a4 __ tayn2 -- na;4 
niin4 on4 nuo4 -- ri4 sy4 --  da4 -- me4 -- ni4 a4 -- ja4 -- tuk4 -- si8 -- a8 tayn2 -- na.4  }
>>

\layout {}
\midi {}
}
