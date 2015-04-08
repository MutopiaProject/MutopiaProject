%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.19.17"
\language "english"

\include "articulate.ly"

#(set-global-staff-size 18)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #11       %-pads music from copyright block

    %% --- Set these to false after all editing is finished
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    ragged-right = ##f
    
    %% --- Control system/score spacing
    system-system-spacing = 
      #'((basic-distance . 12)
         (minimum-distance . 6)
         (padding . 2)
         (stretchability . 12))
    score-system-spacing =
      #'((basic-distance . 18)
         (minimum-distance . 16)
         (padding . 1)
         (stretchability . 14))
}

\header {
    title = "Prélude IV."
    composer = "Claude Debussy (1862-1918)"
    opus = "CD 125; L.117"
    subtitle = "Les sons et les parfums tournent dans l'air du soir"
    date = "1910"
    style = "Romantic"
    source = "Durand, 1910"

    maintainer = "Knute Snortum"
    maintainerEmail = "knute (at) snortum (dot) net"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Prélude 4: Les sons et les parfums tournent dans l'air du soir"
    mutopiaopus = "CD 125; L.117"
    mutopiacomposer = "DebussyC"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2015/03/25-2002"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%-----------------------------------------------------------------------------
% Corrections from the source
%
% bar 29: Assuming that the g's on beat three are natural because they are 
%         explisitely lowered on the next eighth.  The gflat from the third
%         eight note chord would normally make the g lowered.
%
% bar 31: The assumption here is that the bar is in 4/4.  The rhythms don't
%         fit otherwise.
%
% bar 37, 38: The upper voice in the first beat of the left hand is assumed to
%             be a quarter note, not a dotted quarter.
%%-----------------------------------------------------------------------------

%--------Definitions

\include "debussy-L117-prel-4-defs.ly"

%------------Music

upperStaffTop = \relative c' {
  \tupletBracketOff
  \time 5/4 \fakeThreeFour
  \oneVoice 
  r4 ^"(harmonieux et souple)" \voiceOne <e e'>8 ( <a a'> <bf d e bf'>4 
    \bar "!" <e, e'> ) \oneVoice r |
  r4 \voiceOne <e e'>8 ( [ <a a'> <bf bf'> <fs' fs'> ] 
    \bar "!" <cs cs'>4-. q-. ) |
  \hideTimeSignature  \time 3/4
  \oneVoice r4 fs,8 ^\> ( cs ) \! r4 |
  fs8 ^\> ( cs ) \! r4 fs8 ^\> ( cs ) \! |
  r4 c'8 ( [ g ] ~ g bf ) ~ |
  bf8 <cs, e>-. [ ( <e g>-. <g bf>-. <bf cs>-. <cs e>-. ) ] |
  r4 c8 ( [ g ] ~ g bf |
  
  \barNumberCheck #8
  \stemUp
  cs8 ) <g bf>-. [ ( <bf cs>-. <cs e>-. <e g>-. <g bf>-. ) ] |
  r4 ^\animant \voiceOne <cs, cs'>8 ( <ds ds'> q4 ~ |
  q8 <cs cs'> q <ds ds'> q <cs cs'> ) |
  \oneVoice r4 \voiceOne <b b'>8 ( <cs cs'> q4 ~ |
  q8 <b b'> q <a a'> <b b'> <cs cs'> ) |
  \oneVoice r4 \voiceOne <ds, ds'>8 ( <gs gs'> <ds ds'>4-. ) |
  \oneVoice r8 \voiceOne <cs cs'> ( <as as'> <cs cs'> <ds ds'> <fs fs'> ) |
  \oneVoice r8 <ds ds'>-. ( <gs gs'>-. <ds' ds'>-. 
    \octaveUp <gs gs'>-. <ds' ds'>-. |
    
  \barNumberCheck #16
  \stringSpanner "En retanant" {
  <gs gs'>4-. ) \octaveNeutral r r |
  ds,=''8 ( cs ds, cs ds cs' ) } |
  s2. * 6 |
  
  \barNumberCheck #24
  \voiceOne
  \hideTimeSignature \time 5/4
  \tempo "a Tempo"
  r4 <e,=' e'>8 ( <a a'> <bf d e bf'>4 \bar "!" <e, e'>4 ) \oneVoice r |
  r4 \voiceOne  <e e'>8 ( [ <a a'> <bf bf'> <f' f'> ] 
    \noBreak \bar "!" <cs cs'>4-. q-. ) |
  \oneVoice r4 fs,8 ^\> ( cs ) \! r4 \bar "!" fs8 ^\> ( cs ) \! ~ cs4 |
  \bar "||"
  \clef bass
  \key af \major
  \tempo "Plus lent"
  r4 \voiceOne ef,8 ( af bff f' \bar "!" c4-. c-- ) \fermata |
  \clef treble
  \tempo "Eu animant"
  \oneVoice r4 \voiceOne <ef ef'>8 ( <af af'> <bff bff'> <f'f'>
    \bar "!" <c c'>4 \oneVoice <g' bf g'>8 <d cf' d> ) ~ |
  \hideTimeSignature \time 3/4
  q8 ( <f bf f'>-. <c f c'>-. <ef af ef'>-. <bf e bf'>-. <df gf df'>-. ) |
  \hideTimeSignature \time 5/4
  \stringSpanner "Cédez" {
    r4 \voiceOne <f, bf f'>8 ( <c' c'> q4 \bar "!" <c gf' c> <ef, df' ef> ) 
  } |
  \tempo "Rubato"
  \hideTimeSignature \time 4/4
  \oneVoice r8 \voiceOne g-- f4-- s4 
    \stringSpanner "Serrez" { <ef ef'>8 ( <af af'> |
  
  \barNumberCheck #32
  \hideTimeSignature \time 3/4
  <bff bff'>8 <f' f'> <c c'>4 )  } \shapeSlurTwo <b, d g>-- ( |
  f'2-- ) \stringSpanner "Serrez" { <ef ef'>8 ( <af af'> |
  <bff bff'>8 <f' f'> <c c'>4 ) } <b, d g>8-. ( <df f bf>-. |
  <b d g>-. <gs b e>-. <g c>-. <gs b e>-. <b d g>-. <gs b e>-. |
  <g c>8-. [ a-. <g c>-. <gs b e>-. ] ) 
    \tempo "Rubato" \shapeSlurThree <bs ds gs>4-- (
  \bar "||"
  \key a \major
  fs'2-- ) \tempo "Serrez" <e e'>8 ( <a a'> |
  <bf bf'>8 <fs' fs'> <cs cs'>4 ) r |
  <bf bf'>8 ( <fs' fs'> <cs cs'>4 ) r |
  
  \barNumberCheck #40
  \clef bass 
  \stemDown
  \stringSpanner "Cédez" {
  <a, b d f>8-. ( \staffDown \stemUp <f a b d>-. \staffUp \stemDown
    <e f a c>-. \staffDown \stemUp <c e f a> \staffUp \stemDown <a b d f>-.
    \staffDown \stemUp <f a b d>-. ) } | 
  \staffUp
  \clef treble
  cs''4 ( <cs' cs'> <cs' cs'> |
  \clef bass 
  <cs,,, cs'>4 <as as'> <e' e'> ) |
  \clef treble
  cs'4 ( <cs' cs'> <cs' cs'> |
  \hideTimeSignature \time 5/4
  cs,,4 \stemRight as ) \tempo "Tempo" <cs' cs'>8 ( <fs fs'>
    \bar "!" \stemDown <fss cs' fss>4 <cs cs'> ) |
  \clef bass \stemUp
  r4 \clef treble <cs cs'>8 <fs fs'> \bar "!" \tuplet 3/2 4 { 
    r8 <ds' ds'> <as as'> r <cs cs'> <gs gs'> r <as as'> <es es'> } |
  \hideTimeSignature \time 3/4
  \tempo "En retenant"
  \tuplet 3/2 { r8 <a a'> ^\> _( <e e'> ) \! } r4 r |
  \tuplet 3/2 { r8 <a a'> ^\> _( <e e'> ) \! } r4 r |
  
  \barNumberCheck #48
  \oneVoice <df g df'>4-- ( <c g' c>-- <df g df'>-- ) |
  \tempo "Plus Retenu"
  \hideTimeSignature \time 5/4
  \voiceOne fs4. ( \tieDown <cs cs'>8 ~ q4 \bar "!"
    \oneVoice <cs g' cs>4 <e, d' e> ) 
  \hideTimeSignature \time 3/4
  \voiceOne r8^\comme <cs' a' cs> ~ q4 r
  r4 <cs a' cs> ~ q8 r
  \voiceOne r8^\encore <cs a' cs> ~ q4 r
  r4 <cs a' cs> r
  \bar "|."
}

upperStaffBottom = \relative c'' {
  \tupletBracketOff
  \time 5/4
  
  s4 <a cs> s2. | 
  s4 <a cs> <d e> s2 |
  s2. * 5 |
  
  \barNumberCheck #8
  s2. |
  s4 es2 |
  fs4 g fs |
  s4 es2 |
  fs4 g fs |
  s4 a,2 |
  s8 g4. s4 |
  s2. |
  
  \barNumberCheck #16
  s2. * 2 |
  \oneVoice
  ds'8 ^\egal ( cs ds, cs ds cs' |
  ds8 cs ds, cs ds cs' ) |
  ds8 ( cs ds, cs ds cs' |
  \stringSpanner "Serrez un peu" {
  ds8 cs ds, cs ds cs' ) |
  ds8 ( cs ds, cs ds cs' } |
  \stringSpanner "Retenu" {
  ds8 cs cs, ds cs' ds ~ ) } |
  
  \barNumberCheck #24
  \voiceTwo
  ds4 <a cs> s2. |
  s4 <a cs> <d e> s2 |
  s1 s4 |
  s2 <df,, ef gf> s4 |
  s4 <af'' c> <df ef> s2 |
  s2. |
  s4 s8 e ~ \shapeSlurOne e ( f ) s2 |
  s4 f,16. [ ( ef32 ] 
    \tuplet 7/4 { c32 af ef \staffDown \stemUp c af ef af, ) ~ }
    \stemDown af4 \staffUp <af''' c> |
  
  \barNumberCheck #32
  <df ef>4 s2 |
  f,16. ( [ ef32 ] 
    \tuplet 6/4 { c32 af ef \staffDown \stemUp c af ef }
    \stemDown af,4 ) \staffUp <af''' c> |
  <df ef>4 s2 |
  s2. * 2 |
  fs,16. ( [ e32 ]
    \tuplet 6/4 { cs32 a \staffDown \stemUp e cs a e }
    \stemDown a,4-- ) _\md \staffUp  <a''' cs> |
  <d e>4 s2 |
  <d e>4 s2 |
  
  \barNumberCheck #40
  s2. |
  \stemRight cs,16 d fs gs cs d fs gs cs gs fs d |
  \clef bass
  cs,,16 d fs gs as, d fs gs e gs fs d |
  \clef treble
  \stemRight cs'16 d fs gs cs d fs gs cs gs fs d |
  \staffDown \stemUp \crossStaff cs,,16 d fs gs 
    \staffUp \stemDown as d fs gs fs'4  s4 s |
  \clef bass cs,,16 ( d fs gs ) \clef treble fs''4 (
    <fss cs' fss> <es b' es> <d gs d'> ) |
  <df g df'>2 \tuplet 6/4 { \staffDown \stemUp b16 \rest cs, ^( e 
                            \staffUp \stemDown a bf fs' ) } |
  <c g' c>2 \tuplet 6/4 { \staffDown \stemUp b16 \rest c, ^( e 
                            \staffUp \stemDown a bf fs' ) } |
  
  \barNumberCheck #48
  \tuplet 6/4 { \staffDown \stemUp b16 \rest cs,, ^( e 
                \staffUp \stemDown a bf fs' ) } 
    \tuplet 6/4 { \staffDown \stemUp b16 \rest c,, ^( e 
                  \staffUp \stemDown a bf fs' ) } 
    \tuplet 6/4 { \staffDown \stemUp b16 \rest cs,, ^( e 
                  \staffUp \stemDown a bf \tieUp fs' ~ ) } |
  \hideTimeSignature \time 5/4
  \once \hide Stem fs4. s8 s4 s2 |
  \hideTimeSignature \time 3/4
  \acciaccatura { <ds, fs>8 } \autoBeamOff <cs e>8^. ^( q8^. ) ~ q2 
  \subgroupByEights
  \autoBeamOn <ds fs>16^. ^\< ^( <cs e>^. ) 
    <e gs>32^- ^\> ^( <ds fs> <cs e>16^. ) \! s2 
  \acciaccatura { <ds fs>8 } \autoBeamOff <cs e>8^. ^( q8^. ) ~ q2 
  \autoBeamOn <ds fs>16^. ^( <cs e>^.) <e gs>32^- ^( <ds fs> <cs e>16^. ) s2 
}

lowerStaffTop = \relative c' {
  r4 <a cs> <d e g> e, r |
  r4 <a cs> <d e g> s2 |
  \hideTimeSignature  \time 3/4
  <d, f af bf>4-. ^\md ( <ds fs a b>-.<f af bf d>-. |
  <e g a cs>4-. <d f af bf>-. ^\md <ds fs a b>-. ) |
  \set doubleSlurs = ##t
  <f af bf d>4 \< ( <af bf df e>2 ) \! |
  s2. |
  <f af bf d>4 \< ( <af bf df e>2 ) \! ~ |
  
  \barNumberCheck #8
  q2. |
  \set doubleSlurs = ##f
  <es a cs es>2. ^\md ( |
  <fs a cs fs>4 <g a cs g'> <fs a cs fs> ) |
  <es a cs es>2. ^\md ( |
  <fs a cs fs>4 <g a cs g'> <fs a cs fs> ) |
  %\set doubleSlurs = ##t
  <f b f'>2.-- ( |
  <e as e'>2. ) |
  <f b f'>2. |
  
  \barNumberCheck #16
  s2. |
  \oneVoice R1 * 3/4 |
  \clef bass
  <gs b f'>4 _\enDehors _( <f b cs> <gs b f'> |
  <g bf e>2 <e b' cs>8 <g bf e> ) |
  <gs b f'>4 <f b cs> <gs b f'> |
  <g bf e>2 <bf c g'>8 _( _\< <g bf e> |
  <e bf' c>8 <g bf e>4. ) \! <bf c g'>8 \p _\< _( <g bf e> |
  <e bf' c>8 <g bf e>4. ) \! g'4-- \p |
  
  \barNumberCheck #24
  \voiceThree
  \hideTimeSignature \time 5/4
  r4 <a, cs> <d e g> e, r |
  r4 <a cs> <d e g> s2 |
  <d, f af bf>4 ^\md ( <ds fs a b> <f af bf d> \bar "!" <e g a cs>2 ) |
  \key af \major
  s2 af,4 ~ \bar "!" af2 |
  \oneVoice r4 \voiceThree <af' c> <df ef gf> \bar "!" s2 |
  \hideTimeSignature \time 3/4
  s2. |
  \hideTimeSignature \time 5/4
  \voiceThree
  r4 
    << 
      { 
        <df, f bf df>8 _( <e e'> ~ q <f f'> 
          \stemDown <gf a d gf>4 <g bf df g> ) | 
      } 
      \\ 
      { s8 <af df> ~ q4 s2 | } 
    >>
  \hideTimeSignature \time 4/4
  \oneVoice r4 s2 \voiceThree <af c>4 |

  \barNumberCheck #32
  \hideTimeSignature \time 3/4
  <df ef gf>4 s g, |
  \oneVoice r4 s \voiceThree <af c> |
  <df ef gf>4 s2 |
  s4 \crossStaff { e,8 } s8 s4 |
  \autoBeamOff \crossStaff { e8 <cs e> e } \autoBeamOn s s4 |
  \key a \major
  s2 <a cs>4 |
  <d e g>4 r8 <b ds es gs>_. ( \staffUp \stemDown <d f g b>_. 
    \staffDown \stemUp <b ds es gs>_. ) |
  <d e g>4 r8 <b ds es gs>_. ( \staffUp \stemDown <d f g b>_. 
    \staffDown \stemUp <b ds es gs>_. ) |
    
  \barNumberCheck #40
  s2. |
  <<
    \new Voice {
      \voiceThree \crossStaff { cs,4 } s2 |
    }
    \new Voice {
      \voiceFour cs16 d fs gs \stemUp cs \clef treble d fs gs cs gs fs d |
    }
  >>
  r8 gs-. r gs-. r gs-. |
  \clef bass
  <<
    \new Voice {
      \voiceThree \crossStaff { cs,,4 } s2 |
    }
    \new Voice {
      \voiceFour cs16 d fs gs \stemUp cs \clef treble d fs gs cs gs fs d |
    }
  >>
  \hideTimeSignature \time 5/4
  \clef bass
  gs,,8 \rest gs \crossStaff as16 \stemDown d [ fs gs ] s2. \stemUp |
  \clef bass <as,, as'>4 \clef treble <as'' cs fs as> ( \bar "!"
    <as cs fss cs'> <gs b d es b'> <es gs b d gs> ) |
  \hideTimeSignature \time 3/4
  \clef bass <e g bf df e>2. |
  <e g bf c g'>2. |
  
  \barNumberCheck #48
  \oneVoice <e g bf df g>4_- _( <e g bf c g'>_- <e g bf df g>_- ) |
  \hideTimeSignature \time 5/4
  \staffUp
  r4
  <<
    \new Voice {
      \voiceTwo <fs' b>8 cs' es fs s2 
    }
    \new Voice {
      \voiceTwo s8 \shiftOn \tieUp \shapeTieOne es8 ~ \stemUp
        \once \hide Stem \once \hide NoteHead es s s2 
    }
  >> |
  \staffDown 
  \hideTimeSignature \time 3/4
  \stemDown
  \acciaccatura { <fs,, b>8 } 
  <<
    { 
      s8 \staffUp \once \hide Staff.Flag \stemDown 
      \crossStaff <cs' e>8^. \crossStaff <cs e>2 
    }
    \\
    { 
      <e, a>8 <e a>8 \laissezVibrer \ottava #-1 a,,,4 \ottava #0 a' \rest
    }
  >> 
  \subgroupByEights
  <fs'' b>16^. _\< ( <e a>^. ) <gs cs>32^- _\> ( <fs b> <e a>16 ^. ) \!
    << { \staffUp \stemDown \crossStaff <cs' e>2 } \\ { \crossStaff <e, a>2 } >>
  \acciaccatura { <fs, b>8 } 
  <<
    { 
      s8 \staffUp \once \hide Staff.Flag \stemDown 
      \crossStaff <cs'' e>8^. \crossStaff <cs e>2 
    }
    \\
    { 
      <e, a>8 <e a>8 \laissezVibrer \ottava #-1 a,,,4 \ottava #0 a' \rest
    }
  >> 
  <fs'' b>16^. ( <e a>^. ) <gs cs>32^- ( <fs b> <e a>16 ^. ) 
    << { \staffUp \stemDown \crossStaff <cs' e>2 } \\ { \crossStaff <e, a>2 } >>
  \bar "|."
}

lowerStaffBottom = \relative c, {
  a4-. e''8 ( a bf4 e, ) e,-. ( |
  a,4-. ) e''8 ( a bf fs' cs4^. cs^. ) |
  a,,4-- r r |
  r4 a-- r |
  r4  r a-. |
  r4 a-. r |
  r4 r a |
  
  \barNumberCheck #8
  r4 a r |
  \shapeLVTieOne <a a'>2. \laissezVibrer |
  s2. |
  \shapeLVTieOne <a a'>2. \laissezVibrer |
  s2. |
  r4 <a a'>4 _\p ~ q8 r |
  r4 <a a'>4 ~ q8 r |
  r4 \clef treble \stemUp cs''='8 ( ds cs' ds ) ~ |
  
  \barNumberCheck #16
  ds8 ( cs ds, cs ds \staffUp \stemDown cs' ) \staffDown |
  s2. * 7 |
  
  \barNumberCheck #24
  a,,,=,,4-. e''8 _( a bf4 e, ) e,-. ( |
  a,4-. ) e''8 _( a bf f' cs4^. cs^. ) |
  a,,4 s1 |
  gf'8 ( df ~ df2 ) ~ df |
  s4 ef'8 _( af bff f' c4 
    \clef treble \voiceOne <bf df g bf>8 <cf d af' cf> ) ~ |
  q8 ( <bf df g bf>-. <a c gf' a>-. <af cf f af>-. 
    <g bf e g>-. <gf a ef' gf>-. ) |
  \clef bass
  \voiceFour
  ef,,=,,2. s2 |
  s2. ef''8 ( af |
  
  \barNumberCheck #32
  bff8 f' c4 ) s4 |
  s2 ef,8 _( af |
  bff8 f' c4 ) g8 _\laBasse ( bf |
  g8 e c e g e |
  c8 [ a c e-. ] ) gs4-- |
  s2 e8 ( a |
  bf8 fs' cs4 ) r4 |
  bf8 ( fs' cs4 ) r4 |
  
  \barNumberCheck #40
  s2. |
  <cs,,, cs'>4 ( <cs'' cs'> \clef treble <cs' cs'> |
  <cs, cs'>4 <as as'> <e' e'> ) |
  \clef bass <cs,, cs'>4 ( <cs'' cs'> \clef treble <cs' cs'> |
  <cs,,, cs'>4 <as as'> ) \clef treble <as''' cs fs as> ( 
    <as cs es fss cs'>2 ) |
  s1 s4 |
  \clef bass r4 a,, r |
  r4 a r |
  
  \barNumberCheck #48
  s2. |
  \hideTimeSignature \time 5/4
  <<
    \new Voice {
      \voiceFour a4 s2 s 
    }
    \new Voice {
      \voiceThree \stemDown
      r4 <d' fs b d>8 _( <es a d es> ~ q <fs fs'> <g as ds g>4 <gs b d gs> ) 
    }
  >> 
  \hideTimeSignature \time 3/4
  r4 <e, a>2 
  r4 a, \rest \ottava #-1 a, \ottava #0 \acciaccatura s8
  r4 <e'' a>2 
  r4 a, \rest \ottava #-1 a, 
}

dynamics = {
  \tempo "Modéré" 4 = 84
  s4 -\tweak X-offset #-5 -\markup { \parenFiveFour } s \pp 
    s -\tweak #'to-barline ##f \> s \! s |
  s4 s s8 \< s s4 \> s \! |
  s4 \pp s2 |
  s2. |
  s4 s \< s8 s \! |
  s8 s \> s4 s8 s \! |
  s2. |
  
  \barNumberCheck #8
  s8 s \> s4 s8 s \! |
  s4 \p s ^"expressif" \< s \! |
  s2. |
  s4 \p s\< s8 s \! |
  s2. |
  s2. \mf |
  s8 \< s4. s8 s \! |
  s8 \> s4. s8 s \! |
  
  \barNumberCheck #16
  s8 \p s ^\markup { \italic "dim." } s2 |
  s2. |
  \tempo "a Tempo" 
  s2. \pp  |
  s2. * 5 |
  
  \barNumberCheck #24
  s4 s \pp s -\tweak #'to-barline ##f \> s \! s \pp |
  s2 s8 \< s \! s4 \> s \! |
  s1 \pp s4 |
  s2 \pp s8 \< s \! s4 \> s \! |
  s4 \p s -\tweak #'to-barline ##f \< s2 s4 \mf \< |
  s8 \> s s4 s8 s \! |
  s2. \pp s2 |
  s2. \mf s4 \p -\tweak #'to-barline ##f \< | 
  \noBreak

  \barNumberCheck #32
  s2 \! s4 \p |
  s2 s4 -\tweak #'to-barline ##f \< |
  \noBreak
  s4 s \! s \p |
  s2. |
  s2 s4 -\tweak #'to-barline ##f \< |
  s2 -\tweak X-offset #-1 \mf s4 -\tweak #'to-barline ##f \p \< |
  s4 s \! s |
  s4 \mf \< s \! s |
  
  \barNumberCheck #40
  s4 \p s -\tweak X-offset #1 ^\dimin s |
  s2. \pp |
  s4 s \< s \> |
  s2. \p |
  s2 s4 \p -\tweak #'to-barline ##f  \< s2 \> |
  s4 \pp s4 \< s2 \> s8 s \! |
  s2 \pp s8 s -\tweak Y-offset #-4 -\leger |
  s2. |
  
  \barNumberCheck #48
  s2. |
  s4 \pp s8 \< s s s \! s4 \> s \! 
  s2. \pp 
  s4 s2 \pp 
}

upperStaff = {
  \clef treble
  \global
  <<
    \new Voice { \voiceOne \upperStaffTop }
    \new Voice { \voiceTwo \upperStaffBottom }
  >>
}

lowerStaff = {
  \clef bass
  \global
  <<
    \new Voice { \voiceThree \lowerStaffTop }
    \new Voice { \voiceFour \lowerStaffBottom }
  >>
}

%-------Typeset music 
\score {
  \removeWithTag #'played
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.padding = #5
  } <<
    \new Staff    = "upper" { \upperStaff }
    \new Dynamics = "dyns"  { \dynamics }
    \new Staff    = "lower" { \lowerStaff } 
  >>
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}

%-------generate Midi
\score {
  \articulate <<  
    \removeWithTag #'printed
    \new PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff    = "upper" { \upperStaff }
        \new Dynamics = "dyns"  { \dynamics }
        \new Staff    = "lower" { \lowerStaff }
    >>
  >>
  \midi {  
  }
}
