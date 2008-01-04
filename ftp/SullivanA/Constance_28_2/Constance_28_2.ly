\version "2.10.10"

#(set-global-staff-size 17) 

\header {
 title = "I've found a Friend"
 poet = "James Grindlay Small (1817-88)"
 composer = "Sir Arthur Sullivan (1842-1900)"
 meter = "8.7.8.7.8.7.8.7"
 mutopiatitle = "I've found a Friend"
 mutopiacomposer = "SullivanA"
 mutopiapoet = "James Grindlay Small (1817-88)"
 mutopiaopus = ""
 mutopiainstrument = "Voice (SATB)"
 source = "Methodist Hymn Book 1904, No. 380"
 copyright = "Public Domain"
 style = "Hymn"
 maintainer = "Ian Matthews"
 maintainerEmail = "ilmatthe(at)telstra.com"
 lastupdated = "2008/Jan"
 footer = "Mutopia-2008/01/04-1203"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopranoNotes = { 
 \time 4/4
 \key f \major
 \clef treble
 \set Staff.midiInstrument = "voice oohs"

  \tempo 4 = 120
        \partial 4*1 a'4
	a' a' bes' g'
	c''4. d''8 c''4 bes'
	a' a' bes' g'
	g' f' r a'
	c'' bes' bes' a'
	a'4. g'8 f'4 f' 
	e' a' c'' b'
	b' a' r a'
	a' g'8 (a') bes'4 bes'
	a' g'8 (a') bes'4 c''
	d''4. c''8 bes'4 a'
	a' g' r c''
	c'' c'' f''4. a'8
	a'4 a' c''4. f'8
	f'4 f' a'4. g'8
	g'4 f' r2
	\bar "|."
}

altoNotes =  { 
 \time 4/4
 \key f \major
 \clef treble
 \set Staff.midiInstrument = "voice oohs"

        f'4
	f' f' e' e'
        f'4. f'8 f'4 f'
	f' f' e' e'
	e' f' r f'
	a' g' g' f'
	e'4. e'8 d'4 d' 
	c' e' a' gis'
	gis' a' r a'
	fis' e'8 (fis') g'4 g'
	fis' e'8 (fis') g'4 a'
	bes'4. a'8 g'4 f'
	f' e' r e'
	f' e' f'4. f'8
	e'4 d' c'4. d'8
	c'4 c' f'4. e'8
	e'4 f' r2

}

tenorNotes =  { 
 \time 3/4
 \key g \minor
 \clef bass
 \set Staff.midiInstrument = "voice oohs"

	c'4
	c' c' c' c'
	c'4. bes8 c'4 d'
	c' c' g bes
	bes a r c'
	c' c' c' c' 
	cis'4. cis'8 d'4 a 
	a c' e' d'
	d' c' r a
	c' c' bes d'
	d' d' d' ees'
	d'4. d'8 d'4 d'
	c' c' r c'
	c' bes a4. f8
	f4 f f4. bes8
	a4 a c'4. bes8
	bes4 a r2

}

bassNotes =  { 
 \time 3/4
 \key g \minor
 \clef bass
 \set Staff.midiInstrument = "voice oohs"

	f4
	f4 f g bes
	a4. bes8 a4 bes
	c' c c c
	c f r f
	e e f f8 (g)
	a4. a8 d4 d
	e e e e
	e a, r a
	d d g bes,8 (c)
	d4 d g f 
	bes4. bes,8 bes,4 b,
	c c r bes
	a g f4. d8
	c4 bes, a,4. bes,8
	c4 c c4. c8
	c4 f r2 

}

verseOne = \lyricmode { 
\set stanza = "1. " 
	I've found a Friend; O such a Friend!
	He loved me ere I knew Him;
	He drew me with the cords of love,
	And thus He bound me to Him:
	And round my heart still close -- ly twine
	Those ties which nought can sev -- er;
	For I am His, and He is mine,
	For ev -- er and for ev -- er.
 }

verseTwo = \lyricmode { 
\set stanza = "2. " 
	I've found a Friend; O such a Friend!
	He bled, He died to save me;
	And not a -- lone the gift of life,
	But His own self He gave me.
	Nought that I have mine own I'll call,
	I'll hold it for the Giv -- er;
	My heart, my strength, my life, my all
	Are His, and His for ev -- er.
 }

verseThree = \lyricmode { 
\set stanza = "3. "
	I've found a Friend; O such a Friend!
	All power to Him is giv -- en,
	To guard me on my on -- ward course
	And bring me safe to heav -- en.
	The e -- ternal glor -- ies gleam a -- far,
	To nerve my faint en -- deav -- or;
	So now to watch, to work, to war,
	And then to rest for ev -- er.

}

verseFour = \lyricmode {
\set stanza = "4. "
	I've found a Friend; O such a Friend!
	So kind, and true, and ten -- der!
	So wise a Coun -- sel -- lor and Guide,
	So migh -- ty a De -- fen -- der!
	From Him who loves now me so well
	What power my soul can sev -- er?
	Shall life or death? Shall earth or hell?
	No! I am His for ev -- er.
}

\score {
{
<<
\context Staff = TrebStaff 
  << 
  \context Voice = SVoice {
    \voiceOne \sopranoNotes 
    }
  \context Voice = AVoice {
    \voiceTwo \altoNotes
    }
  >>
\context Lyrics = verseone \lyricsto SVoice \verseOne
\context Lyrics = versetwo \lyricsto SVoice \verseTwo 
\context Lyrics = versethree \lyricsto SVoice \verseThree 
\context Lyrics = versefour \lyricsto SVoice \verseFour 
\context Staff = BassStaff
 <<
 \context Voice = TVoice {
  \voiceOne \tenorNotes
  }
 \context Voice = BVoice {
  \voiceTwo \bassNotes
  }
 >>
>>


}

 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }


 \layout { }
 }
