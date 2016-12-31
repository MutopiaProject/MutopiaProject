\version "2.18.2"
\language "english"
\include "multi-mark-engraver.ily"

\header {
  %title        = "Bydlo"
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

simile = \markup { \italic "simile" }
dimin = \markup { \italic "dim." }
dimEditor = \markup { \whiteout \italic "[dim.]" }
cres = \markup { \italic "cresc." }
rit = \markup { \italic "ritard." }
perd = \markup { \whiteout \italic "perdendosi" }
tuttaSf = \markup{ \whiteout \italic "con tutta forza" }
semprePesante = \markup { \italic "sempre pesante a poco allargando" }

adjustPp = {
  \once \override DynamicText.X-offset = #.05
  \once \override DynamicText.Y-offset = #-2.5
}

adjustPpp = {
  \once \override DynamicText.X-offset = #-0.5
  \once \override DynamicText.Y-offset = #-3
}

forceShiftOn = \override NoteColumn.force-hshift = #1.4
forceShiftOff = \override NoteColumn.force-hshift = #0

markDown =
#(define-music-function (parser location text) (markup?)
   (make-music 'MarkEvent
     'direction DOWN
     'label text))

lastFermatUp = {
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lastFermataDown = {
  \markDown \markup { \musicglyph #"scripts.dfermata" }
}

highVoice = \relative c {
  \tempo "Sempre moderato, pesante."
  \clef bass
  | r4 ds4 ( ~
  | ds8 fs16 e ) ds8-- e-- 
  | ds8-- [ gs-- as-- b-- ]
  | as4-- gs8-- r
  | cs4-- ( gs'8 ) r
  | cs,4-- ( gs'8 ) gs-.
  | ds4-- cs--
  
  \barNumberCheck #8
  | b8 ( ds as ) r
  | gs4-- fs8 ( e
  | ds8 ) r ds4 ( ~
  | ds8 fs16 e ) ds8-- e-- 
  | ds8-- [ gs-- as-- b-- ]
  | as4-- gs8-- r
  | cs4-- ( e8 ) r
  | e4-- e--
  
  \barNumberCheck #16
  | d2 ( ~
  | d4 bs8 ) r
  | cs4-- ( gs'8 ) gs-.
  | ds8-- b-- as4-- (
  | gs4 ~ gs8 ) r
  \clef treble
  | <e'' a cs e>8 [ <cs cs'> <ds fs b ds> <b b'> ]
  | <cs e a cs>8 <a a'> <fs a d fs>4
  | <e' a cs e>8 [ <cs cs'> <ds fs b ds> <b b'> ]
  
  \barNumberCheck #24
  | <cs e a cs>8 r <fs, a d fs>4
  | <e' a cs e>8 [ <cs cs'> <ds fs b ds> <b b'> ]
  | <cs e a cs>8 <a a'> <fs a d fs>4
  | <cs' fs a cs>4 <fs, a d fs>
  | <cs' fs a cs>4 <gs b d gs>8 ( <fs fs'> )
  | <cs' fs a cs>4 <fs, a d fs>
  | <cs' fs a cs>4 <ds fs bs ds>
  | <e gs cs e>8 ( <gs gs'> ) <d fs a d>4
  
  \barNumberCheck #32
  | <bs fs' gs bs>4 ( <cs e gs cs>8 <gs gs'> )
  | <a cs ds a'>4 ( <gs cs e gs>
  | <fs cs' ds fs>4 <cs' cs'>8 ) r
  | <as cs fss as>2 _\cres \sf  
  | <b ds gs b>8 \sf r <gs' gs'> \sf r
  | <e gs cs e>8 \sf r <ds fss b ds> \sf ( <b b'> )
  | <gs gs'>8 _\tuttaSf r <ds ds'>4 ~
  | q8 ^\semprePesante <fs fs'>16 <e e'> <ds ds'>8-- <e e'>--
  
  \barNumberCheck #40
  | <ds ds'>8-- [ <gs gs'>-- <as as'>-- <b b'>-- ]
  | <as as'>4-- ( <gs gs'>8 ) r
  | <cs cs'>4-- ( <gs' gs'>8 ) r
  | <cs, cs'>4 ( <gs' gs'>8-. ) q-.
  | <ds ds'>4-- <cs cs'>--
  | <b b'>8 ( <ds ds'> <as as'>-. ) r
  | <gs gs'>4-- ( <fs fs'>8 <e e'>
  | <ds ds'>8 ) r \clef bass ds,4 _\dimEditor ( ~
  
  \barNumberCheck #48
  | ds8 fs16 e ) ds8-- e-- 
  | ds8-- [ gs-- as-- b-- ]
  | as4-- ( gs8 ) r
  | cs4-- ( e8 ) r
  | e4-- e--
  | r4 gs-- (
  | ds8 b as4
  \adjustPp
  | gs8 ) \pp r r4
  
  \barNumberCheck #56
  | R2
  | r4 ds4 ( ~
  | ds8 fs16 e ds8 e )
  | R2 ^\rit 
  | R2
  \adjustPpp
  | ds4 ~ \ppp ds8 r
  | R2  
  | R2
  
  \barNumberCheck #64
  | R2 
  \bar "|." \lastFermatUp
}

lowerMiddle = \relative c, {
  | s2 * 16
  | s2 * 4
  \forceShiftOff
  | <cs a'>8 [ q <ds b'> q ]
  | <e cs'>8 [ q <fs d'> q ]
  | <cs a'>8 [ q <ds b'> q ]
  
  \barNumberCheck #24
  | <e cs'>8 [ q <fs d'> q ]
  | <cs a'>8 [ q <ds b'> q ]
  | <e cs'>8 [ q <fs d'> q ]
  | <cs a'>8 [ q <fs d'> q ]
  | <cs a'>8 [ q <d b'> q ]
  | <cs a'>8 [ q <fs d'> q ]
  | <fs cs'>8 [ q <gs bs> q ]
  | <gs cs>8 [ q <fs d'> q ]
  
  \barNumberCheck #32
  | <gs ds'>8 [ q <cs e> q ]
  | <cs fs>8 [ q <cs gs'> q ]
  | <cs a'>8 [ q <ds fs> q ]
  | <ds fss>8 [ q <as ds> q ]
  | <ds gs>8 [ q <ds, b'> q ]
  | <gs cs>8 [ q <fss ds'> q ]
  | s2 * 2
  
  \barNumberCheck #40
  | s2 * 8
  
  \barNumberCheck #48
  | s2 * 6
  | <b, gs' b>8 [ <ds gs ds'> <fss ds'> q ]
  | <ds gs>8 [ q <cs a'> q ]
  
  \barNumberCheck #56
  | <fs d'>8 [ q <e cs'> q ]
  | s2 * 2
  | <ds gs>8 [ q <cs a'> q ]
  | <gs e'>8 [ q <a fs'> q ]
  | s2 * 3
  
  \barNumberCheck #64
  | s2
}

lowVoice = \relative c, {
  | <gs ds' gs>8-- [ <b ds b'>-- <gs ds' gs>8-- <b ds b'>-- ]
  | <gs ds' gs>8-- [ <b ds b'>-- <gs ds' gs>8-- <b ds b'>-- ]
  | <gs ds' gs>8 _\simile [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  | <a cs a'>8 [ <cs e cs'> <e, gs e'> <gs b gs'> ]
  | <a cs a'>8 [ <cs e cs'> <e, gs e'> <gs b gs'> ]
  | <fss as fss'>8 [ <as ds as'> <fss as fss'>8 <as ds as'> ]
  
  \barNumberCheck #8
  | <gs ds' gs>8 [ <b ds b'> <fss as fss'>8 <as cs as'> ]
  | <gs b gs'>8 [ <b ds b'> <a cs a'> <cs e cs'> ]
  | \repeat unfold 4 {
    <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  }
  | <a cs a'>8 [ <cs e cs'> <e, gs e'> <gs b gs'> ]
  | <a cs a'>8 [ <cs e cs'> <e, gs e'> <gs b gs'> ]
  
  \barNumberCheck #16
  | <fs a fs'>8 [ <a d a'> <fs d' fs> <a d a'> ]
  | <fs d' fs>8 [ <a d a'> <gs ds' gs> <bs ds bs'> ]
  | <a cs a'>8 [ <cs e cs'> <e, gs e'> <gs b gs'> ]
  | <b fs' b>8 [ <ds fs ds'> <fss, ds' fss> <as ds as'> ]
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  \voiceTwo \forceShiftOn
  | <a cs a'>4 <b ds b'>
  | <cs e cs'>4 <d fs d'>
  | <a cs a'>4 <b ds b'>
  
  \barNumberCheck #24
  | <cs e cs'>4 <d fs d'>
  | <a cs a'>4 <b ds b'>
  | <cs e cs'>4 <d fs d'>
  | <a cs a'>4 <d fs d'>
  | <a cs a'>4 <b d b'>
  | <a cs a'>4 <d fs d'>
  | <cs fs cs'>4 <bs gs' bs>
  | <cs gs' cs>4 <d fs d'>
  
  \barNumberCheck #32
  | <ds gs ds'>4 ^\dimin <e cs' e>
  | <fs cs' fs>4 <gs cs gs'>
  | <a cs a'>4 <fs ds' fs>
  | <fss ds' fss>4 <ds as' ds>
  | <gs ds' gs>4 <b, ds b'>
  | <cs gs' cs>4 <ds fss ds'>
  \oneVoice 
  | <gs, ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ] 
  
  \barNumberCheck #40
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  | <a cs a'>8 [ <cs e cs'> <e gs e'> <gs b gs'> ]
  | <a, cs a'>8 [ <cs e cs'> <e gs e'> <gs b gs'> ]
  | <fss, as fss'>8 [ <as ds as'> <fss as fss'> <as ds as'> ]
  | <gs ds' gs>8 [ <b ds b'> <ds, as' ds> <fss ds' fss> ]
  | <gs ds' gs>8 [ <b ds b'> <a cs a'> <cs e cs'> ]
  | \repeat unfold 4 {
    <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ] % #48
  }
  | \repeat unfold 3 {
    <a cs a'>8 [ <cs e cs'> <e, gs e'> <gs b gs'> ]
  }
  \voiceTwo
  | s4 <ds' fss ds'>
  | <gs, ds' gs>4 <a cs a'>
  
  \barNumberCheck #56
  | <d fs d'>4 <cs e cs'>
  \oneVoice
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  \voiceTwo
  | <gs ds' gs>4 ^\dimin <a cs a'>
  | <e gs e'>4 <fs a fs'>
  \oneVoice
  | <gs ds' gs>8 [ <b ds b'> <gs ds' gs>8 <b ds b'> ]
  | <gs b>8 ^\perd [ <b ds> <gs b> <b ds> ]
  | gs4-- b--
  
  \barNumberCheck #64
  | gs4-- b-- \lastFermataDown
}

global = {
  \key gs \minor
  \time 2/4
  \accidentalStyle piano
}

upper = {
  \clef treble
  \global
  \new Voice \highVoice 
}

lower = {
  \clef bass
  \global
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice \lowVoice 
  >>
}

\bookpart {
  \header {
    subtitle = "No. 4 Bydlo"
  }
  \score {
    \new PianoStaff <<
      \new Staff = "up" \upper
      \new Staff = "down" \lower
    >>
    \layout {
        \context {
        \Score
        \remove "Mark_engraver"
        \consists #multi-mark-engraver
      }
    }
    \midi {
      \tempo 4 = 50
    }
  }
}
