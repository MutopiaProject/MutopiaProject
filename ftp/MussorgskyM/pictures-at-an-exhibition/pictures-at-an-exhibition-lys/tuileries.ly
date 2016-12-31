\version "2.18.2"
\language "english"

\header {
  %title        = "Tuileries (Dispute d'enfants après jeux.)"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

allegretto = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Allegretto non troppo, capriccioso" 
}

conEspress = \markup { \italic "con espressione" }
espress = \markup { \italic "espressivo" }

forceShiftOn = \override NoteColumn.force-hshift = #1.4
forceShiftOff = \override NoteColumn.force-hshift = #0

oneVoiceRest = { \oneVoice r8 \voiceOne }
twoVoiceRest = { \oneVoice r8 \voiceTwo }

highVoice = \relative c' {
  | <fs b fs'>4 \p ( <es b' ds>8 ) \oneVoiceRest <fs b fs'>4 ( <es b' ds>8 ) \oneVoiceRest
  | fs'8 ( gs16 fs) es-. ds-. css-. ds-. es-. ds-. fs-. es-. gs-. fs-. es-. ds-.
  | <fs, b fs'>4 ( <es b' ds>8 ) \oneVoiceRest <fs b fs'>4 ( <es b' ds>8 ) \oneVoiceRest
  | fs'8 ( gs16 fs) es-. ds-. css-. ds-. es-. ds-. fs-. es-. gs-. fs-. es-. ds-.
  \oneVoice
  | <gs, b gs'>4 ( <fs b ds>8 ) r <gs b gs'>4 ( <fs b ds>8 ) r
  \voiceOne
  | gs'8 ( b16 as ) gs-. fs-. es-. ds-. css-. ds-. es-. ds-. gs-. fs-. es-. ds-.
  \oneVoice
  | <gs, b gs'>4 ( <fs b ds>8 ) r <gs b gs'>4 ( <fs b ds>8 ) r
  
  \barNumberCheck #8
  | <g cs a'>4 <fs cs' ds>8 r \voiceOne a'8 ( cs16 b ) a-. gs-. fs-. e-.
  \oneVoice
  | <g, cs a'>4 <fs cs' ds>8 r \voiceOne a'8 ( cs16 b ) a-. gs-. fs-. e-.
  \oneVoice
  | e'16-. ds-. cs-. b-. a-. gs-. fs-. e-. es8 ( fs gs cs, )
  \voiceOne
  | <fs, b fs'>4 ( <es b' ds>8 ) \oneVoiceRest <fs b fs'>4 ( <es b' ds>8 ) \oneVoiceRest
  | fs'8 ( gs16 fs) es-. ds-. css-. ds-. es-. ds-. fs-. es-. gs-. fs-. es-. ds-.
  \oneVoice
  | <ds as' fs'>4 ( <fs b ds>8 ) r r2
  | as,4. ( b8 bs fs' ) bs, ( b )
  \shape #'((0 . 3) (0 . 2) (0 . 1) (0 . 0)) Slur
  | as4 ( ~ as8 b16 cs b8 ) b'16-. gs-. fs-. d-. b-. fs-.
  
  \barNumberCheck #16
  | as4. ( b8 bs es ds es )
  \voiceOne
  | as,4 ( bs8 es ) as,4 ( bs8 es )
  \oneVoice
  | as,4. ( b8 bs fs' ) bs, ( b )
  \shape #'((0 . 0) (0 . -1) (1 . -1) (0 . 0)) Slur
  | \slurDown as4 ( ~ \stemUp as8 b16 cs ) \slurNeutral \stemNeutral b4 ( as16 b cs d )
  \voiceOne
  | g4 ( ~ g16 fs a g cs, css ds e fs e a g ) 
  | g4 ( ~ g16 fs a g cs, css ds e fs e fs g )
  | fs4 ( b,16 bs cs d ) fs4 ( b,16 bs cs d )
  | \stemDown <g, cs a'>4 \mf ( \stemUp <fs cs' ds>8 ) cs''16 ( [ b ] ) 
    a-. g-. fs-. e-. ds-. cs-. b-. a-.
  
  \barNumberCheck #24
  \oneVoice
  | <g cs a'>4 ( <fs cs' ds>8  ) e''16 ( [ ds ] ) cs-. b-. a-. g-. fs-. e-. ds-. cs-.
  | <gs b gs'>4 \p ( <fs b ds>8 ) r <gs b gs'>4 ( <fs b ds>8 ) r
  | <e' e'>4 ( <ds ds'>8 <cs cs'> <fss, fss'> <gs gs'> <cs cs'> <ds ds'> )
  \voiceOne
  | <fs, b fs'>4 \pp ( <es b' ds>8 ) \oneVoiceRest <fs b fs'>4 ( <es b' ds>8 ) \oneVoiceRest
  | fs'8 ( gs16 fs) es-. ds-. css-. ds-. es-. ds-. fs-. es-. gs-. fs-. es-. ds-.
  | fs4 ( ds8 ) \oneVoice r r css16 ( ds es fs as b )
  | <fs b fs'>8 r r4 r2
}

upperMiddle = \relative c' {
  | s1
  | <fs b>4 ( <es b'>8 ) r <fs b>4 ( <es b'>8 ) r
  | s1
  | <fs b>4 ( <es b'>8 ) r <fs b>4 ( <es b'>8 ) r
  | s1
  | <gs b>4 ~ q8 r <gs b>4 ~ q8 r
  | s1 
  
  \barNumberCheck #8
  | s2 <g cs>4 ( <fs cs' ds>8 ) r
  | s2 <g cs>4 ( <fs cs' ds>8 ) r
  | s1 * 2
  | <fs b>4 ( <es b'>8 ) r <fs b>4 ( <es b'>8 ) r
  | s1 * 3
  
  \barNumberCheck #16
  | s1
  | gs4 gs gs gs
  | s1 *2
  | <g b>2 q4 <g bf>
  | <g b>2 q4 <g as>8 r
  | <fs bs>4 ( <e gs> ) <fs bs>4 ( <e gs> )
  | s4 s8 r <gs cs>4 ( fs8 ) r
  
  \barNumberCheck #24
  | s1 * 4
  | <fs b>4 ( <es b'>8 ) r <fs b>4 ( <es b'>8 ) r
  | <fs b>4 ~ q8 s s2
  | s1
}

lowerMiddle = \relative c' {
  | s1 * 7
  
  \barNumberCheck #8
  | e4 ( ds8 ) s e4 ( ds8 ) s
  | e4 ( ds8 ) s e4 ( ds8 ) s
  | s1 * 6
  
  \barNumberCheck #16
  | s1
  | es4 ( fs8 ) s es4 ( fs8 ) s
  | s1 *2
  | d4 ( b ) e ( cs )
  | d4 ( b ) e ( cs8 ) s
  | s1
  | e4 ( ds8 ) s e4 ( ds8 ) s
  
  \barNumberCheck #24
  | e4 ( ds8 ) s e4 ( ds8 ) s
  | s1 * 6
}

lowVoice = \relative c' {
  \oneVoice
  \slurDown
  | \repeat unfold 4 { 
    <b ds>4 ( <gs ds'>8 ) r <b ds>4 ( <gs ds'>8 ) r
  }
  \slurNeutral
  | \repeat unfold 3 {
    <cs, es'>4 ( <gs' ds'>8 ) r <cs, es'>4 ( <gs' ds'>8 ) r
  }
  
  \barNumberCheck #8
  | <cs,_~ a'_~>4 q8 r <cs_~ a'_~>4 q8 r
  | <cs_~ a'_~>4 q8 r <cs_~ a'_~>4 q8 r
  | r2 gs'16 ( gss as b bs cs e es )
  | <b ds>4 ( <gs ds'>8 ) r <b ds>4 ( <gs ds'>8 ) r
  | <b ds>4 ( <gs ds'>8 ) r <b ds>4 ( <gs ds'>8 ) r
  \clef treble
  | as16 ( b css ds es fs as b css ds es fs ) r4
  | <ds, fs>4. q8 <d fs>4 q8 q
  | <ds fs>2 <d fs>4 ~ q8 r
  
  \barNumberCheck #16
  | <ds fs>2 <gs, fs'>
  \clef bass
  \voiceTwo
  | cs4 ( gs8 ) r cs4 ( gs8 ) r
  \oneVoice
  | <ds' fs>4. q8 <d fs>4 q8 q
  | <ds fs>2 <d fs>4 ~ q8 r
  \voiceTwo
  | d,2 d
  | d2 d4 ~ d8 r
  \oneVoice
  | <ds bs'>4 ( <gs d'> ) <ds bs'>4 ( <gs d'> )
  | <cs,_~ a'_~>4 q8 r <cs_~ a'_~>4 q8 r
  
  \barNumberCheck #24
  | <cs_~ a'_~>4 q8 r <cs_~ a'_~>4 q8 r
  | <cs es'>4 ( <gs' ds'>8 ) r <cs, es'>4 ( <gs' ds'>8 ) r
  | fs16 ( fss gs gss as b cs ds e b bs cs e es fs g )
  | \slurDown <b, ds>4 ( <gs ds'>8 ) r <b ds>4 ( <gs ds'>8 ) r
  | <b ds>4 ( <gs ds'>8 ) r <b ds>4 ( <gs ds'>8 ) r
  \clef treble
  | \slurNeutral as16 ( b css ds es fs as b ) css ( ds ) b8-. fs-. ds-.
  | <fs b ds>8 r r4 r2
  \bar "|."
}

global = {
  \key b \major
  \time 4/4
  \accidentalStyle piano
}

upper = {
  \clef treble
  \global
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
}

lower = {
  \clef bass
  \global
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
}

\bookpart {
  \header {
    subtitle = "No.3 Tuileries (Dispute d'enfants après jeux.)"
  }
  \score {
    \new PianoStaff <<
      \new Staff = "up" \upper
      \new Staff = "down" \lower
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 120
    }
  }
}
