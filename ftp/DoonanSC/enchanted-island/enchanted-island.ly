
% Enchanted Island, work for piano by Stephen C. Doonan, xscd@xscd.com

\version "2.6.3"

\include "english.ly"

\paper { }

\header {

   title = "Enchanted Island"
   composer = \markup \center-align { "Stephen C. Doonan" \small "(1952- )" }
   piece = \markup { "Moderato (" \tiny \note #"4." #0.75 \normalsize "= 95-105)" }

% Mutopiaproject.org headers 

   mutopiatitle = "Enchanted Island"
   mutopiacomposer = "DoonanSC"
   mutopiainstrument = "Piano"
   date = "1976"
   source = "Composer"
   style = "Jazz"
   copyright = "Creative Commons Attribution-ShareAlike 2.5"
   maintainer = "Stephen C. Doonan"
   maintainerEmail = "xscd@xscd.com"
   maintainerWeb = "http://www.xscd.com/pub/music/"
   lastupdated = "2005/Aug/05"
   
   footer = "Mutopia-2005/08/06-536"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}


rightHandA = \relative c'' {

   \clef treble \key c \major \time 6/8

% numbers (like the "1" below), refer to measure numbers
% 1 - intro, 8 measures

   r2.
   r2.
   r2.
   r2.

% 5

   r2.
   r2.
   r2.
   r2.

% 9 - begin body of piece

   <g c e g>2.~
   <g c e g>~
   <g c e g>
   <f bf d f>4 <g g'> <f bf d f>

% 13

   <g c e>2. 
   <f bf c>2.~
   <f bf c>~
   <f bf c>

% 17

   <g c e g>2.~
   <g c e g>~
   <g c e g>
   <f bf d f>4 <g g'> <f bf d f>

% 21

   <g c e>2.
   <f bf c>2.~
   <f bf c>~
   <f bf c>

% 25 - from C up to F
 
   <c' f a c>2.~
   <c f a c>~
   <c f a c>
   <bf ef g bf>4 <c c'> <bf ef g bf>

% 29

   <c f a>2.
   <bf ef f>2.~
   <bf ef f>~
   <bf ef f>

% 33 - back to C

   <g c e g>2.~
   <g c e g>~
   <g c e g>
   <f bf d f>4 <g g'> <f bf d f>

% 37

   <g c e>2.
   <f bf c>2.~
   <f bf c>~
   <f bf c>

% 41 - begin transition

   <c=' f a c>2.~
   <c f a c>2.
   <bf ef g bf>4.~ <bf ef g bf>4 <df f af c>8~
   <df f af c>4.~ <df f af c>4 bf'8

% 45

   <c, f a c>4 <c f a c>8~ <c f a c>4.~
   <c f a c>2.~
   <c f a c>2.~
   <c f a c>2.

% 49

   <df f af c>2.~
   <df f af c>2.
   <bf ef g bf>4.~ <bf ef g bf>4 <df f af>8~
   <df f af>4.~ <df f af>4 bf'8

% 53

   <c, f a c>4 <c f a c>8~ <c f a c>4.~
   <c f a c>2.~
   <c f a c>2.~
   <c f a c>2.

% 57 transition, to Dminor

   <f a c e>2.
   <f a c>4 <f a d> <f a c e>
   <f a c e> <f a d> <f a c>
   <f a c e>4.~ <f a c e>8 <f a c>4

% 61

   <d g b d>4.~ <d g b d>4 <f a b>8~
   <f a b>4.~ <f a b>4 <d g b>8~
   <d g b>4.~ <d g b>4 <f a b>8~
   <f a b>2.

% 65

   <f a c e>2.
   <f a c>4 <f a d> <f a c e>
   <f a c e> <f a d> <f a c>
   <f a c e>4.~ <f a c e>8 <f a c>4

% 69 - high walk-down, key from C to E-flat
% 12 measures total in walk-down

   <f' a c e>4. <f a c e>4 <ef g bf d>8~
   <ef g bf d>4. <ef g bf d>4 <df f af c>8~
   <df f af c>4. <df f af c>4 <c ef g bf>8~
   <c ef g bf>4. <c ef g bf>4 <bf d f a>8~
   <bf d f a>4. <bf d f a>4 <af c ef g>8~
   <af c ef g>4. <af c ef g>4 <gf bf df f>8~
   <gf bf df f>4. <gf bf df f>4 <f af c ef>8~
   <f af c ef>4. <f af c ef>4 <ef g bf d>8~
   <ef g bf d>4. <ef g bf d>4 <df f af c>8~
   <df f af c>4. <df f af c>4 <cf ef gf bf>8~
   <cf ef gf bf>4. <cf ef gf bf>4 <bf df f af>8~
   <bf df f af>4. <bf df f af>4 r8

% 81 - now in key of E flat

   \key ef \major
   r4. <ef g>4 <df f af>8~
   <df f af>2.
   r4. <ef g>4 <df f af>8~
   <df f af>2.

% 85

   r4. <ef g>4 <df f af>8~
   <df f af>2.
   r4. <ef g>4 <df f af>8~
   <df f af>4.~ <df f af>4 ef'8

}


% part B of right hand (of parts A, B, C) follows. Part B has two versions,
% one for notation and one for MIDI output, because LilyPond
% does not output appropriate MIDI data for tremolandos (chord tremolos)


rightHandBnotation = \relative c'' {

% 89 - ending section

   \repeat "tremolo" 12 { ef'32^\markup { \italic tremolando } ef, }
   \repeat "tremolo" 12 { ef'32 ef, }
   \repeat "tremolo" 12 { ef'32 ef, }
   ef'4 <df df,>4 <c c,>4

% 93

   <bf, ef g bf>2.~
   <bf ef g bf>4. bf8 f'8 g
   ef8~ <ef bf>~ <bf ef bf'>~ <bf ef bf'>4.~
   <bf ef bf'>4.~ <bf ef bf'>4 ef8

% 97

   \repeat "tremolo" 12 { ef'32 ef, }
   \repeat "tremolo" 12 { ef'32 ef, }
   \repeat "tremolo" 12 { ef'32 ef, }
   ef'4 <df df,>4 <c c,>4

% 101

   <bf, ef g bf>2.~
   <bf ef g bf>4. bf8 f'8 g
   ef8~ <ef bf>~ <bf ef bf'>~ <bf ef bf'>4.~
   <bf ef bf'>4.~ <bf ef bf'>4 bf'8

% 105

   #(set-octavation 1) \repeat "tremolo" 12 { bf'32 bf, }
   \repeat "tremolo" 12 { bf'32 bf, }
   \repeat "tremolo" 12 { bf'32 bf, }
   <af' af,>4. <g g,>4. #(set-octavation 0)

}

rightHandBMIDI = \relative c'' {

% 89 - ending section

   \times 12/14 {
      ef'16 ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, |
      ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef,
      ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef,
   }
   ef'4 <df df,>4 <c c,>4

% 93

   <bf, ef g bf>2.~
   <bf ef g bf>4. bf8 f'8 g~
   <ef g>8~ <bf ef g>~ <bf ef g bf>~ <bf ef g bf>4.~
   <bf ef g bf>4.~ <bf ef g bf>4 ef8

% 97

   \times 12/14 {
      ef'16 ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, |
      ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef,
      ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef, ef' ef,
   }
   ef'4 <df df,>4 <c c,>4

% 101

   <bf, ef g bf>2.~
   <bf ef g bf>4. bf8 f'8 g~
   <ef g>8~ <bf ef g>~ <bf ef g bf>~ <bf ef g bf>4.~
   <bf ef g bf>4.~ <bf ef g bf>4 bf'8

% 105

   \times 12/14 {
      bf'16 bf, bf' bf, bf' bf, bf' bf, bf' bf, bf' bf, bf' bf, |
      bf' bf, bf' bf, bf' bf, bf' bf, bf' bf, bf' bf, bf' bf,
      bf' bf, bf' bf, bf' bf, bf' bf, bf' bf, bf' bf, bf' bf,
   }
   <af' af,>4. <g g,>4.

}


rightHandC = \relative c'' {

% 109

   <ef ef'>2.~
   <ef ef'>2.~
   <ef ef'>2.~
   <ef ef'>4. <ef ef'>4 <ef ef'>8~

% 113

   <ef ef'>2.~
   <ef ef'>2.~
   <ef ef'>2.~
   <ef ef'>4. <ef ef'>4 <ef g bf d>8~

% 117

   <ef g bf d>4. <ef g bf d>4 <df f af c>8~
   <df f af c>4. <df f af c>4 <cf ef gf bf>8~
   <cf ef gf bf>4. <cf ef gf bf>4 <bf df f af>8~
   <bf df f af>4. <bf df f af>4 <af c ef g>8~

% 121

   <af c ef g>4. <af c ef g>4 <gf bf df f>8~
   <gf bf df f>4. <gf bf df f>4 <ff af cf ef>8~
   <ff af cf ef>4. <ff af cf ef>4 <ef gf bf df>8~
   <ef gf bf df>4. <ef gf bf df>4.

% 125

   <ef g af c>2.~
   <ef g af c>4.~ <ef g af c>8\noBeam
   \set tieWaitForNote = ##t \times 2/3 { \once \override TextScript #'padding = #1.7 af16[~_\markup { \italic "l.h." } ef'~ af]~ } \times 2/3 { \tieUp bf[~ f' ef]~ } |
   <af,, ef' af bf ef bf'>2._\fermata \bar "|."

}


leftHand = \relative c {

   \clef bass \key c \major \time 6/8

% 1 - intro, 8 measures
     
   <c c,>4 << { s8 <c' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 5

   c,4 << { s8 <c'' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 9, begin body of piece

   c,4 << { s8 <c'' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 13

   c,4 << { s8 <c'' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 17

   c,4 << { s8 <c'' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 21

   c,4 << { s8 <c'' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 25 - from C up to F

   <f f,>4 << { s8 <f'' a>4 <ef g>8~ } \\
         { c8~ c4.~ } >>
   << { <ef g>4 } \\
      { c4 } >> \oneVoice bf,8 b4 c8~
   c4 bf8 b4 c8~
   c4 bf8 b4 c8

% 29

   f,4 << { s8 <f'' a>4 <ef g>8~ } \\
         { c8~ c4.~ } >>
   << { <ef g>4 } \\
      { c4 } >> \oneVoice bf,8 b4 c8~
   c4 bf8 b4 c8~
   c4 bf8 b4 c8

% 33 - back to C

   c,4 << { s8 <c'' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 37

   c,4 << { s8 <c'' e>4 <bf d>8~ } \\
               { g8~ g4.~ } >>
   << { <bf d>4 } \\
      { g4 } >> \oneVoice f,8 fs4 g8~
   g4 f8 fs4 g8~
   g4 f8 fs4 g8

% 41 - begin transition, F

   f4 << { s8 <f' a>4 <ef g>8~ } \\
         { c8~ c4.~ } >>
   << { <ef g>4 } \\
      { c4 } >> \oneVoice bf8 b4 c8
   f,4 << { s8 <ef' g>4 <df f>8~ } \\
          { bf8~ bf4.~ } >>
   << { <df f>4 } \\
      { bf4 } >> \oneVoice bf8 c4 df8

% 45

   f,4 << { s8 <f' a>4 <ef g>8~ } \\
          { c8~ c4.~ } >>
   << { <ef g>4 } \\
      { c4 } >> \oneVoice bf8 b4 c8
   f,4 << { s8 <f' a>4 <ef g>8~ } \\
          { c8~ c4.~ } >>
   << { <ef g>4 } \\
      { c4 } >> \oneVoice bf8 b4 c8

% 49

   <bf bf,>4 << { s8 <f' af>4 <ef g>8~ } \\
          { bf8~ bf4.~ } >>
   << { <ef g>4 } \\
      { bf4 } >> \oneVoice bf8 c4 df8
   <bf bf,>4 << { s8 <ef g>4 <df f>8~ } \\
          { bf8~ bf4.~ } >>
   << { <df f>4 } \\
      { bf4 } >> \oneVoice bf8 c4 df8 

%53

   f,4 << { s8 <f' a>4 <ef g>8~ } \\
          { c8~ c4.~ } >> 
   << { <ef g>4 } \\
      { c4 } >> \oneVoice bf8 b4 c8
   f,4 << { s8 <f' a>4 <ef g>8~ } \\
          { c8~ c4.~ } >> 
   << { <ef g>4 } \\
      { c4 } >> \oneVoice bf8 b4 c8

% 57 - transition, d minor

   <d, d'>4 <f' a>8 <g b>4 <a c>8~
   <a c>4 a,8 c4 d8
   d,4 <f' a>8 <g b>4 <a c>8~
   <a c>4 a,8 c4 d8

% 61

   <g, g,>4 << { s8 <g' b>4 <f a>8~ } \\
          { d8~ d4.~ } >>
   << { <f a>4 } \\
      { d4 } >> \oneVoice d,8 f4 g8
   g,4 << { s8 <g'' b>4 <f a>8~ } \\
          { d8~ d4.~ } >>
   << { <f a>4 } \\
      { d4 } >> \oneVoice d,8 f4 g8

% 65

   <d d'>4 <f' a>8 <g b>4 <a c>8~
   <a c>4 a,8 c4 d8
   d,4 <f' a>8 <g b>4 <a c>8~
   <a c>4 a,8 c4 d8

% 69 - high walk down, key modulates from C to E flat
% left hand in walk down has two voices throughout

   << {
      s4. <f'=' a>4 <ef g>8~
      <ef g>4 r8 <ef g>4 <df f>8~
      <df f>4 r8 <df f>4 <ef g>8~
      <ef g>4 r8 <ef g>4 <f a>8~
      <f a>4 r8 <f a>4 <ef g>8~
      <ef g>4 r8 <ef g>4 <df f>8~
      <df f>4 r8 <df f>4 <ef g>8~
      <ef g>4 r8 <ef g>4 <bf d>8~
      <bf d>4 r8 <bf d>4 <af c>8~
      <af c>4 r8 <af c>4 <gf bf>8~
      <gf bf>4 r8 <gf bf>4 <af c>8~
      <af c>4 r8 <af c>4 r8
      }
      \\
      {
      <f, f,>4 c''8~ c4.~
      c4 bf8~ bf4.~
      bf4 bf8~ bf4.~
      bf4 bf8~ bf4.~
      bf4 bf8~ bf4.~
      bf4 bf8~ bf4.~
      bf4 bf8~ bf4.~
      bf4 bf8~ bf4 r8
      r4 ef,8~ ef4.~
      ef4 ef8~ ef4.~
      ef4 ef8~ ef4.~
      ef4 ef8~ ef4 bf8
      }
   >>

% 81 - now in key of E flat, intro to end section

   \key ef \major
   <ef ef,>4 ef8~ <ef bf' d>4~ <ef af c>8~ 
   <ef af c>4.~ <ef af c>4 bf8
   ef,4 ef'8~ <ef bf' d>4~ <ef af c>8~
   <ef af c>4 bf8~ bf4 bf8

% 85

   <ef ef,>4 ef8~ <ef bf' d>4~ <ef af c>8~
   <ef af c>4.~ <ef af c>4 bf8
   ef,4 ef'8~ <ef bf' d>4~ <ef af c>8~
   <ef af c>4.~ <ef af c>4 bf8

% 89 - ending section

   <ef, ef'>4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~
   <c df f af>4 bf,8~ bf4 bf8
   ef,4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~
   <c df f af>4 bf,8~ bf4 bf8

% 93

   <ef, ef,>4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~
   <c df f af>4 <bf, bf,>8~ <bf bf,>4 bf,8
   <ef, ef'>4 \tieDown bf'''8~ \tieNeutral <bf d ef g>4 <c df f af>8~
   <c df f af>4 bf,8~ bf4 bf8

% 97 - to A flat

   <af af,>4 \tieDown ef'8~ \tieNeutral <ef g af c>4 <f gf bf df>8~
   <f gf bf df>4 ef,8~ ef4 ef8
   <af af,>4 \tieDown ef'8~ \tieNeutral <ef g af c>4 <f gf bf df>8~
   <f gf bf df>4 ef,8~ ef4 ef8~

% 101 - back to E flat

   <ef ef,>4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~
   <c df f af>4 bf,8~ bf4 bf,8
   <ef ef,>4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~ 
   <c df f af>4 bf,8~ bf4 bf8~

% 105 - up to B flat

   <bf bf,>4 \tieDown f'8~ \tieNeutral <f a bf d>4 <ef g af c>8~
   <ef g af c>4 f,8~ f4 f8
   <bf bf,>4 \tieDown f'8~ \tieNeutral <f a bf d>4 <ef g af c>8~
   <ef g af c>4 bf8~ bf8 df8 ef8

% 109 - back in E flat

   ef,4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~
   <c df f af>4 bf,8~ bf4 bf8
   ef,4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~ 
   <c df f af>4 bf,8~ bf4 bf,8

% 113

   <ef ef,>4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~
   <c df f af>4 bf,8~ bf4 bf8
   ef,4 \tieDown bf''8~ \tieNeutral <bf d ef g>4 <c df f af>8~ 
   <c df f af>4 bf,8~ bf4 bf8

% 117
   << {
         s4. <ef' g>4 <df f>8~
         <df f>4 r8 <df f>4 <cf ef>8~
         <cf ef>4 r8 <cf ef>4 <df f>8~
         <df f>4 r8 <df f>4 <ef g>8~
         <ef g>4 r8 <ef g>4 <df f>8~
         <df f>4 r8 <df f>4 <cf ef>8~
         <cf ef>4 r8 <cf ef>4 <df f>8~
         <df f>4 r8 <df f>4 s8
      }
      \\
      {
         ef,,4 bf''8~ bf4.~
         bf4 af8~ af4.~
         af4 af8~ af4.~
         af4 af8~ af4.~
         af4 af8~ af4.~
         af4 af8~ af4.~
         af4 af8~ af4.~
         af4 af8~ af4 ef,8
      }
   >>

% 125 - ending

   <af af,>2.~
   <af af,>4.~ <af af,>8 r4
   r2.
   
}

     
\score {
   \layout { }
   \context PianoStaff <<
       \context Staff = upper { \rightHandA \rightHandBnotation \rightHandC }
       \context Staff = lower \leftHand
   >>
}


\score {
   \midi { \tempo 4 . = 100 }
   \context PianoStaff <<
      \context Staff = upper { \rightHandA \rightHandBMIDI \rightHandC }
      \context Staff = lower \leftHand
   >>
}

