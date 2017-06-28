%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.60"
\language "english"

% Function: shapeSlur.  Used to control slurs that cross line breaks
\include "ShapeSlur.ily"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 17"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73659/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 17"
  mutopiaopus = "Op 28, No 17"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/06/28-2190"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

sd = \sustainOn 
su = \sustainOff 

forceHShift = {
  \once \override NoteColumn.force-hshift = -2.2 
  \once \override Dots.extra-offset = #'(-0.9 . 0.0)
  \once \override NoteHead.extra-spacing-width = #'(-1.0 . 0.0)
}

shapeSlurA = \shape #'((0.5 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 0)) \etc
shapeSlurB = \shape #'((1 . 4.5) (0 . 3) (0 . 3) (0 . 0)) \etc
shapeSlurC = \shapeSlur #'((0 3.5 0 4 0 3 0 2) (0 2 0 2 0 1 0 0))
shapeSlurD = \shape #'((0 . -2) (0 . 0) (0 . 0) (0 . 0)) \etc
shapeSlurE = \shape #'((0 . 3) (0 . 3) (0 . 3) (0 . 0)) \etc
shapeSlurF = \shape #'((0 . 0.5) (0 . 1) (0 . 1) (0 . 1)) \etc
shapeSlurG = \shape #'((-0.5 . 4.5) (0 . 5) (0 . 6) (0 . 2)) \etc
shapeSlurH = \shape #'((0 . 0.5) (0 . 2) (0 . 3) (0 . 0.5)) \etc
shapeSlurI = \shape #'((0 . 0.5) (0 . 2) (2 . 4.5) (0.5 . 1.5)) \etc
shapeSlurJ = \shape #'((-0.5 . 5) (0 . 6) (0 . 3) (0 . 0)) \etc
shapeSlurK = \shape #'((-0.5 . 4) (0 . 5) (0 . 3) (0 . 0)) \etc
shapeSlurL = \shape #'((0 . 0) (0 . 2) (1 . 3.5) (0 . 0)) \etc
shapeSlurM = \shape #'((0 . 0) (0 . 1.5) (2 . 5) (0 . 1)) \etc

% Position the fz and Ped. marks (used together)
fzLeft = { <> -\tweak extra-offset #'(-3 . 3) \fz }
sustainShift = \tweak Y-offset -3 \tweak extra-offset #'(0 . 3) \etc 

global = {
  \key af \major
  \time 6/8
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto." 4. = 69
  
  % Articulations should be below the slurs
  \override Script.avoid-slur = #'inside
  \override Script.outside-staff-priority = ##f
  
  \oneVoice
  | c'8 ( c c c c c
  | c8 c c c c c
  | df8 <df g> <df c'> <df df'> <df f> <df g>
  \voiceOne
  | bf'4. \forceHShift af ~ 
  \oneVoice
  | af8 <af df> <af g'> <af bf'> <af af'> <af f'>
  \voiceOne
  | ef'4.-> f-> ~   
  \oneVoice
  | f8 bf, <ef, bf' ef> <bf' g'> <bf f'> <bf df>
  \voiceOne
  | c4.-> df-> ~ 
  \oneVoice
  | df8 <df, af'> <df g bf> df' <c, af' c> <c f af>
  \voiceOne
  | bf'2. ) ~
  
  \barNumberCheck 11
  | bf8 ( <df, g bf> <df g c> <df df'> <df f> <df g>
  \voiceOne
  | bf'4. \forceHShift af ) ~
  \oneVoice
  | af8 <af df> ( <af df g> <af df bf'> <af df af'> <af df f>
  \voiceOne
  | ef'4.-> f-> ~ 
  \oneVoice
  | f8 ) <ef, bf'> ( <ef bf' ef> <bf' g'> <bf f'> <ef, bf' df>
  \voiceOne
  | c'4.-> df-> ~
  | df8 df, <df af'> c' bf8. af16
  | af2. )
  
  \barNumberCheck 19
  | gs4. s
  | cs2.
  | cs4 bs8 <bs, gs' bs> <bs a'> <bs gs'>
  | e'2.
  | e4 ( ds8 \stemDown <b ds> <b cs> b )
  | \stemUp gs'4 ( gs8 gs fss ds )
  | fs4 ( fs8 fs es cs )
  | e8 ( ds e gs4 fs8
  
  \barNumberCheck 27
  | e2.-> ) ~
  | e8 e ( ds fs e c
  | e2. ~
  | e8 ) e ds fs e c
  | e2.-> ~
  | e4. ds4-> ds8
  | ef2.
  | d2.
  
  \barNumberCheck 35
  \oneVoice
  | <df, g>8 ^( q <df g c> <df g df'> <df f> <df g>
  \voiceOne
  | bf'4. \forceHShift af ) ~
  \oneVoice
  | <f af>8 <af df> -\shapeSlurD ( <af df g> <af df bf'> <af df af'> <af df f>
  \voiceOne
  | ef'4.-> f-> ) ~
  \oneVoice
  | f8 <ef, bf'> ( <ef bf' ef> <bf' g'> <bf f'> <ef, bf' df>
  \voiceOne
  | c'4.-> df-> ~
  \oneVoice
  | df8 <df, af'> <df g bf> <df af' df> <c af' c> <c f af>
  \voiceOne
  | bf'2.
  
  \barNumberCheck 43
  | b4. \slurDown \acciaccatura { \teeny b16 cs } \normalsize \slurNeutral
    <b, fs' b>8 <as fs' as> <b fs' b>
  | cs'4. b ) ~
  | b8 <fs b> ^( <fs b cs> <fs b ds> <fs b e> <fs b fs'>
  | gs'2. ~
  \oneVoice
  | gs8 ) cs,, ^( <cs gs' cs> \acciaccatura { \teeny cs'16 ds } \normalsize
    <cs, gs' cs>8 <bs gs' bs> <cs gs' cs>
  \voiceOne
  | ds'4. cs ) ~
  | cs8 <es, b' cs> <es b' ds> <es b' es> <fs b cs fs> <gs b cs gs'>
  | as'2.
  
  \barNumberCheck 51
  | b4. ( gs
  | bf4. g
  | a4. fs ) ~
  | fs2. \(
  | g4. ~ g8 af e
  | g8 [ \slurDown \grace { \teeny f16 -\shapeSlurF ( g } \normalsize \slurUp 
    f8 ) e ] f g d
  
  \barNumberCheck 57
  | ef2.-> \) ~
  | ef8 ef ( d f ef cf 
  | ef2.-> ) ~
  | ef8 ef ( d f ef cf 
  | ef2.-> ) ~
  | ef2.
  \oneVoice
  | <ef, bf'>8 q q q q q
  | <ef bf'>8 q q q q q ~
  
  \barNumberCheck 65
  | <ef bf'>8 q <ef c'> <ef df'> <df f> <df g>
  \voiceOne
  | bf'4. af 
  \oneVoice
  | r8 <af df> <af df g> <af df bf'> <af df af'> <af df f>
  \voiceOne
  | ef'4. f
  \oneVoice
  | r8 \stemDown <ef, bf'> <bf' ef> \stemNeutral <bf g'> <bf f'> <bf df>
  \voiceOne
  | c4. df
  \oneVoice
  | r8 df, <df bf'> <c af' df> <c af' c> <c f af>
  \voiceOne
  | bf'2.
  
  \barNumberCheck 73
  \oneVoice
  | r8 <df, g bf> <df g c> <df g df'> <df f> <df g>
  \voiceOne 
  | bf'4. \forceHShift af
  \oneVoice
  | r8 <af df> <af df g> <af df bf'> <af df af'> <af df f>
  \voiceOne
  | ef'4. f
  \oneVoice
  | r8 \stemDown <ef, bf'> <ef bf' ef> <bf' g'> <bf f'> <bf df>
  \voiceOne
  | c4. df
  \oneVoice
  | r8 df, ^( <df af'> <df c'> <df bf'> <df af'>
  \voiceOne
  | c'2. ~
  
  \barNumberCheck 81
  | c4 ) ( af8 c bf af
  | c4. ~ c8 bf af 
  | c4. ~ c8 bf af 
  | af2.
  | af2.
  | af4. af
  | af4. af
  \oneVoice
  | r8 c, c c c c
  | c8 c c c \acciaccatura { ef8 } df c
  | c2. ) \fermata |
  
  \bar "|."
}

rightHandLower = \relative {
  \global
  \clef treble
  
  \voiceTwo
  | s2. * 3
  | r8 <c' gf'> q q q q
  | s2.
  | r8 <ef bf'> q r <f df'> q
  | s2.
  | r8 <ef a> q r <df af'> q
  | s2.
  | r8 <bf g'> q q q q
  
  \barNumberCheck 11
  | s2.
  | r8 <c gf'> q q q q
  | s2.
  | r8 <ef bf'> q r <f df'> q
  | s2.
  | r8 <ef a> q r <df af'> q
  | s4. r8 <df g> q
  | r8 c c c c c
  
  \barNumberCheck 19
  | r8 -\shapeSlurA ^( \stemUp <gs d'> q <gs d' gs> <gs d' fs> <gs d' e>
  | r8 <cs a'> q q q q )
  | r8 -\shapeSlurB ^( \stemDown <cs gs'> <bs gs'> s4.
  | r8 <e cs'> q q q <e c'> )
  | r8 <e b'> b' s4.
  | r8 <gs css> q r <fss ds'> q
  | r8 <fs bs> q r <es cs'> q
  | r8 <ds as'> <e as> r <gs e'> <fs b>
  
  \barNumberCheck 27
  | r8 <e b'> q q q q
  | r8 <e c'> <ds c'> <fs c'> <e c'> q
  | r8 <e b'> q q q q
  | r8 \shapeSlurC <e c'> ^( <ds c'> <fs c'> <e c'> q
  | r8 <e b'> q q q q
  | <e b'>8 q q <ds b'> q q
  | <ef cf'>8 q q q q q
  | <d cf'>8 <d af' cf> q q q q )
  
  \barNumberCheck 35
  | s2.
  | r8 <c gf'> q q q q
  | s2.
  | r8 <ef bf'> q r <f df'> q
  | s2.
  | r8 <ef a> q r <df af'> q
  | s2.
  | r8 <bf g'> q q q q
  
  \barNumberCheck 43
  | r8 <b fs'> q s4.
  | r8 <cs gs'> q <b gs'> gs' gs
  | s2.
  | r8 <gs e'> q q <gs b e> q
  | s2.
  | r8 <cs, as'> q q q q
  | s8 \hideNotes \stemUp \tweak Stem.length 1 cs' -\shapeSlurE ^( 
    \unHideNotes \stemDown s s4.
  | r8 <as fs'>8 q <as cs fs> q q )
  
  \barNumberCheck 51
  | r8 <a b fs'> q r <gs e'> q
  | r8 <af f'> q r <g ef'> q
  | r8 <g e'> q r <fs d'> <fs cs'>
  | <fs bs>8 <fs a bs> <fs a cs> <fs a d> q <fs a ef'>
  | r8 <g ef'> q <g cs> q q
  | r8 <af d> q q q q
  
  \barNumberCheck 57
  | r8 <ef bf'> q q q q
  | <ef cf'>8 q <d cf'> <f cf'> <ef cf'> q
  | r8 <ef bf'> q q q q
  | <ef cf'>8 q <d cf'> <f cf'> <ef cf'> q
  | r8 <ef bf'> q q q q
  | <ef bf'>8 q q q q q
  | s2.
  | s2.
  
  \barNumberCheck 65
  | s8 \stemUp \hideNotes g -\shapeSlurG ^( \unHideNotes \stemDown s s4.
  | c,8 c c c c c )
  | s8 \hideNotes df' -\shapeSlurH ^( \unHideNotes s s4.
  | <ef, bf'>8 q q <f df'> q q )
  | s8 \hideNotes bf -\shapeSlurI ^( \unHideNotes s s4.
  | <ef, af>8 q q <df af'> q q )
  | s8 \stemUp \hideNotes df -\shapeSlurJ ^( \unHideNotes \stemDown s s4.
  | <bf g'>8 q q q q q )
  
  \barNumberCheck 73
  | s8 \stemUp \hideNotes g' -\shapeSlurK ^( \unHideNotes \stemDown s s4.
  | <df gf>8 q q <c gf'> q q )
  | s8 \hideNotes df' -\shapeSlurL ^( \unHideNotes s s4.
  | <ef, bf'>8 q q <f df'> q q )
  | s8 \hideNotes bf -\shapeSlurM ^( \unHideNotes s s4.
  | <ef, af>8 q q <df af'> q q )
  | s2.
  | c8 c c c c c
  
  \barNumberCheck 81
  | df8 df df df df df
  | c8 c c df df df
  | c8 c c c c c
  | r8 c c c bf f'
  | c8 c c c bf f'
  | c4 bf8 c4 bf8
  | c4 bf8 c4 bf8
  | s2.
  | s2.
  | s2. |
}

rightHand = <<
  \new Voice { \rightHandUpper }
  \new Voice { \rightHandLower }
>>

leftHand = \relative {
  \global
  \clef bass
  
  \oneVoice
  | <ef af ef'>8 q q q q q
  | q8 q q q q q
  | ef,8 <ef' bf' ef> q q q q
  | af,8 <af' ef'> q q q q
  | df,8 <af' df f> q q q q 
  | ef8 \clef treble <bf' df g> q \clef bass df, \clef treble <af' df af'> q
  | \clef bass ef8 \clef treble <bf' df g> q q q q
  | \clef bass << { f4 s8 } \\ { f8 <c' f> q } >> bf, <f' bf f'> q
  \mergeDifferentlyDottedOn
  | << { ef4. } \\ { ef8 <bf' f'> <bf ef> } >> af, <ef' af ef'> q
  \mergeDifferentlyDottedOff
  | ef,8 <ef' ef'> q q q q
  
  \barNumberCheck 11
  | ef,8 <ef' bf' ef> q q q q
  | af,8 <ef' af ef'> q q q q
  | df,8 <f' af df f> q q q q
  | ef8 \clef treble <bf' df g> q \clef bass df, \clef treble <af' df af'> q
  | \clef bass ef8 \clef treble <bf' df g> q <bf df ef g> q <bf df g>
  | \clef bass f,8 <f' c' f> q bf, <f' bf f'> q
  | ef8 <f bf f'> q ef, <ef' bf' ef> q
  | af,8 <ef' af ef'> q q q q
  
  \barNumberCheck 19
  | e,8 <e' b' e> q q q <e b'>
  | a,8 <e' a e'> <es a es'> q <fs a fs'> <fss a fss'>
  | gs,8 <gs' ds' fs> q q q q
  | cs,8 \clef treble <fss cs' fss> <gs cs gs'> q <a cs a'> <as c as'>
  | \clef bass b,8 \clef treble <b' fs' a> <b ds fs a> q <b cs fs a> <b ds fs a>
  | \clef bass e,8 \clef treble <b' e b'> <as e' as> 
    \clef bass ds, \clef treble <as' ds as'> q
  | \clef bass d,8 \clef treble <a' d a'> <gs d' gs>
    \clef bass cs,8 \clef treble <gs' cs gs'> q
  | \clef bass c,8 \clef treble <g' c g'> <fs c' fs>
    \clef bass b,8 \clef treble <b' e b'> <b ds a'>
    
  \barNumberCheck 27
  | \clef bass e,,8 <gs' b gs'> q q q q
  | e8 \clef treble <a c a'> q q q q
  | \clef bass e,8 \clef treble <gs' b gs'> q q q q
  | \clef bass e8 \clef treble <a c a'> q q q q
  | \clef bass e,8 \clef treble <gs' b gs'> q q q q
  | <gs b gs'>8 q q q q q
  | <af cf af'>8 q q q q q
  | <af cf af'>8 \clef bass <f, f'> <d d'> <cf cf'> <af af'> <f f'>
  
  \barNumberCheck 35
  \oneVoice
  | \stemDown <ef ef'>8 <ef'' bf' ef>8 q q q q 
  | <af,, af'>8 <ef'' af ef'> q q q q
  | <df,, df'>8 <f'' af df f> q q q q
  \stemNeutral \override Beam.auto-knee-gap = 3
  | <ef,, ef'>8 <g'' bf g'> q <df,, df'> <f'' af df af'> q
  | <ef,, ef'>8 <g'' bf df g> q <g bf df ef g> q <g bf df g>
  | \stemDown <f,, f'>8 <f'' c' f> q <bf,, bf'> <f'' bf f'> q
  | <ef, ef'>8 <f' bf f'> <ef bf' ef> af, <ef' af ef'> q
  | ef,8 <ef' ef'> q q q q
  
  \barNumberCheck 43
  | ds,8 <ds' a' ds> q q q q
  | e,8 <e' gs e'> q q <e gs ds'> <e gs cs>
  | \stemUp <b, b'>8 \clef treble <b'' ds a'> q q <b cs a'> <b ds a'>
  | \clef bass <e,, e'>8 \clef treble <b'' e b'> q q 
    \clef bass <ds,, ds'> <d d'>
  | <cs cs'>8 <es' b' es> q q q q
  | fs,8 <fs' as fs'> q q <fs as es'> <fs as ds>
  | <cs, cs'>8 <gs'' b cs gs'> q q <gs b cs ds> <gs b cs es>
  | fs,8 <fs' cs' fs> q <fs, fs'> <es es'> <e e'>
  
  \barNumberCheck 51
  | <ds ds'>8 \clef treble <b'' fs'> q \clef bass e, \clef treble <b' e b'> q
  | \clef bass d,8 \clef treble <bf' f' bf> q
    \clef bass ef,8 \clef treble <bf' ef bf'> q
  | \clef bass cs,8 \clef treble <a' e' a> q 
    \clef bass d,8 \clef treble <a' d a'> q
  | <a d a'>8 \clef bass <d,, d'> <cs cs'> <c c'> q <cf cf'>
  | <bf bf'>8 \clef treble <bf'' ef bf'> q <bf e bf'> q q
  | \clef bass bf,8 \clef treble <bf' f' bf> q q q q \clef bass
  
  \barNumberCheck 57
  | ef,,8 <g' bf g'> q q q q
  | ef8 \clef treble <af cf af'> q q q q \clef bass
  | ef,8 <g' bf g'> q q q q
  | ef8 \clef treble <af cf af'> q q q q \clef bass
  | ef,8 <g' bf g'> q q q q
  | <g bf g'>8 q q q q q 
  | <g bf g'>8 q q q q q
  | <g bf g'>8 q q q q q
  
  \barNumberCheck 65
  | \fzLeft af,,8 <af' ef'> q <af ef' bf'> <ef' bf'> q
  | <ef af ef'>8 q q q q q
  | \stemDown \fzLeft af,,8 <f'' af df f> q q q q
  | <g bf df g>8 q q <af df af'> q q
  | \fzLeft af,,8 <g'' bf g'> q q q q 
  | <af c gf'>8 q q <f af f'> q q
  | \fzLeft af,,8 <ef'' af ef'> q q q q
  | <ef ef'>8 q q q q q
  
  \barNumberCheck 73
  | \fzLeft af,,8 <ef'' ef'> q q q q
  | <ef af ef'>8 q q q q q
  | \fzLeft af,,8 <f'' af df f> q q q q
  | <g bf df g>8 q q <af df af'> q q
  | \fzLeft af,,8 <g'' bf g'> q <g bf df ef g> q q
  | <af c gf'> q q <f af f'> q q
  | \fzLeft af,,8 <ff'' af ff'> q q q q
  | <ef af ef'> q q q q q
  
  \barNumberCheck 81
  | \fzLeft af,,8 <ff'' af ff'> q q q q
  | <ef af ef'>8 q q <ff af ff'> q q
  | <ef af ef'>8 q q q q q
  | \fzLeft af,,8 <ef'' af ef'> q q <ef af df> q
  | <ef af ef'>8 q q q <ef af df> q
  | <ef af ef'>8 q <ef g ef'> <ef af ef'>8 q <ef g ef'>
  | <ef af ef'>8 q <ef g ef'> <ef af ef'>8 q <ef g ef'>
  | \fzLeft af,,8 <ef'' af ef'> q q q q
  | <ef af ef'>8 q q q <ef af> <ef af ef'>
  | <ef af ef'>2. \fermata |
  
  \bar "|."
}

pedal = {
  | s2. \sd
  | s4. s8 s s \su
  | s4. \sd s8 s s \su
  | s4. \sd s8 s s \su
  | s4. \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  
  \barNumberCheck 11
  | s4. \sd s8 s s \su
  | s4. \sd s8 s s \su
  | s4. \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  
  \barNumberCheck 19
  | \repeat unfold 5 { s8 \sd s s \su s4. }
  | s8 \sd s s \su s \sd s s \su
  | s8 \sd s s \su s \sd s s \su
  | s8 \sd s s \su s \sd s s \su
  
  \barNumberCheck 27
  | \repeat unfold 4 { s4. \sd s8 s s \su }
  | s2. \sd
  | s8 s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  | s4. \sd s8 s s \su
  
  \barNumberCheck 35
  | s4. \sd s8 s s \su
  | s4. \sd s8 s s \su
  | s4. \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  
  \barNumberCheck 43
  | s4. \sd s8 s s \su
  | s4. \sd s8 s \su s
  | s4. \sd s8 s \su s
  | s4. \sd s8 \su s s
  | s4. \sd s8 s s \su
  | s4. \sd s8 s \su s
  | s4. \sd s8 s \su s
  | s4. \sd s8 s \su s
  
  \barNumberCheck 51
  | s8 \sd s s \su s \sd s s \su
  | s8 \sd s s \su s \sd s s \su
  | s8 \sd s s \su s4. \sd
  | s8 s \su s s4.
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  
  \barNumberCheck 57
  | \repeat unfold 4 { s4. \sd s8 s s \su }
  | s2. \sd
  | s2.
  | s2.
  | s4. s8 s s \su
  
  \barNumberCheck 65
  | s4. -\sustainShift \sd s8 s s \su
  | s4. \sd s4. \su
  | s4. -\sustainShift \sd s8 s s \su
  | s4. \sd s4. \su
  | s4. -\sustainShift \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. -\sustainShift \sd s8 s s \su
  | s4. \sd s8 s s \su
  
  \barNumberCheck 73
  | s4. -\sustainShift \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. -\sustainShift \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. -\sustainShift \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. -\sustainShift \sd s8 s s \su
  | s4. \sd s8 s s \su
  
  \barNumberCheck 81
  | s4. -\sustainShift \sd s8 s s \su
  | s8 \sd s s \su s \sd s s \su
  | s4. \sd s8 s s \su
  | s8 -\sustainShift \sd s s \su s \sd s s \su
  | \repeat unfold 3 { s8 \sd s s \su s \sd s s \su }
  | s2. -\sustainShift \sd
  | s2.
  | s4. s4. \su |
}

dynamics = {
  | s2. \<
  | s8 s s \! s4. \> <> \!
  | s2. * 8
  
  \barNumberCheck 11
  | s2. \f
  | s2. * 7 
  
  \barNumberCheck 19
  \small
  | s2. \cresc
  | s2. * 4
  | s8 s \dim s s4.
  | s4. s8 s s \!
  | s8 \< s s \! s4.
  
  \barNumberCheck 27
  | s4. \< s8 s s \!
  | s2. * 3
  | s8 s \< s s4.
  | s2.
  | s4. s8 s s \!
  | s4. \cresc s8 s s \!
  
  \barNumberCheck 35
  \normalsize
  | s2. \ff
  | s2. * 7
  
  \barNumberCheck 43
  | s2. \p
  | s2.
  | s8 s \< s s4.
  | s8 s \! s s4.
  | s2.
  | s2.
  | s8 s \< s s4.
  | s8 \! s s s \< s s \!
  
  \barNumberCheck 51
  \small
  | s8 s4 \dim s4. 
  | s2.
  | s4. s8 s \< s
  | s2.
  \normalsize
  | s2. \f
  | s2.
  
  \barNumberCheck 57
  | s2. * 4
  | s8 s \< s s4.
  | s2.
  | s2. \>
  | s4. s8 s s \!
  
  \barNumberCheck 65
  | s2. -\markup { \dynamic pp \italic { sotto voce. } }
  | s2. * 7
  
  \barNumberCheck  73
  | s2. * 8
  
  \barNumberCheck 81
  | s2. * 7
  | s8 s \< s s4.
  | s4. s8 \> s s \!
  | s2. |
}

#(set-global-staff-size 18.9)

\paper {
  ragged-last-bottom = ##f % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 40)) % defaults: 12, 8, 1, 60
    
  % #(set-paper-size "letter") % for testing only
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 8\mm % default 6
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XVII"
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
  }
}
