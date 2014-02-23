\version "2.18.0"

% Right hand fingering shortcuts
P=\rightHandFinger #1
I=\rightHandFinger #2
M=\rightHandFinger #3
A=\rightHandFinger #4

% Adapted from here: http://lists.gnu.org/archive/html/lilypond-user/2012-11/msg00570.html
% I use the Staff context instead of TabStaff, otherwise it doesn't work when TabStaff is commented.
barre =
#(define-music-function (parser location strg music)(number? ly:music?)
  #{
    \set Staff.minimumFret = $strg
    \set Staff.restrainOpenStrings = ##t
     \once\override TextSpanner.bound-details.left.text = #(format #f "B ~@r" strg)
     \once\override TextSpanner.font-shape = #'upright
     \once\override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \once\override TextSpanner.style = #'line
     \once\override TextSpanner.bound-details.right.text = \markup \draw-line #'(0 . -1)
     \once\override TextSpanner.to-barline = ##t
     \once\override TextSpanner.bound-details.right.padding = #1.5
    <>\startTextSpan
    $music
    <>\stopTextSpan
    \unset Staff.minimumFret
    \unset Staff.restrainOpenStrings
  #})

\header 	{
  title = "Sicilienne (Op 78)"
  composer = "Gabriel Fauré"
  piece = \markup { \circle 6 = D } % drop D tuning
  license  = "Public Domain"
  mutopiatitle = "Sicilienne"
  mutopiacomposer = "FaureG"
  mutopiaopus = "O 78"
  mutopiainstrument = "Guitar"
  date = "19th Century"
  source = "Transcribed by Ludovic Alexandre Morin"
  style = "Romantic"
  moreInfo = "Originally typeset by Olivier Flatrs"
  maintainer = "Federico Bruni"
  lastupdated = "2005/Nov/20"

 footer = "Mutopia-2014/02/23-636"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


global = {
  \set Score.alternativeNumberingStyle = #'numbers
  \time 6/8
  \key bes \major
}

first =  \relative c {
  \global

  \partial 8 <d\5-3-\I >8_>
  \repeat volta 2 {
    <g-\M >16-> <d\5-3-\I > <g\4-4-\A > d\5 \barre3 { <bes'\3-1-\M >-> <g\4-\I > <d'-\M >-> <f,-\P > <bes-\I > <d-\M > <g-\A >8-> } |
    <bes-1-\M >16-> <d,\3-3-\I > <g\2-4-\A > a-> g8\2-> \barre3 { a16-4 c,\3 d c\3 d8-> } |
    \barre1 { <d-\M >8.-> <c-1-\M >16-> e8-> d8.-> c16-> e8-> } |
    <d-2-\M >16-> <fis,-3-\P > <a-1-\I > fis a fis <d'-\A >8 <a-\M > <d,\4\open-\I >-> |
    g16-> <d\5-3-\I > <g\4-\A > d\5 \barre 3 { <bes'\3-1-\M >-> g\4 d'-> f, bes d f8\2-> } |
    \barre 1 { <aes-4-\A >16-> <aes,-\I > <c-\M > <g'-3-\A >-> f8-> } <g-2-\A >16-> g, b g f'8\2-> |
    <e\open-\A >16-> <g,\4-4-\P > <bes-2-\I > g <ees'-3-\A >8-> <d-2-\A >16-> <fis,-4> <a-1> <fis> <bes-1>8->^\coda |
  }
  \alternative {
    { <g\3-\M >8-> <g\4-4-\I >16 <d\5-\P > g\4 d\5 <g-\M >4-> <d\5-\I >8-> | }
    { g8-> g16\4 d\5 g\4 d\5 g4-> r8 | }
  }

  \repeat volta 2 {
    \barre 5 { <b'-4-\A >16-> <g,-\P > <d'-3-\I > <g-4-\M >-> <a-1-\A >8-> <bes-3-\M >16-> <g,-\P > <c-\I > <c'-4-\M >-> <cis-4-\A >8-> } |
    \barre 8 { <d-3-\A >16-> <ees,-\I > <a-3-\M >  <ees-\I >-> <f-\M >8-> } \barre 1 { <g-4-\A >16-> <f,-3-\P > <aes-\P > <f-3-\P > <d'-4-\M >8-> } |
    <bes-4-\M >16-> <bes,-2-\P > <d-\P > <g-\M >-> <a-2-\A >8-> \barre 1 { <bes-4-\M >16-> <ees,-\P > <bes'-\I > <c-\M >-> <cis-2-\A >8-> } |
    <d-2-\M >16-> <fis,-3-\P > <a-1-\I > <e'\open-\M >-> <fis-1-\A >8-> \barre 3 <g-\A d-\M bes-\I >4-> r8 |
  }
  \break
  \repeat volta 2 {
    <g\2-4-\A >16-> <a,-1\4-\I > <ees'-3\3-\M > a,\4 ees'8\3 \barre 3 { <d-1-\A >16 <g,-4> <bes-1> g bes8 } |
    \barre 6 { <bes'-1-\A >16-> <bes,-2-\P > <des-1-\I > <a'-4-\M >-> <g-3-\I >8-> } \barre 5 { <a-1-\A >16-> <a,-2-\P > <c-1-\I > <g'-4-\M >-> <fis-3-\I >8-> } |
    <g\2-4-\A >16-> <a,\4-1-\I > <ees'\3-3-\M > a,\4 ees'8\3 \barre 3 { <d-1-\A >16-> <g,-4> <bes-1> g bes8 } |
  }
  \alternative {
    { <bes-4-\M >16-> <ees,-1-\I > <a-2-\M > <ees-\I > <bes'-4-\M >8-> \barre 2 { <a-1-\M >8-> <fis-3-\P >16 <a-1-\P > <d-2-\M > <fis-1-\A > } | }
    { <bes,-4-\M >16-> <ees,-1-\I > <a-2-\M > <ees-\I > <bes'-4-\M >8-> <a-2 d,>4.->^\fermata | }
  }
  \bar "||"	\break

  %% Coda
  \mark  \markup { \musicglyph #"scripts.coda" }
  \barre 3 { <g-4-\I >16-> <d-3-\P > <g-\I > <bes-\M > <d-\I > <g-\M > } \harmonicByFret #5 g,4.\3\fermata |
  \bar "|."
  \stopStaff  s1
}

second = \relative c {
  \global

  \set stringNumberOrientations = #'(down)
  \partial 8 s8 |
  \repeat volta 2 {
    <g-\P >4. f |
    e'4.\5 f\4 |
    <bes,\5-\P >16 <f'-2-\P > <bes-3-\I >8~ bes bes,16  f' bes8~ bes |
    <d,,-\P >4.~ d |
    g4. f |
    <ees-\P >4. <d-\P > |
    c'4. d, |
  }
  \alternative {
    { <g-\P >4. s | }
    { <g-\P >4. s | }
  }

  \repeat volta 2 {
    <e'\5_2-\P >4. <ees\5-2-\P > |
    <f-\P >4. <bes,-\P > |
    <ees,-1-\P >4. <c'-3-\P > |
    <d,-\P >4. <g_3-\P >4 r8 |
  }

  \repeat volta 2 {
    <f'\5_2-\P >4.  <g,_3-\P > |
    <ees'-\P >4. <d-\P > |
    <f\5_2-\P >4. <g,_3 -\P > |
  }
  \alternative {
    { <c_3-\P >4. <d_4-\P > | }
    { <c_3-\P >4. <a d,>^"D.C. al Coda" | }
  }

  <g_2-\P >4. <g -\P > |
}

music = {
%  \new StaffGroup <<
    \new Staff = "guitar" \with {
      midiInstrument = "acoustic guitar (nylon)"
      fingeringOrientations = #'(left)
      \override StringNumber.add-stem-support = ##t
      \override Fingering.add-stem-support = ##t
      \override Fingering.whiteout = ##t
      \override StringNumber.stencil = ##f
      \override StrokeFinger.font-size = #-2
      \override StrokeFinger.whiteout = ##t
    }
    <<
      \context Voice = "first voice" { \clef "G_8" \voiceOne  \first }
      \context Voice = "second voice" { \clef "G_8" \voiceTwo  \second }
    >>

%      \new TabStaff = "tab" \with {
%        stringTunings = #guitar-drop-d-tuning
%      }
%        <<
%          \context TabVoice = "tab first voice" { \voiceOne \first }
%          \context TabVoice = "tab second voice" {\voiceTwo \second }
%        >>
%     >>
}

\score {
  \music
  \layout{}
}

\score {
  \unfoldRepeats
  \music
  \midi {
    \tempo 4 = 100
  }
}
