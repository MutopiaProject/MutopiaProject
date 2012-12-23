\version "2.16.1"

P=\rightHandFinger #1 

%% LSR snippet: http://lsr.dsi.unimi.it/LSR/Item?id=857
#(define (text-spanner-start-stop mus)
    (let ((elts (ly:music-property mus 'elements)))
    (make-music 'SequentialMusic 'elements 
       (append  
          (list (make-music 'TextSpanEvent 'span-direction -1))
          (reverse (cdr (reverse elts)))
          (list (make-music 'TextSpanEvent 'span-direction 1))
          (list (last elts))))))
      
stringNumberSpanner =
#(define-music-function (parser location strg music)
   (string? ly:music?)
  #{
     \once \override Voice.TextSpanner #'style = #'solid
     \once \override Voice.TextSpanner #'font-size = #-5
     \once \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
     \once \override TextSpanner #'(bound-details left text) = \markup { \circle \number $strg }
  
     #(text-spanner-start-stop music)
  #})

\header {
  title = "Saltarello"
  composer = "Vincenzo Galilei (1520-1591)"
  instrument = "Guitar"
  enteredby = "Emre Akbas"
  piece = \markup { \circle 6 = D } % drop D tuning

  % mutopia headers
  mutopiatitle = "Saltarello"
  mutopiacomposer = "GalileiV"
  mutopiainstrument = "Guitar"

  style = "Renaissance"
  copyright = "Public Domain"
  maintainer = "Federico Bruni"
  moreinfo = "Originally typesetted by Emre Akbas (emreakbas@yahoo.com)"
  
  lastupdated = "2001/Aug/26"
  footer = "Mutopia-2001/08/26-110"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
  \time 3/4
  \key d \major
  % Removed manual beaming in bars 5, 13 and 29 because of issue 2907:
  % http://code.google.com/p/lilypond/issues/detail?id=2907
  % Nevertheless, using the following settings is probably better anyway
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(2 2 2)
}


first =  \relative c' {
  \global
  \repeat volta 2 {
    % 1
    d8 ( e\2 ) fis4 g |
    a2 \glissando b4 |
    g4 e a |
    fis2. |
    % 5
    e8\2( d)  e( fis)  g( e) |
    fis2 g4 ~ |
    g4 e e8 ( fis) |
    d2. |
    \set minimumFret = #7
    \set restrainOpenStrings = ##t
    d8\3 ( e) \stringNumberSpanner "2" { fis4 g |
    % 10
    a2 \glissando \once \set minimumFret = #8 b4 |
    g4 }
    e\3 a\2 |
    \set minimumFret = #3
    \stringNumberSpanner "2" {
      fis2. |
      e8( d)  e( fis) \once \set minimumFret = #5 g( e) |
    }
    fis4
    \set minimumFret = #0
    e8[ fis]  g[ fis] |
    % 15
    e8[ d]  cis[ d]  e[ fis] |
    d2. |
    fis4 e d |
    fis2. |
    \set minimumFret = #7
    fis4\2 \stringNumberSpanner "3" { e d } |
    % 20 
    a'2.\2 |
    fis4 e d |
    a'2 g4 ~ |
    g4 e4. fis8 |
    d2. |
    % 25
    \set minimumFret = #7
    \stringNumberSpanner "2" { g8 ( fis) }
    \stringNumberSpanner "3" { e4 d } |
    fis2.\2 |
    \stringNumberSpanner "2" { g8( fis) }
    \stringNumberSpanner "3" { e4 d } |
    a'2.\2 |
    \set minimumFret = #3
    \stringNumberSpanner "2" {
      e8( d)  e( fis) \once \set minimumFret = #5 g( e) | 
      fis4
    }
    \set minimumFret = #0
    g8[ fis]  e[ d] |
    cis[ b]  cis[ d]  e[ fis] |
    d2. |
    R2. |
    \harmonicByFret #7 <g,\3 b,,\2 e,\1>2. |
    % Need to re-enable open strings in this chord -- see http://code.google.com/p/lilypond/issues/detail?id=2348#c30
    \set restrainOpenStrings = ##f
    <d,,, a' d d'\3 fis\2 d'\1>2.\arpeggio |
  }
}


second =  \relative c {
  \global
  \repeat volta 2 {
    % 1
    d,4\f_\P  a'_\P d_\P |
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    % 5
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    d,4\p a' d |
    %10
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    d,4 a'\f d |
    % 15
    d,4 a' d |
    d,4 a' d |
    d,4\f a' d |
    d,4 a' d |
    d,4\p a' d |
    % 20
    d,4 a' d |
    d,4\f a' d |
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    % 25
    d,4\p a' d |
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    d,4 a' d |
    % 30
    d,4 a'\f d |
    d,4 a' d |
    d,4 a' d |
    \harmonicByFret #12 { d,,4 a d, } |
    s2.*2 |
  }
}

\score {
%  \new StaffGroup <<
    \new Staff = "staff" \with {
      midiInstrument = "acoustic guitar (nylon)"
      % Avoid collision between stems and string numbers in bar 1 and 9
      \override StringNumber #'add-stem-support = ##t
      \override Fingering #'add-stem-support = ##t
    }
    <<
      \context Voice = "staff first voice" { \clef "G_8" \voiceOne \slurDown \tieDown \first }
      \context Voice = "staff second voice" { \clef "G_8" \voiceTwo \second }
    >>

%{    
    \new TabStaff = "tab" \with {
      stringTunings = #guitar-drop-d-tuning
    }
    <<
      \context TabVoice = "tab first voice" { \clef "moderntab" \voiceOne \first }
      \context TabVoice = "tab second voice" { \clef "moderntab" \voiceTwo \second }
    >>
  >>
%}
  \layout {
    system-count = #5
  }
  \midi {
    \tempo 4 = 96
  }
}