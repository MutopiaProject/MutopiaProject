%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.83"
\language "english"

\header {
  title = "Nocture"
  subtitle = "in B Major"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 32, No 1"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/ocve/browse/pageview/70164/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Nocture in B Major"
  mutopiaopus = "Opus 32, No 1"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

slashFlag = \once \override Flag.stroke-style = "grace"

trillUnderSlur = {
  \once \override TrillSpanner.avoid-slur = #'inside
  \once \override TrillSpanner.outside-staff-priority = ##f
  \once \override TrillSpanner.extra-offset = #'(0 . -1)
}

slurShapeA = \shape #'((0 . -2) (0 . -4) (0 . 0) (0 . 0)) Slur
slurShapeB = \shape #'((0 . 2) (0 . -1) (-1 . -1) (0 . 4)) Slur
slurShapeD = \shape #'((0 . 0) (0 . 2) (0 . 0) (0 . 0)) Slur
slurShapeI = \shape #'((-0.5 . 2) (0 . 0) (0 . 0) (0 . 0)) Slur

slurPositionA = \once \override Slur.positions = #'(3 . 3)
slurPositionC = \once \override Slur.positions = #'(0 . 0)
slurPositionE = \once \override Slur.positions = #'(4 . 0)
slurPositionF = \once \override Slur.positions = #'(2 . 3)
slurPositionI = \once \override Slur.positions = #'(3 . 3)
slurPositionJ = \once \override Slur.positions = #'(0 . 0)
slurPositionK = \once \override Slur.positions = #'(0 . 0)
slurPositionL = \once \override Slur.positions = #'(1 . 3)
slurPositionQ = \once \override Slur.positions = #'(0 . 0)
slurPositionR = \once \override Slur.positions = #'(0 . 0)

beamPositionA = \once \override Beam.positions = #'(-1 . -1)

tieShapeA = \shape #'((0 . 0.25) (0 . 0.75) (0 . 0.75) (0 . 0.25)) Tie

global = {
  \key b \major
  \time 4/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Andante sostenuto" 4 = 76
  
  ds''4( e8. ds16 cs4 ds |
  b4 ~ b16 ds b' gs fs4. e8 |
  ds8) \tuplet 3/2 { ds16( e fs } e8. ds16 cs4 ds8. as16 |
  b16 cs b\prall as b ds b' gs fs4. e8) |
  ds4( css8. ds16 es4 \acciaccatura { es16 gs } fs8. es16 |
  ds4 as cs-\markup { \italic stretto } gs8.) r16\fermata |
  r8 r16 b(^\markup { \italic delicatissimo } 
    \tuplet 5/4 { b16 cs b as b } ds8) \new Voice = "2" { ds4( cs8 } |
  
  \barNumberCheck 8
  <<
    { s4 gs'( cs, ds }
    \\
    { b2) as4 a }
  >> |
  <<
    \acciaccatura { fs'8 }
    { e4 ds8 cs b4 cs }
    \\
    { as2 fs4 gs }
  >> |
  <<
    { as4) gs'( cs, ds }
    \\
    { as4 b as a }
  >> |
  <<
    \acciaccatura { fs'8 } 
    { e4 ds8 cs b4 <cs, gs' cs> }
    \\
    { as'2 gs4 s4 }
  >> |
  <<
    <<
      \context Voice = "1" { 
        \voiceOne <cs, fs cs'>4)\arpeggio ds'( cs <e, as css> 
      }
      \context Voice = "3" { \voiceThree s4 e8. gs16 fs2 }
    >> 
    \context Voice = "2" { \voiceTwo s4 e2 s4 }
  >> |
  
  \barNumberCheck 13
  \tag #'layout { \context Voice = "1" { 
    \voiceOne \grace { \slashFlag ds8 ds16[ fs b]) } } }
    \oneVoice ds4( e8. ds16 cs4 ds4 |
  b4~-> b16 ds b' gs fs4. e8) |
  ds8( \tuplet 3/2 { ds16 e fs } e8. ds16 cs4 ds8. as16) |
  b32([ cs b as] b[ ds b' gs] fs16) b32([\prall as] 
    b[ ds b' gs] fs8)-. r r e,( | \pageBreak
  ds4 css8. ds16 es4 \acciaccatura { es16 gs } fs8. es16 |
  ds4 as cs-\markup { \italic stretto } gs8.) r16\fermata |
  r8 r16 b_\markup { \italic "poco ritenuto" } 
    \tuplet 5/4 { b16( cs b as b } ds8) ds4(~ \tuplet 3/2 { ds16 cs b } |
    
  \barNumberCheck 20
  b4)_\markup { \italic "a tempo" } fs'(^\markup { \italic tranquillo } e ds) |
  \context Voice = "1" { cs4.( cs8 ds\> cs b as\! } |
  << { b4 b <gs b> <fs as>) } \\ { fs8\> es ds cs\! s2 } >> |
  \stemDown r8 <as' cs>( <gss bs> <as cs> <as fs'>)[ r16 <as cs>]
    \stemNeutral \tuplet 3/2 { q8( <gs b> <fs as>) } |
  <fs b>8[ r16 <es b'>]( \tuplet 3/2 { <es b'>8-. <ds b'>-. <cs b'>-. } 
    <gs' b>4 <fs as>) |
  r4 r8 <fs as>( <gs b> <fs as> <es gs> <ds fs>) |
  << { <es gs>4( gs <es gs> <ds fs>) } \\ { ds8 css <b ds> <as css> as2 } >> |
  r8 dss16( es \acciaccatura { gs8 } fs16 es as bs cs2) | 
  r8 \grace { \slashFlag bs8 } \tuplet 5/4 { bs32( cs bs ass bs } 
    ds8)[ r16 cs] as4 r |
  r8 css,16 ds \acciaccatura { fs8 } e16 ds gs as b2 |
  r16 as( \tuplet 5/4 { as32[ b as gss as] } cs8)[ r16 b] gs4 ds'4~-> |
  
  \barNumberCheck 31
  <fss, ds'>4 << { e'2.( } \\ { <gs, e'>4 <fss as> <gs b> } >> |
  << \acciaccatura { \slurDown ds'8 } 
     { cs4 b8 as gs4 as } 
     \\ 
     { fss2 ds4 es } 
  >> |
  \context Voice = "1" { fss4) }
    << 
      { e'2.( } 
      \\ 
      { <gs, e'>4 <fss as> <gs b> } 
    >> |
  << 
    \acciaccatura { \slurDown ds'8 } 
    { cs4 b8 as gs4 as } 
    \\ 
    { fss2 ds4 es } 
  >> |
  \context Voice = "1" { \oneVoice fss4 ds' cs-\markup { \italic stretto } 
                         gs8.) } r16\fermata | \pageTurn
  r8 r16 b \tuplet 5/4 { b16( cs b as b } ds8) ds4( cs8) |
  
  \barNumberCheck 37
  << { fs2( es) } \\ { s2. gs,4( } >> |
  << { r4 e'( ds b } \\ { as2.) b4 } >> |
  \context Voice = "1" { gs4_.) } b'4.->( as16 gs e ds cs b) |
  << 
    \context Voice = "1" {
      \voiceOne \mergeDifferentlyHeadedOn 
      \magnifyMusic 0.63 { \slurPositionA gs16( as } s8 s2.
    }    
    \context Voice = "2" { 
      \voiceTwo \slurShapeA gs2^( \staffDown <ds fs>4 <cs e>) 
    } 
    \context Voice = "3" { 
      \voiceThree s8 \trillUnderSlur \afterGrace 7/8 as'1*7/8\startTrillSpan     
        { gs8\stopTrillSpan as ds cs b } 
    } 
  >> |
  \context Voice = "1" { \stemDown b4) } fs'( e ds) |
  \context Voice = "1" { cs4.(  cs8 ds cs b as } | 
  <<
    \context Voice = "1" { \voiceOne b4 b b as) }
    \context Voice = "2" { \voiceTwo 
      fs8\> es \acciaccatura { \stemUp es } \stemDown ds cs\! gs'4 fs
    }
  >> |
  r8 \stemDown <as cs>(\<\prall <gss bs> <as cs>\! <as fs'>)[ r16 <as cs>] 
    \stemNeutral \tuplet 3/2 { <as cs>8(\> <gs b> <fs as>)\! } |
  \tuplet 3/2 { <fs b>8-.[ r16 <f b>-.( <e b'>8-.] }
    \tuplet 3/2 { <ds b'>-. <d b'>-. <cs b'>-.) } <gs'b>4 <fs as> |
    
  \barNumberCheck 46
  \context Voice = "1" { r4 r8 <fs as>^( <gs b>\> <fs as> <es gs> <ds fs>\! } |
  <<
    { <es gs>4 gs <es gs> <ds fs>) }
    \\
    { ds8 css <b ds> <as css> as2 }
  >> |
  r8 dss16( es \acciaccatura { gs8 } fs16\< es as bs\! cs2) |
  r8 \slashFlag \grace { bs8 } \tuplet 5/4 { bs32( cs bs ass bs } 
    ds8)[ r16 cs] as4 r |
  r8 css,16(\> ds\! \acciaccatura { fs8 } e16\< ds gs as\! b2) |
  r16 as( \tuplet 5/4 { as32[ b as gss as] } cs8. b16 gs4) ds'->~ |
  
  \barNumberCheck 52
  <fss, ds'>4 << { e'2.( } \\ { <gs, e'>4 <fss as> <gs b> } >> | \pageBreak
  <<
    \acciaccatura { \slurDown ds'8 }
    { cs4 b8 as gs4 as }
    \\
    { fss2 ds4 es }
  >> |
  \context Voice = "1" { fss4) } 
    << { e'2.( } \\ { <gs, e'>4 <fss as> <gs b> } >> |
  << 
    \acciaccatura { \slurDown ds'8 }
    { cs4 b8 as gs4 as } \\ { fss2 ds4 es } 
  >> |
  \context Voice = "1" { \oneVoice fss4 ds' cs-\markup { \italic stretto } 
                         gs8.) } r16\fermata | 
  r8 r16 b \tuplet 5/4 { b16( cs b as b } ds8) ds4( cs8) |
  << { fs2( es) } \\ { s2. gs,4( } >> |
  << { r4 e'( ds b } \\ { as2.) b4 } >> |
  \context Voice = "1" { gs4) } \ottava 1 \afterGrace b''2.~ {
    b16^( as gs e ds \ottava 0 cs b as gs e ds cs b)
  }
  << 
    \context Voice = "1" {
      \voiceOne \mergeDifferentlyHeadedOn 
      \magnifyMusic 0.63 { \slurPositionA gs16( as } s8 s2.
    }    
    \context Voice = "2" { 
      \voiceTwo \slurShapeA gs2^( \staffDown <ds fs>4 <cs e>) 
    } 
    \context Voice = "3" { 
      \voiceThree s8 \trillUnderSlur \afterGrace 7/8 as'1*7/8\startTrillSpan     
        { gs8\stopTrillSpan as ds cs b } 
    } 
  >> |  
  
  \barNumberCheck 62 
  \context Voice = "1" {
    \tag #'layout { \set tieWaitForNote = ##t \grace { b,8~ d_~ g_~ } } 
      <b, d g b>1)~
  } 
  %{   
  \override TieColumn.tie-configuration = #'((0.0 . 1) (-2.0 . 1) (-4.0 . 1))
    <c e g>2~ <c e g>
  %}
  % Ties may be engraved manually by changing the tie-configuration property
  % of the TieColumn object. The first number indicates the distance from the 
  % center of the staff in half staff-spaces, and the second number indicates 
  % the direction (1 = up, -1 = down).
  \context Voice = "1" { \cadenzaOn q2\fermata } r16 b32([ cs] e[ d cs b])
  << { g'2 } \\ { r4 <g, b d> } >> r4\fermata
  r16 b32([ cs] e[ d cs b])
  << { b'2 } \\ { r4 <b, d g> } >> r4\fermata
  b'8([ cs e d cs b as b as gss as cs b8. g16] \bar "|" 
  g4) \grace {fs,8([ b d f a] } g)[ r16 fs] 
  << { fs2-> } \\ { r8 <b, ds>-. <b d>4-. } >> r2
  <<
    { cs2*3/2_~^( \tuplet 3/2 { cs8[ cs cs] } \tuplet 3/2 { cs[ cs cs] } 
        cs4 d2.) }
    \\
    { r4 \staffDown \stemUp <fs, gs b> <es gs b> s1 <e g as>4 q }
  >>
  \context Voice = "1" { r4 \clef bass as( \bar "|" }
  \tempo Adagio
  \context Voice = "1" 
    << { as b2.~ \bar "|" b1)\fermata } \\ { r2 r4 <e, g> <ds fs> r r2 } >>
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \override Beam.auto-knee-gap = #4
  
  \beamPositionA b,,8 fs'''( fs, fs' <as, e'> fs' fs, fs' |
  <b, ds>8 fs' fs, fs' <as, cs> fs' fs, fs' |
  b,,8) fs''( fs, fs' <as, e'> fs' fs, fs') |
  <b, ds>8( fs' fs, fs' <as, cs> fs' fs, fs') |
  b,,8( fs' a ds) as,( gs' as css) |
  \slurPositionC ds,,8( fs' as ds) e,,([ e' gs cs16]) r\fermata |
  g,8-. e'( b' e) fs,,-. fs'( as e') |
  
  \barNumberCheck 8
  <<
    { s8 fs,4 fs4*1/2 e' fs, bs4  }
    \\
    { b,8-. \slurShapeB fs'^( <d' es> fs, e' fs, bs fs }
  >> |
  <<
    { s8 fs2*3/4 ds'4 es }
    \\
    { cs8 fs, fs' e ds fs, es' fs, }
  >> |
  <<
    { fs'4*1/2 fs, es' fs, e' fs, bs4 }
    \\
    { fs'8 fs, es' fs, e' fs, bs fs }
  >> |
  <<
    { cs'4*1/2 fs, s4 s2 }
    \\
    { cs'8 fs, fs' <fss, e'> <gs ds'> b e, b') }
  >> |
  <<
    { s4 b4*1/2 fs s2 }
    \\
    { fs,8 \slurPositionE as'^( b fs as fs4 fs8) }
  >> |
  
  \barNumberCheck 13
  b,8-. fs'( fs' fs, <as e'> fs fs' fs, |
  <b ds>8 fs fs' fs, <as cs> fs fs' fs,) |
  b,8-. fs''( fs, fs' <as, e'> fs' fs, fs') |
  <b, ds>8 fs'( fs, fs' <as, cs> fs' fs, fs') |
  b,,8( fs' a ds) as,( gs' as css) |
  ds,,8( fs' as ds) e,,([ e' gs cs16]) r\fermata |
  g,,8-. e''( b' e) fs,,,-. fs''( as e') |
  
  \barNumberCheck 20
  \slurPositionF b,,8( fs'' <ds' fs> fs, <cs' e> fs, <b ds> fs) |
  \stemDown fs,8( cs' <fs as> cs as cs <fs cs'> cs) |
  cs,8-. cs'( <es b'> cs) fs,( cs' <fs as> cs)  |
  fs,8( cs' <fs as> cs) fs,( cs' cs' cs,) \stemNeutral |
  cs,8( cs' <es b'> cs) fs,( cs' as' css,) |
  ds,8( as' <ds fs as> as) ds,( as' as' as,) |
  as,8( as' es' gs) ds,( as' fs' ds) |
  gss,8( ds' bs' es,) as,( es' cs' as) |
  << { fs'8( as, es' ds) } \\ { ds,4 <es gss> } >> as,8( es' cs' <e, gs>) |
  \stemDown ds,8( ds' <fss cs'> ds) gs,( ds' <gs b> ds) \stemNeutral |
  << { e'8( gs, ds' cs) } \\ { cs,4 <ds fss> } >> gs,8 ds' <gs b> ds |
  
  \barNumberCheck 31
  <<
    { s8 ds4*1/2 css' ds, cs' ds, b' ds, }
    \\
    { ds,8 \slurPositionI ds'^( css' ds, cs' ds, b' ds,) }
  >> |
  <<
    { s8 ds2*3/4 b'4*1/2 ds, css'4 }
    \\
    { as8^( ds, ds' cs b ds, css' ds, }
  >> |
  <<
    { ds'4*1/2 ds, css' ds, cs' ds, b' ds, }
    \\
    { ds'8 ds, css' ds, cs' ds, b' ds, }
  >> |
  <<
    { s8 ds2*3/4 b'4*1/2 ds, css'4 }
    \\
    { as8 ds, ds' cs b ds, css' ds,) }
  >> |
  ds,8( fss' as ds) e,,([ e' gs cs16]) r\fermata |
  \slurShapeD g,,8( e'' b' e) fs,,,( fs'' as e') |
  
  \barNumberCheck 37
  \slurPositionJ ds,,8( bs' gs' ds') cs,,( cs' b' es) |
  fs,,8( fs' as e') b,( fs' b ds) |
  \tuplet 5/4 { \slurPositionK e,,( e' gs ds' cs } gs'4) r |
  fs,,,4 fs''2. |
  \slurPositionL b,,8( fs'' <ds'fs> fs, <cs' e> fs, <b ds> fs) |
  \stemDown fs,8( cs' <fs as> cs as cs <fs cs'> cs) |
  cs,8-. cs'( <es b'> cs) fs,( cs' <fs as> cs) |
  fs,8( cs' <fs as> cs) fs,( cs' cs' cs,) |
  cs,8-.( cs' <es b'> cs) << { s8 cs4 s8 } \\ { fs,^( cs' as' css,) } >> |
  
  \barNumberCheck 46
  ds,8( as' <ds fs as> as) ds,( as' as' as,) |
  as,8( as' es' gs) ds,( as' fs' ds) |
  gss,8( ds' bs' es,) as,( es' cs' as) |
  << { fs'8( as, es' ds ) } \\ { ds,4 <es gss> } >> as,8( es' cs' <e,gs>) |
  ds,8( ds' <fss cs'> ds) gs,( ds' <gs b> ds) |
  << { e'8( gs, ds' cs) } \\ { cs,4 <ds fss> } >> gs,8( ds' <gs b> ds) |
  
  \barNumberCheck 52
  <<
    { s8 ds4*1/2 css' ds, cs' ds, b' s8 }
    \\
    { ds,,8 ds' css' ds, cs' ds, b' ds, }
  >> |
  << { s8 ds2 ds4 s8 } \\ { as'8^( ds, ds' cs b ds, css' ds, } >> |
  <<
    { ds'4*1/2 ds, css' ds, cs' ds, b' s8 }
    \\
    { ds8 ds, css' ds, cs' ds, b' ds, }
  >> |
  << 
    { s8 ds2*3/4 b'4*1/2 ds, css'4 } 
    \\ 
    { as8 ds, ds' cs b ds, css' ds,) } 
  >> |
  ds,8( fss' as ds) e,,([ e' gs cs16]) r\fermata |
  \stemNeutral \slurPositionQ g,,8( e'' b' e) \slurShapeI fs,,,( fs'' as e') |
  ds,,8( bs' gs' ds') cs,,( cs' b' es) |
  fs,,8( fs' as e') b,( fs' b ds) |
  \tuplet 5/4 { \slurPositionR e,,( e' gs ds' cs } gs'4) r\fermata |
  fs,,,4 fs''2. |
  
  \barNumberCheck 62
  << { f,8 f \tuplet 3/2 { f f f } f f \tuplet 3/2 { f f f } } \\ { f,1~ } >>
  \cadenzaOn \context Voice = "2" { \stemUp <f f'>2^\fermata } r4
  r4 <f' b d f> r\fermata
  r4 r <f b d f g> r\fermata
  b'8([ cs e d cs b as b as gss as cs b8. g16] g4)
  \grace {fs,8([ b d f a] } g)[ r16 fs] 
  << { fs2-> } \\ { r8 <fs, ds'>-. <fs d'>4-. } >> r2
  <<
    { 
      \tieShapeA cs'2*3/2_~ \tuplet 3/2 { cs8[ cs cs] } 
        \tuplet 3/2 { cs[ cs cs] } cs4 d2. 
    }
    \\
    { r4 \staffDown fs, fs s2. r4 fs fs }
  >>
  \context Voice = "1" { r4 as4( \bar "|" }
  << { as4 b2.~ \bar "|" b1)\fermata } \\ { r2 r4 e, b r r2 } >>
  \bar "|."
}

pedal = {
  s4.\sd s16 s16\su s2 |
  s4.\sd s16 s16\su s2 |
  s4.\sd s16 s16\su s2 |
  s1 |
  s4.\sd s16 s16\su s4.\sd s16 s16\su |
  s4.\sd s8\su s4.\sd s16 s16\su |
  s4.\sd s16 s16\su s4.\sd s16 s16\su |
  
  \barNumberCheck 8
  s1 * 4 |
  s4\sd s16\su s8. s2 |
  
  \barNumberCheck 13
  s4.\sd s16 s16\su s2 |
  s1 |
  s4.\sd s16 s16\su s2 |
  s4.\sd s16 s16\su s2 |
  s4.\sd s16 s16\su s4.\sd s16 s16\su |
  s4\sd s16 s16\su s8 s4.\sd s16 s16\su |
  s4.\sd s32 s16.\su s4.\sd s16 s16\su |
  
  \barNumberCheck 20
  s2.\sd s8 s16\su s16 |
  s2.\sd s8. s16\su |
  s4\sd s16 s16\su s8 s4.\sd s16\su s16 |
  s2.\sd s8 s16\su s16 |
  s4.\sd s8\su s4.\sd s16\su s16 |
  s2.\sd s8. s16\su |
  s4\sd s16 s16\su s8 s4.\sd s16 s16\su |
  s4.\sd s16\su s16 s4.\sd s16\su s16 |
  s8.\sd s16\su s8.\sd s16\su s4.\sd s8\su |
  s4.\sd s16 s16\su s4.\sd s16\su s16 |
  s8.\sd s16\su s8.\sd s16\su s4.\sd s8\su |
  
  \barNumberCheck 31
  s1 * 4 |
  s4\sd s16 s16\su s8 s4.\sd s8\su |
  s4.\sd s16 s16\su s4.\sd s16 s16\su |
  
  \barNumberCheck 37
  s4.\sd s16\su s16 s4.\sd s16 s16\su |
  s4.\sd s16\su s16 s4.\sd s16 s16\su |
  s2.\sd s8 s\su |
  s4\sd s\su s2 |
  s4.\sd s16 s16\su s2 |
  s2.\sd s8 s16\su s |
  s4.\sd s16\su s s4.\sd s16\su s |
  s2.\sd s8 s16 s\su |
  s4.\sd s16\su s s4.\sd s16 s16\su |
  
  \barNumberCheck 46
  s2.\sd s8 s16 s\su |
  s4.\sd s16\su s s4.\sd s16 s16\su |
  s4.\sd s16\su s s4.\sd s16 s16\su |
  s8\sd s16 s\su s8\sd s16 s\su s4\sd s16 s\su s8 |
  s4.\sd s16 s16\su s4.\sd s16\su s |
  s8\sd s16 s\su s8\sd s16 s\su s4\sd s8. s16\su |
  
  \barNumberCheck 52
  s2.\sd s8 s16 s\su |
  s1 * 3 |
  s4\sd s16 s16\su s8 s4.\sd s16 s16\su |
  s4.\sd s16\su s s4.\sd s16 s16\su |
  s4.\sd s16\su s s4.\sd s16 s16\su |
  s4.\sd s16\su s s4.\sd s16 s16\su |
  s2.\sd s4\su |
  s2\sd s2\su |
  
  \barNumberCheck 62
}

dynamics = {
  s1-\markup{ \dynamic p \italic dolce } |
  s1 * 3 |
  s2.\< s4\!|
  s2 s2\f
  s8 s-\markup { \dynamic p \italic poco ritenuto } s2. |
  
  \barNumberCheck 8
  s1^\markup { \italic "a tempo" } |
  s1 * 4 |
  
  \barNumberCheck 13
  s1 * 3 |
  s4 s16 s16-\markup { \dynamic pp \italic delicatissimo } s8 s2 |
  s2.\< s8. s16\! |
  s2 s2\f |
  s1 \p |
  
  \barNumberCheck 20
  s1 * 3 |
  s8 s\< s s\! s4 s4\> <>\! |
  s1 |
  s2 s4.\> s8\! |
  s1 |
  s8 s4.\< s2\! |
  s1 |
  s8 s16\> s\! s4\< <>\! s2 | 
  s16 s2.\pp s16 s8 |
  
  \barNumberCheck 31
  s4 s2\> s4\! |
  s4\> s8 s\! s2 |
  s4 s2\> s4\! |
  s4\> s8 s\! s2 |
  s2 s2\f |
  s8.\p s16-\markup { \italic "poco retinuto" } s2. |
  
  \barNumberCheck 37
  s1\f |
  s1 |
  s2 s8 s8\> s8. s16\! |
  s1 |
  s1-\markup { \italic "a tempo" } |
  s2 s4.\> s8\! |
  s1 * 3|
  
  \barNumberCheck 46
  s1 |
  s4.\> s8\! s2 |
  s1 * 3 |
  s16 s\pp s8 s2. |
  
  \barNumberCheck 52
  s4 s2\> s4\! |
  s4\> s8 s\! s2 |
  s4 s2\> s4\! |
  s4\> s8 s\! s2 |
  s2 s2\f |
  s1\p |
  s1\f |
  s1 |
  s2. s4\> <>\! |
  s1-\markup { \italic dim. } |
  
  \barNumberCheck 62
}

#(set-global-staff-size 18) % default 20

% Engraving is fine, even with the warning
%#(ly:expect-warning "warning: stealing the entirety of a note's time")

\paper {
  ragged-last-bottom = ##t % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 3)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
      
  last-bottom-spacing = 
    #'((basic-distance . 2)
       (minimum-distance . 1)
       (padding . 2)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  % #(set-paper-size "letter") % for testing only
  
  % These settings are scaled to paper-size
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
}

% Typeset only
\score {
  \keepWithTag layout
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
  }
}

\include "articulate.ly"

% Midi only
\score {
  \keepWithTag midi
  \articulate {
    <<
      \new Staff = "upper" << \rightHand \pedal \dynamics >>
      \new Staff = "lower" << \leftHand \pedal \dynamics >>
    >>
  }
  \midi {
  }
}