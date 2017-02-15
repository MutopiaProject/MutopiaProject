%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.54"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 12"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/71902/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 12"
  mutopiaopus = "Op 28, No 12"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/02/15-2173"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

sd = \sustainOn 
su = \sustainOff 

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

global = {
  \key gs \minor
  \time 3/4
  \accidentalStyle piano
  
  % Subdivide eighth notes into twos
  \set Timing.beamExceptions = #'()
  %\set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

rightHandUpper = \relative {
  \global
  \clef treble
  \tempo "Presto."
  \voiceOne
  
  | ds'8 ( e e es es fs
  | fs8 fss fss gs gs gss
  | gss8 as as b b bs
  | bs8 cs cs css css ds
  | ds8 e e ds ds cs
  | cs8 b b cs cs ds 
  | ds8 cs cs b b as )
  | \tweak Y-offset 0 r8 b ( [ b as ] as ds, )
  
  \barNumberCheck 9
  | ds8 ( e e es es fs
  | fs8 fss fss gs gs gss
  | gss8 as as b b bs
  | bs8 cs cs css ) r css (
  | ds8 e e ds ds fs
  | fs8 cs cs ds ds e )
  | e8 ( ds ds gs gs fs
  | fs8 cs cs ds ds e )
  
  \barNumberCheck 17
  | e8 ( ds ds b b g
  | g8 fs fs b b g )
  | fs8 ( b b g fs b
  | b8 g fs b b g )
  
  \barNumberCheck 21
  | b2. 
  | b2.
  | gs4 gs gs
  | a2.
  | a2. 
  | a2.
  | fs4 fs fs
  | g2.
  
  \barNumberCheck 29
  | g8 ( a a b b c
  | c8 d d e e ds )
  | g,8 ( a a b b c
  | c8 d d e e <ds fs>
  | <e g>4 ) q8 ( <ds fs> q <e g>
  | <e g>8 <ds fs> q <e g> \oneVoice <fss, e' fss> <gs es' gs>
  | <gs es' gs>8 <a fs' a> q <gs es' gs> q <a fs' a>
  | <a fs' a>8 <gs es' gs> q <a fs' a> \voiceOne fs'4
  
  \barNumberCheck 37
  | \oneVoice <as, fs' as>4 ) \voiceOne <as as'> q^>
  | \oneVoice <as es' gs as>4^> \voiceOne <as as'>^> <as as'>^>
  | \oneVoice <as ds fs as>4^. <as fs'>8 ( <gs es'> ) q ( <fss ds'> )
  | <fss ds'>4 \voiceOne as <fss b>
  
  \barNumberCheck 41
  | ds8 ( e e es es fs
  | fs8 fss fss gs gs gss
  | gss8 as as b b bs
  | bs8 cs cs css css ds
  | ds8 e e ds ds cs
  | cs8 b b cs cs ds 
  | ds8 cs cs b b as )
  | \tweak Y-offset 0 r8 b ( [ b as ] as ds, )
  
  \barNumberCheck 49
  \pageBreak
  | ds8 ( e e es es fs
  | fs8 fss fss gs gs gss
  | gss8 as as b b bs
  | bs8 cs cs css css ds )
  | ds8 ( cs cs b b as )
  | cs ( b b as as gs )
  | ds'8 ( cs cs b b as )
  | cs ( b b as as gs )
  
  \barNumberCheck 57
  | b8 ( as as b b as
  | as8 b b as as b
  | b8 as as b b as
  | as8 b b as as b )
  | <gs_~ as~>2. 
  | <gs_~ as~>2. 
  | <gs as~>2.
  | as2 ( b4
  
  \barNumberCheck 65
  | <b, gs'>4 ) gs'8 ( b b as
  | as8 gs ) gs ( b b as 
  | as8 gs ) fs ( ds' ds cs
  | cs8 b ds, b' b as
  | <b, gs'>4 ) gs'8 ( b b as
  | as8 gs ) gs ( b b as 
  | as8 gs ) e ( cs' cs b
  | b8 a ds, gs gs fss
  | gs4 ) \oneVoice r r
  
  \barNumberCheck 74
  | ds2. ~
  | ds2 e4 (
  | ds2. ) ~
  | ds4 fs ( e
  | ds2.) ~
  | ds4 gs ( fs
  | e4 ds2 )
  | s4 \oneVoice r r
  |
  
  \bar "|."
}

rightHandLower = \relative {
  \global
  \clef treble
  \voiceTwo
  
  | b4 b <b ds>
  | <b ds>4 q q
  | ds4 ds <ds gs>
  | <ds gs>4 q q
  | <ds as'>4 as' <ds, as'>
  | <ds gs>4 q q 
  | <e gs>4 q <cs e>
  | cs4 cs cs
  
  \barNumberCheck 9
  | b4 b <b ds>
  | <b ds>4 q q
  | <b e>4 q q
  | f'4 f <f b>
  | <fs b>4 q q
  | <fs as>4 q q
  | <fs b>4 q fs
  | <fs as>4 <e as> q
  
  \barNumberCheck 17
  | <ds b'>4 ds e
  | ds4 ds e
  | ds4 e ds
  | e4 d e
  
  \barNumberCheck 21
  | <e g>8 ( <d fs> \acciaccatura { \stemUp g } \stemDown <d fs> <cs e> <d fs>4 )
  | <e g>8 ( <d fs> \acciaccatura { \stemUp g } \stemDown <d fs> <cs e> <d fs>4 )
  | <d b'>8 ( <e c'> ) q ( <d b'> ) q ( <e c'> )
  | <d f>8 ( <c e> \acciaccatura { \stemUp f } \stemDown <c e> <b d> <c e>4 )
  | <d f>8 ( <c e> \acciaccatura { \stemUp f } \stemDown <c e> <b d> <c e>4 )
  | <d f>8 ( <c e> \acciaccatura { \stemUp f } \stemDown <c e> <b d> <c e>4 )
  | <c a'>8 ( <d b'> ) q ( <c a'> ) q ( <d b'> )
  | <c e>8 ( <b d> \acciaccatura { \stemUp e } \stemDown <b d> <a c> <b d>4 )
  
  \barNumberCheck 29
  | e4 e e
  | e4 <e a> q8 ds
  | e4 e e
  | e4 <e a> a
  | g4 a g
  | a4 g s
  | s2.
  | s2 <gss gss'>8 <as as'>
  
  \barNumberCheck 37
  | s4 fs'8 <es gs> q <ds fs>
  | s4 <es gs>8 <ds fs> q <css es>
  | s2.
  | s4 fss,8 ( e ) e ( ds )
  
  \barNumberCheck 41
  | b4 b <b ds>
  | <b ds>4 q q
  | ds4 ds <ds gs>
  | <ds gs>4 q q
  | <ds as'>4 as' <ds, as'>
  | <ds gs>4 q q 
  | <e gs>4 q <cs e>
  | cs4 cs cs
  
  \barNumberCheck 49
  | b4 b <b ds>
  | <b ds>4 q q
  | ds4 ds <ds gs>
  | <ds gs>4 q q
  | <e gs>8 s s4 s
  | <ds gs>8 s s4 s
  | <e gs>8 s s4 s
  | <ds gs>8 s s4 s
  
  \barNumberCheck 57
  | <cs gs'>8 s s4 s
  | s2. * 6
  | <cs fss>2.
  
  \barNumberCheck 65
  | s4 <cs e> <cs fss>
  | b4 <cs e> <cs fss>
  | b4 ds <e as>
  | <ds gs>4 ds <cs fss>
  | s4 <cs e> <cs fss>
  | b4 <cs e> <cs fss>
  | b4 cs <d gs>
  | <cs e>4 b <as ds~>
  | <b ds>4 s2
  
  \barNumberCheck 74
  \voiceThree \staffDown
  | r4 <gs b>8 <fss as> q <as cs>
  | <gs b>4 s2
  | r4 <gs b>8 <fss as> q <as cs>
  | <gs b>4 s2
  | r4 <gs b>8 <fss as> q <as cs>
  | <gs b>4 s2
  | s2 ds4^.
  | gs^. s2
}

rightHand = << 
  \new Voice { \rightHandUpper } 
  \new Voice { \rightHandLower } 
>>

leftHandNotes = \relative {
  \global
  \clef bass
  \oneVoice
  
  | <gs, ds' gs>4^> <gs, gs'>_. <ds' ds'>_.
  | <gs ds' gs>4^> <gs, gs'>_. <ds' ds'>_.
  | <ds' gs b>4 <gs,, gs'>_. <ds' ds'>_.
  | <ds' gs b>4 <gs,, gs'>_. <ds' ds'>_.
  | <ds' as'>4^. <fss, ds'>_. <ds' as'>^.
  | <gs, ds'>4_. <ds' b'>^. <gs, ds'>_.
  | <cs gs'>4^. <cs, cs'>_. <cs' gs'>^.
  | <ds fss>4^. <ds, ds'>_. <ds' fss>^.
  
  \barNumberCheck 9
  | <gs, ds' gs>4^> <gs, gs'>_. <ds' ds'>_.
  | <gs ds' gs>4^> <gs, gs'>_. <ds' ds'>_.
  | <g e' g>4 <g, g'>_. <e' e'>_.
  | <d' g b>4 <g,, g'>_. <g' g'>_.
  | <fs fs'>4 <fs' ds'> <fs, fs'>
  | <fs' e'>4 <fs, fs'> <fs' e'>
  | <fs, fs'>4 <fs' ds'> <fs, fs'>
  | <fs' e'>4 <fs, fs'> <fs' cs'>
  
  \barNumberCheck 17
  | <b, fs'>4 <b fs' b> <b g' b>
  | <b fs' b>4 <b fs' b> <b g' b>
  | <b fs' b>4 <e g b> <b fs' b>
  | <e g b>4 <b fs' b> <e g b>
  
  \barNumberCheck 21
  | <b fs' b>4 <b, b'> <b' fs'>
  | <b fs' b>4 <b, b'> <b' fs'>
  | <e b'>4 <e, e'> <e' b'>
  | <a, e' a>4 <a, a'> <a'~ e'>
  | <a e' a>4 <a, a'> <a'~ e'>
  | <a e' a>4 <a, a'> <a' e'>
  | <d a'>4 <d, d'> <d' a'>
  | <g, d' g>4 <g, g'> <g' g'>
  
  \barNumberCheck 29
  | <c g'>4 <c g' c> q
  | <c g' c>4 <c fs c'> < b fs' b>
  | <e b'>4 <c g' c> q
  | <c g' c>4 <c fs c'> <b fs' b>
  | <e b'>4 <b b'> <e b'>
  | <b b'>4 <e b'> <b b'>
  | <b, b'>4 <es' b' css> <fs b ds>
  | <es b' css>4 <fs b ds> <b,, b'>
  
  \barNumberCheck 37
  | <as as'>4 <fs'' as ds> <as ds fs>
  | <as, as'>4 <es' css'> <as es' gs>
  | <ds,, ds'>4 
    <<
      { as''4 ( css | ds ) }
      \\
      { ds,2 ~ | ds4 }
    >>
    <ds, ds'>4 <ds' cs'>
    
  \barNumberCheck 41
  | <gs, ds' gs>4^> <gs, gs'> <ds' ds'>
  | <gs ds' gs>4^> <gs, gs'> <ds' ds'>
  | <ds' gs b>4 <gs,, gs'> <ds' ds'>
  | <ds' gs b>4 <gs,, gs'> <ds' ds'>
  | <ds' as'>4 <fss, ds'> <ds' as'>
  | <gs, ds'>4 <ds' b'> <gs, ds'>
  | <cs gs'>4 <cs, cs'> <cs' gs'>
  | <ds fss>4 <ds, ds'> <ds' fss>
  
  \barNumberCheck 49
  | <gs, ds' gs>4 <gs, gs'> <ds' ds'>
  | <gs ds' gs>4 <fs, fs'> <fs' ds'>
  | <e' gs>4 <e,, e'> <e'' gs>
  | <ds gs b>4 <ds,, ds'> <ds'' gs b>
  | <cs gs' b>8 r r4 r
  | <ds gs b>8 r r4 r
  | <cs gs' b>8 r r4 r
  | <ds gs b>8 r r4 r
  
  \barNumberCheck 57
  | <e gs>8 r r4 r
  | R1 * 3 * 3/4
  << 
    { 
      \voiceFour
      | e'8 ^( ds ds cs cs b
      | b8 as as gs gs fs
      | fs8 e e ds ds cs 
      | ds2. )
    } 
    \\
    { 
      | s2.
      | s2.
      | s2.
      | s2 ds,4
    } 
  >>
  
  \barNumberCheck 65
  | <gs ds'>4 <cs, cs'>-. <ds ds'>-.
  | <gs gs'>4-. <cs, cs'>-. <ds ds'>-.
  | <e e'>4-. <b b'>-. <cs cs'>-.
  | <ds ds'>4-. ds'-. <ds, ds'>-.
  | <gs ds'>4-. <cs, cs'>-. <ds ds'>-.
  | <gs gs'>4-. <cs, cs'>-. <ds ds'>-.
  | <e e'>4-. <a, a'>-. <b b'>-.
  | <cs cs'>4-. <ds ds'>-. <ds, ds'>-.
  | <gs gs'>4-. r r 
  
  \barNumberCheck 74
  \voiceFour
  | <ds' ( ds'>2.
  | <gs ) ds'>4 \oneVoice r r
  \voiceFour
  | <ds ( ds'>2.
  | <gs ) ds'>4 \oneVoice r r
  \voiceFour
  | <ds ( ds'>2.
  | <gs ) ds'>4 \oneVoice r r
  | r4 r \voiceFour <ds, ds'>
  | <gs gs'>4 \oneVoice r r
  
}

pedal = {
  \repeat unfold 8 { | s2 \sd s4 \su }

  \barNumberCheck 9
  \repeat unfold 8 { | s2 \sd s4 \su }
  
  \barNumberCheck 17
  | s4 \sd s8 s \su s4
  | s2. * 3
  
  \barNumberCheck 21
  \repeat unfold 8 { | s2 \sd s4 \su }
  
  \barNumberCheck 29
  | s2. * 6
  | s4 \sd s8 s \su s4
  | s2.
  
  \barNumberCheck 37
  \repeat unfold 4 { | s2 \sd s4 \su }
  
  \barNumberCheck 41
  \repeat unfold 8 { | s2 \sd s4 \su }
  
  \barNumberCheck 49
  \repeat unfold 4 { | s2 \sd s4 \su }
  | s2. * 4
  
  \barNumberCheck 57
  | s2. * 7
  | s2. \sd
  
  \barNumberCheck 65
  | s4 \su s2
  |
}

leftHand = << 
  \new Voice { \leftHandNotes } 
  \new Voice { \pedal } 
>>

dyn = {
  | s2. \f
  | s4 s \cresc s
  | s2.
  | s2 s4 \!
  | s2. * 3
  | s2 \> s8 s \!
  
  \barNumberCheck 9
  | s2.
  | s4 s \cresc s
  | s2.
  | s2 s8 s \!
  | s2.
  | s2.
  | s2 s4 \>
  | s2 s4 \!
  
  \barNumberCheck 17
  | s2. * 4
  
  \barNumberCheck 21
  | s8 \ff \> s \! s2
  | s8 \> s \! s2
  | s2.
  | s8 \> s \! s2
  | s8 \> s \! s2
  | s8 \> s \! s2
  | s2.
  | s8 \> s \! s2
  
  \barNumberCheck 29
  | s2. \<
  | s4 s \! s
  | s2. \<
  | s2.
  | s4 \! s \cresc s
  | s2.
  | s2.
  | s4 \! s s
  
  \barNumberCheck 37
  | s2. * 4
  
  \barNumberCheck 41
  | s2. \f
  | s4 s \cresc s
  | s2.
  | s2 s4 \!
  | s2. * 4
  
  \barNumberCheck 49
  | s2 s4 \cresc
  | s2. 
  | s2.
  | s2 s8 s \!
  | s2. * 4

  \barNumberCheck 57
  | s8 s \< s2
  | s2 s8 s \!
  | s2.
  | s2 \> s8 s \!
  | s2. * 4
  
  \barNumberCheck 65
  | s2. * 6
  | s4 s -\markup { \whiteout "poco ritenuto" } s
  | s2.
  | s2.
  
  \barNumberCheck 74
  | s2.
  | s4 s -"dim." s
  | s2. * 4
  | s2 s4 \ff
}

#(set-global-staff-size 20)

\paper {
  ragged-last-bottom = ##f % False after editing is finished
  
  top-margin = 8\mm
  bottom-margin = 6\mm
  system-system-spacing.basic-distance = #19
  
  % #(set-paper-size "letter") % for testing only
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XII"
    \new Staff = "upper" \rightHand
    \new Dynamics \dyn
    \new Staff = "lower" \leftHand
  >>
  \layout {
    %{\context {
      \Score
      \remove "Bar_number_engraver"
    } %}
  }
  \midi {
    \tempo 4 = 208
  }
}
