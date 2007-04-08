\header {
  mutopiacomposer = "TallisT"
  mutopiainstrument = "Voice (SATB)"
  style = "Renaissance"
  copyright = "Public Domain"
  maintainer = "David Wake"
  source = "Cantiones quae ab argumento sacra vocantur, 1575"
  title = "O nata lux de lumine"
  composer = "Thomas Tallis"
  poet = "Anonymous (10th century)"
  enteredby = "dwake@stanfordalumni.org"
  moreInfo = "<p>Musical text was taken from <i>Cantiones quae ab argumento sacrae vocantur</i> (1575) via Anthony Greening's edition found in <i>The Oxford Book of Tudor Anthems</i>.  Accidentals above the note are <i>ficta</i> not found in the original.  Note values were halved.   Slurs were added.</p>"

 footer = "Mutopia-2007/04/03-949"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\version "2.7.38"
global = {
  \key bes \minor
  \time 3/2
}

words = \lyricmode {
 O na- ta lux de lu- mi- ne,
 Je- su re- demp- tor sae- cu- li,
 Di- gna- re cle- mens sup- pli- cum
 Lau- des pre- ces que su- me- re.
 Qui car- ne quon- dam con- te- gi
 Di- gna- tus es pro per- di- tis.
 Nos mem- bra con- fer ef- fi- ci,
 Tu- i be- a- ti cor- po- ris.
 Nos mem- bra con- fer ef- fi- ci,
 Tu- i be- a- ti cor- po- ris.
}

superiusMusic = \relative c'' { \partial 2. 

 d4^\markup { \hspace #-2 \bold \smallCaps Superius } es4 c4 | d2. a4 bes4 g4 | a2 e'4 f4 d4 e4~ | e4 c4 d4 bes4 (a2) | g2 r4

 d'4 c4 a4 | bes2. bes4 a4 a4 | g4. (f8 g8) a8 (bes4) c4 c4 | d2. bes4 c4 c4 | d2 r4

 f4 es4 c4 | d2. d4 c4 a4 | bes2. a4 g4 e4 | a2. d4 d4 cis4 | d2 r4

 a4 a4 g4 | a2. a4 a4 g4 | a2. d4 a4 bes4 | a2 g4 g2 fis4 | g2.

 a4 a4 g4 | a2. a4 a4 g4 | a2. d4 a4 bes4 | a2 g4 g2 fis4 | g2. \fermata s2. \bar "||"
}

discantusMusic = \relative c'' { 
 g4^\markup { \hspace #-2 \bold \smallCaps Discantus } g4 g4 | f4. (es8^\markup{ \smaller \natural } d4) d4 d4 d4 | e4. (d8 cis4) c'4 bes?4 bes4 | a2 a4 g2 f4^\markup{ \smaller \natural} | g2 r4

 d4 e4 f?4 | g2. d4 f4 f4 | es2. bes4 es4 es4 | d4. (es8 f4) g4 g4 c,4 | f2 r4

 f4 g4 a4 | bes2. f4 a4 a4 | g2. d4 e4 e4 | f4. (e8 f8) g8 (a4) g4 e4 | fis2 r4 

 f4 f4 d4 | f2. f4 f4 d4 | f2. f4 f4 d4 | f2 es2 d4 d4 | b2.

 f'?4 f4 d4 | f2. f4 f4 d4 | f2. f4 f4 d4 | f2 es2 d4 d4 | b2. \fermata s2. ||
}

contratenorMusic = \relative c' { 
 bes4^\markup { \hspace #-2 \bold \smallCaps Contratenor } c4 g4 | a4. (g8 f4) f4 d4 d'4 | cis4. (bes8^\markup { \smaller \natural } a2) f'4 g4 | e4 f2 bes,4 d4 d4 | d2 r4

 bes?4 a4 a4 | g2. bes4 c4 d4 | g,4. (a8 bes4) bes4 bes4 a4 | bes2. bes4 es4 es4 | d2 r4 

 d4 c4 c4 | bes4. c8 (d4.) es8 (f4) f4 | d2. a4 b4 cis4 | d2. d4 e4 e4 | d2 r4

 d4 d4 d4 | d2. d4 d4 d4 | d2. d4 d4 bes4 | d4. c8 (bes4) c4 (a4) a4 | g2.

 d'4 d4 d4 | d2. d4 d4 d4 | d2. d4 d4 bes4 | d4. c8 (bes4) c4 (a4) a4 | g2. \fermata s2. ||
}

tenorMusic = \relative c' { 
 g4^\markup { \hspace #-2 \bold \smallCaps Tenor } g4 c,4 | f4. (g8 a4) a4 g4 g4 | e2 r4 c'?4 d4 bes4 | c2 a4 d4. c8 (a4) | b2 r4

 g4 g4 f?4 | d2 g2 a4 f4 | bes4. (a8 g4) f4 es4 c4 | f2 f4 bes2 a4 | bes2 r4

 bes4 bes a4 | f2 bes2 c4 d4 | bes4. (a8 bes8) c8 (d4) g,4 g4 | a2. a4 bes?4 c?4 | a2 r4

 a4 a4 bes4 | a2. a4 a4 bes4 | a2. a4 a4 g4 | f2 g4 es4 (f4.) es8 | d2.

 a'4 a4 bes?4 | a2. a4 a4 bes4 | a2. a4 a4 g4 | f2 g4 es4 (f4.) es8 | d2. \fermata s2. ||
}

bassusMusic = \relative c' { 
 g4^\markup { \hspace #-2 \bold \smallCaps Bassus } c,4 es4 | d2. d4 g,4 bes4 | a2. a'4 bes?4 g4 | a2 f4 g4 d2 | g,2 r4 
 
 bes?4 c4 d4 | g,2 g4 g'4 (f4) d4 | es2. d4 c4 c4 | bes4. (c8 d4) es4 c4 c4 | bes2 r4 

 d4 es4 f4 | bes,2 bes4 bes'4 (a4) f4 | g2. f4 e4 e4 | d2. f4 g4 a4 | d,2 r4 

 d4 f4 g4 | d2. d4 f4 g4 | d2. d4 d4 g4 | d2 es4 c4 (d4) d4 | g,2.

 d'4 f4 g4 | d2. d4 f4 g4 | d2. d4 d4 g4 | d2 es4 c4 (d4) d4 | g,2. \fermata s2.
}

\score {

  \context ChoirStaff <<
    \context Staff = superiusStaff <<
      #(set-accidental-style 'modern-cautionary)
      \clef "treble"
      \context Voice = 
      superiusVoice { \oneVoice << 
      \set Staff.midiInstrument = "synth voice" 
	\global 
	\transpose g bes
        \superiusMusic 
      >> }
    >>
    \context Lyrics = superiusLyricsContext { s1 }

    \context Staff = discantusStaff <<
      #(set-accidental-style 'modern-cautionary)
      \clef "treble"
      \context Voice =
      discantusVoice { \oneVoice << 
      \set Staff.midiInstrument = "synth voice" 
	\global 
	\transpose g bes 
        \discantusMusic 
      >> }
    >>
    \context Lyrics = discantusLyricsContext { s1 }

    \context Staff = contratenorStaff <<
      #(set-accidental-style 'modern-cautionary)
      \clef "G_8"
      \context Voice =
      contratenorVoice { \oneVoice << 
      \set Staff.midiInstrument = "synth voice" 
	\global 
	\transpose g bes
        \contratenorMusic
      >> }
    >>
    \context Lyrics = contratenorLyricsContext { s1 }

    \context Staff = tenorStaff <<
      #(set-accidental-style 'modern-cautionary)
      \clef "G_8"
      \context Voice =
      tenorVoice { \oneVoice << 
      \set Staff.midiInstrument = "synth voice" 
	\global 
	\transpose g bes 
        \tenorMusic
      >> }
    >>
    \context Lyrics = tenorLyricsContext { s1 }

    \context Staff = bassusStaff <<
      #(set-accidental-style 'modern-cautionary)
      \clef "bass"
      \context Voice =
      bassusVoice { \oneVoice << 
      \set Staff.midiInstrument = "synth voice" 
	\global 
	\transpose g bes
        \bassusMusic
      >> }
    >>
    \context Lyrics = bassusLyricsContext { s1 }


    \context Lyrics = superiusLyricsContext \lyricsto superiusVoice \words
    \context Lyrics = discantusLyricsContext \lyricsto discantusVoice \words
    \context Lyrics = contratenorLyricsContext \lyricsto contratenorVoice \words
    \context Lyrics = tenorLyricsContext \lyricsto tenorVoice \words
    \context Lyrics = bassusLyricsContext \lyricsto bassusVoice \words

  >>
  
  \layout {
    \context {
      \Staff
    }
  }

  \midi { }
}
