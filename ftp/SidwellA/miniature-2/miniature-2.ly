\version "2.10.0"

\include "english.ly"

% Miniature No.2 by Andrew Sidwell
%
% A short piece (as the name suggests) to played with rubato.  If you make any
% changes, I'd love to hear them!  My current email address can always be found
% at my website (http://entai.co.uk).

#(ly:set-option 'point-and-click #f)

\header
{
  title = "Miniature No.2"
  composer = "Andrew Sidwell"
  mutopiatitle = "Miniature No.2"
  mutopiacomposer = "SidwellA"
  mutopiainstrument = "Piano"
  date = "2007/Jan/18"
  source = "Original work"
  style = "Romantic"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  maintainer = "Andrew Sidwell"
  maintainerWeb = "http://entai.co.uk/"
  lastupdated = "2007/Jan/18"
 footer = "Mutopia-2007/01/21-910"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

barFermata = { \mark \markup { \smaller \musicglyph #"scripts.ufermata" } }

\score
{
  \new PianoStaff
  <<
  \new Staff = "up" \relative c''
  {
    \time 2/4
    \clef treble
    \key d \major

    \tempo 4=60
    \override Score.MetronomeMark #'padding = #5
    \override DynamicLineSpanner #'staff-padding = #3
    \override TextScript #'staff-padding = #3

    <cs g' b>2\arpeggio\mp\< | <d fs a>\arpeggio\> |
    <b' d>8\! \( <a cs>16 <g b> <fs a>8 <g b> \) | <g a cs>2\arpeggio_\markup {\italic "cresc."} |
    <d fs a>\arpeggio | bf8 \( d16 ef d8 bf \) |
    <a cs>8 <b d>16 \( fs' <cs e> d cs8 \) |
    r8_\markup {\italic "dim."} d4.\fermata | r8 d4.\fermata

    \bar "||"

    r2 | <d fs a>\arpeggio |
    <f a b,>2\arpeggio  | <bf, d bf'>2\arpeggio |
    a'8 g16 fs e8 fs | g fs e fs ~ 
    fs2_\markup {\italic "cresc."} | e8 d16 cs b8 cs |
    d2 | bf'8 a16 g fs8 g |
    a^"rit." as b c | cs d ds \once \override Script #'padding = #0.5 e\fermata |

    \bar "||"
    \key e \major

    \once \override TextScript #'staff-padding = #1.2
    e,,8\pp^"a tempo" \( fs gs16 a b8 \) | a \( cs e16 gs a8 \) |
    gs8 \( fs e16 ds cs8 \) | \barFermata
    gs16\p \( e a fs b gs a8 \) | cs16 \< \( a d b e\> cs d8\! \) |
    gs8 \< \( a16 b cs->\> a b8\! \) |
    b, \( cs16 ds fs gs e8 |
    cs e16 gs fs ds b8 \) |

    \key d \major
    <cs e>2 | <fs a>2 |
    <cs, e>2 | r2 |

    fs,8 a d fs | g fs16 e d8 e |
    fs8 g gs a | b g16 e d8 g |
    fs2

    \bar "|."
  }

  \new Staff = "down" \relative c'
  {
    \time 2/4
    \clef treble
    \key d \major

    a8 \( cs e a | b a16 g fs8 g \) |
    d fs a d | cs, \( g'16 a cs8 cs, \) |
    b \( fs'16 g fs8 d \) | bf \( d ef16 d bf8 \) |
    a8 cs e a | <a b d,>2 | <bf, g' a>2

    a8 cs e g | a g16 fs e8 fs |
    g,8 b d fs | g fs16 e d8 e |
    <fs a>2 | <g bf>2 |
    d8 fs a d | g,, b d g |
    a g16 fs e8 fs | <g bf d>2\arpeggio |
    <a cs e>2\arpeggio | <fs' a>8 <fss as> <gs b> \once \override Script #'padding = #0.5 <a c>\fermata |

    \bar "||"
    \key e \major

    <e,, gs>2 | <a cs>2 |
    <e' gs>8 <fs a> <fss as> <gs b> |
    <e, gs>2 | <a cs>2 |
    <e' gs>8 <fs a> <fss as> <gs b> |
    \clef bass
    <e, gs>8 <fs a> <fss as> <gs b> |
    <a cs> <as css> <b ds>4 |

    \bar "||"
    \key d \major
    a,8 \( cs e a | b a16 g fs8 g \) |
    a \( g16 fs e8 fs \) | g-. \( fs16 e d8 e \) |
		
    d,8 fs a d | e d16 cs b8 cs |
    d' a fs d | e d b a | d,2

    \bar "|."
  }
  >>

  \layout {}
  \midi {}
}
