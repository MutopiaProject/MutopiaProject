%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 4
%%--------------------------------------------------------------------

%----- Notes ---------------------------------------------------------
%
% * Significant effort has been spent on slur shaping. So I'm afraid
%   the slurs can look quite different if line break were to change
%   in future.
%
% * Some tenuti look irregular, though a few of them are intentional,
%   in order to achieve a better looking slur.
%
% * Hairpin at bar 58 has been shifted, see the place marked with
%   EDITORIAL NOTE below.
%
% * Some tuplet have had bracket added where the original editions
%   didn't, to make sure slur around those notes are not misinterpreted.

%----- Known problems ------------------------------------------------
%
% * MIDI tweaking not done yet; seems one channel per voice has more
%   problem than I have anticipated (e.g. sound volume of some channel
%   is out of control)
%
% * See bar 62 grace note slur, marked "Lilypond Bug"

%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.0"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
% #(set-global-staff-size 20)

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12         %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #12       %-pads music from copyright block

  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
  title = "Prelude IV"
  composer = "Sergei Rachmaninoff (1873-1943)"
  opus = "Op. 23, No 4"
  date = "1903"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "IMSLP - Muzyka and Gutheil editions"

  maintainer = "Abel Cheung"
  maintainerEmail = "abelcheung at gmail dot com"
  mutopiatitle = "Prelude Op. 23, No. 4"
  mutopiaopus = "Op. 23"
  mutopiacomposer = "RachmaninoffS"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2014/08/15-1993"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%---------- Util macros and shorthands
cb = \clef bass
ct = \clef treble
oD = \once \omit DynamicText
oH = \once \omit Hairpin
showTuplet =
  \temporary \override TupletNumber.stencil = #ly:tuplet-number::print
hideTuplet = \revert TupletNumber.stencil
onceShowTupBracket =
  \once \override TupletBracket.stencil = #ly:tuplet-bracket::print

ottavaUp = { \ottava #1 \set Staff.ottavation = #"8" }

% This piece needs extensive curve tuning. So pick the curve closest to
% note heads and work on that. Supposed to be a bit more fault tolerant
% against different Lilypond versions(?)
basicSlur = \once \override Slur.positions = #'(0 . 0)
slurPos =
#(define-music-function
  (parser location start end)
  (integer? integer?)
  #{ \once \override Slur.positions = #(cons start end) #})

% Beam slope can affect slur candidates too
flatterBeam = \once \override Beam.damping = 2

ppLeft = \tweak X-offset -4 \tweak whiteout ##t \pp
% for moving cresc and dim horizontally
moveDynSpan =
#(define-music-function
  (parser location offset)
  (number?)
  #{ \once \override DynamicTextSpanner.bound-details.left.stencil-offset = #(cons offset 0) #})
% delicate positioning of dynamic text
moveDyn =
#(define-music-function
  (parser location initial real)
  (number? number-pair?)
  (set-car! real (- (car real) initial))
  #{
    \once \override DynamicText.X-offset = #initial
    \once \override DynamicText.extra-offset = #real
  #})

% Default tenuto hides inside slur, pushing slurs outwards and prevent
% staves to be compacted. And padding is too small, so it can stick
% very close to beams.
#(define my-script-alist (list-copy default-script-alist))
#(set! my-script-alist
       (acons "tenutoalt"
         (acons 'avoid-slur 'outside
           (acons 'quantize-position #f
             (acons 'padding 0.4
              (assoc-ref default-script-alist "tenuto"))))
         my-script-alist))

#(assoc-set! (assoc-ref my-script-alist "tenuto") 'padding 0.4)

tenutoAlt = #(make-articulation "tenutoalt")

% better midi contrast, default volume isn't apparent
#(define (myMidiVolume dynamic)
   (cond
     ((string=? dynamic "pp") 0.35)
     ((string=? dynamic "p" ) 0.45)
     ((string=? dynamic "mp") 0.55)
     ((string=? dynamic "mf") 0.65)
     ((string=? dynamic "f" ) 0.75)
     ((string=? dynamic "ff") 0.85)
     (else 0)))


%---------- Right hand parts
RH = \relative c' {
  R2.*2 |
  fis2(^\mf e4 |
  fis2) b,4^( |
  cis2 d8 cis16-- d-- |
  e2)--

  \barNumberCheck 6
  <<
    \relative c' {
      fis4( |
      g2 fis4 |
      g2) d4( |
      e2-- fis8 e16-- fis-- |
      g2-- gis4) |

      \barNumberCheck 11
      a2\arpeggio( gis4) |
      a2\arpeggio(~ \showTuplet
      \once \override TupletNumber.avoid-slur = #'outside
      \tuplet 3/2 { a8 g8.-- fis16)\tenutoAlt } \hideTuplet
      fis2( e4) |
      \slurPos 2 2 fis2( \showTuplet \onceShowTupBracket
      \once \override TupletNumber.avoid-slur = #'around
      \once \override TupletBracket.shorten-pair = #'(-0.8 . -0.2)
      \tuplet 3/2 { e4-- fis8)\tenutoAlt } \hideTuplet |

      \barNumberCheck 15
      \slurPos 1 2 d4.( fis8--\noBeam a-- d\tenutoAlt |
      <cis a d, cis>2-- <b g d b>4) |
      e,2.--~ |
      e2.
    }
    \\
    \relative c' {
      \temporary \omit DynamicText
      s4 |
      b8\mp s s2 |
      b8 s s2 |
      <b g>8 r r4 c8 r |
      <d b>4 r <eis d> |

      \barNumberCheck 11
      <fis cis a>\arpeggio\mf r <eis d> |
      <fis cis a>\arpeggio r \oH <d bes>\> |
      <d fis,>\mp r <cis bes> |
      <d a> b\rest cis\p |
      <b fis>\pp b\rest d |
      \skip 2. |
      <d b g>2.~ |
      q4 <cis g>2
      \revert DynamicText.stencil
    }
  >> |

  \barNumberCheck 19
  <<
    \relative c'' {
      \showTuplet
      \onceShowTupBracket
      \tuplet 3/2 4 { r8 d( cis b a b cis b cis) }
      \hideTuplet
      \tuplet 3/2 4 {
        r d( cis b a fis g fis g) |
        r a( g e g a b a b) |
        r cis( b a b cis d cis? d) |

        \barNumberCheck 23
        r e( d b cis d d cis d) |
        r e( d b g a b a b) |
        r c( b g a b c cis d) |
        r e( d b cis d d e eis) |

        \barNumberCheck 27
        r fis( e d cis d e d e) |
        r fis( e d cis b cis d e) |
        r d( cis b ais b cis b cis) |
        r d( cis b ais b c b c) |
      }

      \barNumberCheck 31
      \skip 4
      % tie for D note is a bit hairy
      <<
        \relative c'' {
          \temporary \override NoteColumn.ignore-collision = ##t
          \skip 8 g8--\noBeam bes-- d--
          \revert NoteColumn.ignore-collision
        }
        \new Voice \with {
          \remove "Beam_engraver"
        } \relative c' {
          \temporary \override NoteColumn.ignore-collision = ##t
          \once \stemUp d4~ \once \stemDown d
          \revert NoteColumn.ignore-collision
        }
      >> |

      \barNumberCheck 32
      \tuplet 3/2 4 {
        r8 d=''( fis g a g) r \oneVoice d( d,) \voiceOne |
        r \slurPos 0 2 d'( bes a g a bes g e~
      } |
      e2~ e8) d--
    }
    \\
    \relative c' {
      \oD <fis d fis,>2(\tenutoAlt\arpeggio\mp e4)\tenutoAlt |
      <fis d fis,>2(\tenutoAlt\arpeggio b,4)\tenutoAlt |
      <cis g>2(\tenutoAlt d8-- cis16--\< d)\tenutoAlt |
      <e cis g>2--\! \showTuplet
      \once \override TupletNumber.avoid-slur = #'ignore
      \onceShowTupBracket
      \once \override TupletBracket.positions = #'(-6 . -5)
      \once \override TupletBracket.shorten-pair = #'(-0.2 . -0.8)
      \tuplet 3/2 { fis4\<(\tenutoAlt b8)\tenutoAlt } \hideTuplet |

      \barNumberCheck 23
      <g d b>2\!(\tenutoAlt fis4)\tenutoAlt |
      <g d b>2(\tenutoAlt \showTuplet
      \once \override TupletNumber.avoid-slur = #'ignore
      \once \override TupletBracket.positions = #'(-5 . -5)
      \tuplet 3/2 { d4--\< dis8\!)\tenutoAlt } \hideTuplet |
      <e b g>2-- fis4-- |
      <g d b>2--
      \showTuplet \tuplet 3/2 { gis8.--\< g16-- gis8--\! } \hideTuplet |

      \barNumberCheck 27
      <a d, fis,>2--\arpeggio g4-- |
      <a d, fis,>2--\arpeggio
      \showTuplet \tuplet 3/2 { g8-- fis-- g-- } \hideTuplet |
      <fis d b fis>2(\arpeggio\tenutoAlt e4)\tenutoAlt |
      <fis d b fis>2--\arpeggio
      \once \override TupletBracket.padding = 0.5
      \showTuplet \tuplet 3/2 { ees8.-- d16-- ees8-- } \hideTuplet |

      \barNumberCheck 31
      <d bes g d>4. g8~ g4 |
      \basicSlur \shape #'((0 . 0)(0 . 0)(0 . 11)(0 . 7)) Slur
      <c,=' d g c>2_(--
      \change Staff="LH" \ct \voiceOne <bes g' bes>4)-- |
      \change Staff="RH" \voiceTwo <e d bes g>2.-- |
      \tuplet 3/2 { d8( e d } <cis g>2)
    }
  >> |

  \barNumberCheck 35
  <<
    \relative c' {
      \set beamExceptions = #'()
      r8 fis4( e8 fis b, |
      cis d fis a <b d,> <cis e,>) |
      \basicSlur <d b d,>4.( <cis e,>8 <d fis,> <e, cis> |
      \oneVoice <d fis> <e cis'>-- q--
      <fis d'>~ q <d gis e'>\arpeggio \voiceOne |
      <cis a' cis a'>4.)\tenutoAlt\arpeggio
      <d b'>8( <e cis'> <d b> |
      <e cis> <d b'> <e cis'> <b' d>-- q-- <cis e>) |
      <c a c,>4.( <d, b'>8 <e c'> <d b> |
      <e c> <d b'> c' <b d> <g c e>-- <a c fis>)\tenutoAlt |

      \barNumberCheck 43
      \once \stemDown <g b e b'>4._-\arpeggio
      <fis a>8( <g b> <fis a,> |
      <g b,> <fis a>-- q <g b>-- <a c> <b d>) |
      <b g b,>4. <fis a>8( <g b> <c, a> |
      <d b> <fis a> <g b> <fis a> <g b> <a c>) |
      \unset beamExceptions
    }
    \\
    \relative c' {
      <d fis,>2.-- |
      \skip 2. |
      \absolute{g8\rest} fis'-- \absolute{d'4\rest} r |
      \skip 2.*2 |
      \skip 4 e,2 |
      \absolute{g8\rest} e'8-- \absolute{b4\rest} r |
      \skip 4 e,4 e8 fis |

      \barNumberCheck 43
      \skip 2. |
      \skip 4. \once \omit Stem \once \omit Flag g8~ g4 |
      \absolute{f8\rest} d'-- \absolute{a4\rest} r |
    }
  >> |

  \barNumberCheck 47
  <d'='' bes d,>8( <a fis> <bes g> <c a> <d bes d,>[ <e e,>)] |
  <f d bes f>[( <bes, bes,>] <d bes f> <f f,> <g d g,> <a a,>) |
  <bes g d bes>[( <fis fis,>] <g g,> <a a,> <bes g d bes> <c c,>) |
  <cis g cis,>( \ottavaUp
  <d bes d,> <ees g, ees> <fis cis fis,> <g bes, g> <a cis, a>) |
  <ais g d ais>-> <b g d b>-> <a fis d a>->
  <g e b g>-> <fis d b fis>-> <e b g e>-> |
  \ottava #0
  <d b fis d>-> <b g d b>-> <a fis d a>->
  <g e b g>-> <fis d b fis>[(\tenutoAlt <e cis e,>]) |

  \barNumberCheck 53
  <<
    \relative c''' {
      r8 d4. r8 cis |
      r8 d4. r8 g, |
      r8 a4. r8 b |
      r8 cis4. r8 d |
      r8 e4. r8 dis |
      r8 e4. r8 b |

      \barNumberCheck 59
      r8 cis4. r8 d |
      r8 e4. r8 eis |
      r8 fis4. r8 eis |
      r8 fis4. r8 e |
      r8 d4. r8 cis |
      r8 d4. r8 cis |

      \barNumberCheck 65
      r8 b4. r4 |
      r8 a'4. r8 g |
      r8 g,4. r4 |
      r4 r8 a4. |
      r8 b4. r4 |
      r8 d,4. r8 g |

      \barNumberCheck 71
      r8 fis4. r4 |
      r4 r8 cis r4 |
      r8 d4. \absolute{g''4\rest} |
    }
    \\
    \relative c'' {
      \set beamExceptions = #'()
      <fis d fis,>2-- <e cis e,>4-- |
      <fis d fis,>2-- <b, fis b,>4-- |
      <cis a g cis,>2-- \showTuplet \tuplet 3/2 {
        <d b d,>8.-- cis16(-- q8)--
      } \hideTuplet |
      <e cis g cis,>2--\arpeggio <fis d fis,>4-- |
      <g e b e,>2--\arpeggio <fis dis fis,>4-- |
      <g e b g>2--\arpeggio <d b d,>4-- |

      \barNumberCheck 59
      <e cis g e>2-- <fis d fis,>4-- |
      <g e b g>2-- <gis eis gis,>4-- |
      <a cis, a fis cis>2--\arpeggio <gis eis gis,>4-- |
      <a cis, a fis cis>2--\arpeggio
      \once \override TupletBracket.positions = #'(-3.5 . -3.5)
      \showTuplet \tuplet 3/2 {
        <g d g,>4-- fis16(\tenutoAlt \acciaccatura { \once \stemUp a8 }
        %% Lilypond bug: if normal tenuto is used, the grace note slur
        %% would be placed OUTSIDE beam!
        g16)\tenutoAlt
      } \hideTuplet |
      <fis d fis,>2-- <e cis e,>4-- |
      <fis d fis,>2--
      \once \override TupletNumber.avoid-slur = #'outside
      \once \override TupletBracket.shorten-pair = #'(-0.2 . -0.8)
      \once \override TupletBracket.positions = #'(-6 . -5)
      \onceShowTupBracket
      \showTuplet \tuplet 3/2 {
        \slurPos 0 -1 <e cis e,>4(\tenutoAlt fis8)\tenutoAlt
      } \hideTuplet |

      \barNumberCheck 65
      <d b fis d>4.-- <fis fis,>8--\< <a d, a>-- <d d,>--\! |
      <cis a d, cis>2-- << { <b g d b>4-- } { <>\> \skip 8 <>\! } >> |
      <e, b g d>2.--\!~ |
      q8 <d d,>--
      <<
        { <cis g cis,>4.-- <d d,>8-- }
        { s8\< s4\! s8\> <>\! }
      >> |
      <d b d,>2.-- |
      <c a d, c>2-- <bes g bes,>4-- |

      \barNumberCheck 71
      <a d, fis,>2.--\arpeggio ~ |
      q4-- <g cis, g>4.-- fis8-- |
      <fis d fis,>4.-- e8^( fis b, |
      \voiceOne cis d fis a d e)
    }
  >> |

  \barNumberCheck 75
  <fis,=' gis d' fis>2.--~ |
  q8 r <e cis g>4.-- d8 |
  <d fis,>2.--\fermata
}


%---------- Left hand parts

LH = \relative c {
  \temporary \omit DynamicText
  \temporary \omit Hairpin

  \showTuplet
  \shape #'((0 . 0)(2 . 2)(0 . 0)(0 . 0)) Slur
  \slurPos 1 0 \tuplet 3/2 4 { d,8\pp( a'' d a' d, a fis a, d') } |
  \hideTuplet
  \shape #'((0 . 0)(2 . 2)(0 . 0)(0 . 0)) Slur
  \slurPos 1 0 \tuplet 3/2 4 { d,,( a'' d a' d, a fis a, d') } |

  \tuplet 3/2 4 {
    r d,,( a'' a' d, a) r \ct <cis g' a>( a) |
    r d,^( a' a' d, a) r <d a'>( a) |
    r \cb d,,( a'' \ct <g' a> e a,) r <b a'>( a) |
    r d,( a' <g' a> cis, a) r <c a' d>\arpeggio\< \cb d, |
    r d,\p( b'' \ct d' d, b~ b ais d) |
    r d,( b' d' d, b~ b\> \cb g fis) |
    d,\pp( g' b \ct b' b, g) r <a d>\<( c') |
    r d,,( b' d' d, b) \cb r b( bis) |

    \barNumberCheck 11
    fis,,\noBeam\f <a'' cis,>( cis \ct cis' fis, a,) r b( d') |
    \cb <cis,, fis,>( a' cis \ct cis' fis, a,) \cb r d,\>( g,) |
    r d\mf( a'' \ct a' d, a) r bes'( g,) |
    \cb r d,_( a''\> a' d, a g ais,) r |
    r b,\p( fis'' d' b\< fis)
    % EDITORIAL NOTE: The "politically correct" way to present the notes
    % easily confuses slur with tie
    \temporary \stemDown <a fis,>( d, fis,) \stemNeutral |
    \basicSlur <e e,>\f_( b' d' a' d, g, fis\> e d') |
    r \basicSlur a,,\p( e'' b' d fis a g fis |
    e d b a\> fis e b cis a) |
  }

  \barNumberCheck 19
  \temporary \stemDown
  \slurPos 0 2 d,8\pp( a' fis' d' g, a,) |
  \slurPos 0 2 d,( a' fis' d' fis, a,) |
  \slurPos 0 2 d,( a' g' cis fis, a,) |
  \slurPos 0 2 d,( a' g' cis c d,) |
  \stemNeutral
  r \slurPos 4 2 d,( d'' b ais d,) |
  r \slurPos 4 2 d,( d'' b g fis) |
  r \slurPos 1 0 d,( b'' g a d) |
  r \slurPos 2 0 d,( d' b bes d) |

  \revert DynamicText.stencil
  \revert Hairpin.stencil

  \barNumberCheck 27
  <a, d,>8\noBeam \ct a'( fis' a <bes cis,> bes,) |
  \cb <a, d,>\noBeam a'( fis' d e ais,) |
  b,,\noBeam \slurPos 4 4 fis''( d' fis <g ais,> g,) |
  b,,\noBeam \slurPos 0 1 fis''( d' b a fis,) |

  \barNumberCheck 31
  <<
    \relative c'' {
      \change Staff="RH"
      \tuplet 3/2 {
        \voiceOne r8
        % FIXME wish me good luck
        \basicSlur
        \shape #'((0 . 0) (3 . 0) (3 . 15) (1 . 5)) Slur
        bes_( g \voiceTwo d \change Staff="LH" c bes g d g,)
      } |
      \voiceOne r8 \temporary \stemDown d'=( g d') \skip 4 |
      r8 \basicSlur e,( g e' d4)
    }
    \\
    \relative c {
      \oneVoice <g g,>8( d') \skip 2 |
      <e, e,>2 r8 \cb e' |
      a,,2.
    }
  >> |
  r4
  \tuplet 3/2 4 {
    \showTuplet r8 a'=( fis \hideTuplet e a, a,) |

    \barNumberCheck 35
    \basicSlur
    d=,( a' fis' a b cis d a g |
    fis e d b a fis~ fis d cis) |
    b( fis'' b fis' b, fis) r
    \basicSlur fis( b, |
    fis' b fis'~ fis b, fis e b' e) |

    \barNumberCheck 39
    a,,,( e'' a e' a, e) r e( a, |
    e' a) e'~ e a,( e) e( a, e) |
    a,( e'' a e' a, e) r e( a, |
    e' a e'~ e) \slurPos 0 1 a,( e c' e, a,) |

    \barNumberCheck 43
    <b e,,>(\arpeggio g' b e b g) r b,( e, |
    b' e b'~ b) e,( b' e ees d) |
    <d, g,,>\arpeggio\noBeam d( g d' g, d) r d( g, |
    d' g d'~ d) g,( d) d( g, d) |

    \barNumberCheck 47
    \absolute{ <g, g,,>8 } d'( g d' g, d~ d) g,( d) |
    \absolute{ <f, f,,>8 } d'( f d' f, d~ d) f,( d) |
    \absolute{ <e, e,,>8 } d'( g <bes d> g d~ d) g,( e) |
    \flatterBeam
    \absolute{ <ees, ees,,>8(-> } bes' g'
    \ct bes cis g' bes cis g') |
    \flatterBeam
    \cb \absolute{ <e, e,,>8->^( b,_5 g } \ct d,_1 e_5 g_3 a b_1 g_2 |
    fis_3 e d_5 \cb b_1 a g a_1 g a,) |

    \barNumberCheck 53
    \slurPos 0 3 d,( a' fis' d'^\< e fis\! <g bes,>^\> g, bes,\!) |
    \slurPos 0 2 d,( a' fis' a^\< b cis\! d^\> fis, a,\!) |
    \slurPos 0 2 d,( a' g' cis\< d e\! fis fis, a,) |
    \temporary \override DynamicLineSpanner.outside-staff-priority = ##f
    \slurPos 0 3 d,( a' g' <cis e>\< fis g\! <a c,> d, d,) |
    <g d,>\arpeggio \ct b( e g\< a b\! c dis, a) |
    \cb <g d,>\arpeggio
    \slurPos -2 -1 b( \ct e dis\< e fis\! g b, \cb d,) |

    \barNumberCheck 59
    \slurPos 0 3 d,( a' g' \ct <e' cis>\< fis g\! <a c,> \cb d, d,) |
    \flatterBeam
    \slurPos 0 2 d,( g' b \ct <e g>\< a ais\! <eis b'> \cb b d,) |
    <cis fis, fis,>\arpeggio \basicSlur a'( cis
  }
  \ct a'16\< b bis cis\!
  \tuplet 3/2 { <d eis,>8 d, b) } \cb |
  \tuplet 3/2 { <cis, fis,>8 a'( \ct cis }
  fis16\< g gis a\!
  \tuplet 3/2 { <bes d,>8 \cb bes, <d, g,>) } |
  \tuplet 3/2 { d,8( a' fis' }
  d'16\< e eis fis\!
  \tuplet 3/2 { <g bes,>8 g, bes,) } |

  \barNumberCheck 64
  \tuplet 3/2 {
    \slurPos 0 2 d,8( a' fis' d'\< e fis\! <g ais,> g, ais,) |
    \revert DynamicLineSpanner.outside-staff-priority
    \basicSlur b,( fis'' b d cis b
  }
  <a fis,>16 e d fis,) |
  \tuplet 3/2 {
    <e e,>8 b'( g' \ct d' fis a g d g,) |
    \cb a,,( a' e' b' d fis g fis e |
    d b e, a fis e b a a,) |

    \barNumberCheck 69
    \slurPos 0 2 b( b' eis fis b cis d fis, b,) |
    <e, e,> d''( a g d e,~ e) d'( bes') |
    \basicSlur a,,( a' fis' a b d cis b a |
    b a fis a fis e a, a,) r |

    \barNumberCheck 73
    % FIXME fragile slur tuning
    \shape #'((0 . 0)(0 . 0)(1.2 . 0.5)(1.2 . 0.5)) Slur
    \flatterBeam \basicSlur d( a' fis' a b cis d a g |
    fis a b \ct cis d e
    \once \override Beam.positions = #'(2 . 3)
    fis a) \change Staff="RH" cis
  } |

  \barNumberCheck 75
  \change Staff="LH" <b d, b>2.--~ |
  q8 r \cb a,,2 |
  <a d,>2.\fermata
}


%---------- Dynamics

Dynamics = {
  \tempo \markup \large "Andante cantabile" 4 = 50
  s2.-\tweak Y-offset -1.5 \pp |
  \skip 2. |
  s2.-\markup \italic "sempre cantabile" |
  \skip 2.*2 |
  \skip 2 s4\< |
  s2.\! |
  \skip 2 s4\> |
  s2\! s4\< |
  s2\! s4\cresc |

  \barNumberCheck 11
  \set PianoStaff.connectArpeggios = ##t
  %s2.-\tweak extra-offset #'(0 . -1) \f |
  s2.\f
  \moveDynSpan 1 \skip 2 s4\dim |
  \unset PianoStaff.connectArpeggios
  s2. -\tweak X-offset 1 \mf
  %\moveDyn 4 #'(0.75 . -1.5) s2.\mf |
  \skip 4 \moveDynSpan 1 s2\dim |
  \moveDyn 2 #'(1 . -1.75) s4.\p s4.\< |
  s2\f s4\> |
  \moveDyn -1 #'(1 . -2.5) s2.\p |
  \skip 4 \moveDynSpan 1 s2\dim |

  \barNumberCheck 19
  \moveDyn -4 #'(-0.5 . -3) s2.\pp |
  \skip 2.*5 |
  \moveDynSpan 1.5 s2.-\tweak extra-offset #'(0 . -2) \cresc |
  \skip 2. |

  \barNumberCheck 27
  \moveDyn -2 #'(0 . -2) s2.\f |
  \skip 2 s4\dim |
  \moveDyn -4 #'(-0.5 . -1.5) s2.\mf |
  \skip 2 \skip 8*2/3 s4*2/3\dim |
  \moveDyn -2 #'(0 . -1.5) s4.\p
  \once \override Hairpin.Y-offset = 1.5 s4.\< |
  s2\f \skip 4*1/3 <>\> \skip 4*2/3 |
  \moveDyn -2 #'(0 . -0.5) s2\p
  \once \override DynamicTextSpanner.bound-details.left.stencil-offset = #'(-0.5 . 1.5) s4\dim |
  \skip 2. |

  \barNumberCheck 35
  s2.-\tweak extra-offset #'(2.5 . -2.5) \ppLeft |
  \skip 2 s4\< |
  s2.\p |
  \skip 4. s4.\< |
  s4.-\tweak extra-offset #'(0 . -0.5) \mf s8.\> s8.\! |
  \skip 4 s2\< |
  s4.\mf s8\> s4\! |
  \skip 4 \tempo "rit." <>\dim \skip 2 |

  \barNumberCheck 43
  \tempo "a tempo"
  s2.\pp |
  \skip 4. <>\< \skip 4. |
  \moveDyn 2 #'(0 . -1.5) s4.\mf s4\> s8\! |
  \skip 2. |

  \barNumberCheck 47
  <>\p \skip 2 <>\cresc \skip 4 |
  \skip 2.*2 |
  <>\! \skip 8 <>\< \skip 8 \skip 2 |
  s2.\ff |
  s2\dim s8\!\> s8\! |

  \barNumberCheck 53
  s2.-\tweak self-alignment-X #LEFT \mf |
  \skip 2. |
  \skip 2 \skip 8 s8\< |
  s2.\! |
  s2.\mf |

  \barNumberCheck 58
  % EDITORIAL NOTE: Hairpin presented in the editions are not useful.
  % Likely indicates decresc in first quaver instead.
  s4\> s4\! s4-\tweak Y-offset -1 \p |
  \skip 2 s4\cresc |
  \skip 2. |

  \barNumberCheck 61
  \moveDyn -2 #'(0 . -1.5) s2.\f |
  \skip 2 s4\dim |
  s2.\mf |
  \skip 2 s4\dim |
  s2.\p |
  s2.\mf |

  \barNumberCheck 67
  s2.-\tweak Y-offset -1 \p |
  \skip 2. |
  s2.\p |
  \skip 2 s8\> s8\! |
  \skip 2. |
  \skip 4 \moveDynSpan 1 s2\dim |

  \barNumberCheck 73
  s2.-\tweak extra-offset #'(2.25 . -2) \ppLeft |
  \skip 4
  \once \override Hairpin.Y-offset = 1.5
  s4.\< s8\! |
  s2.\mf |
  \skip 4 s4.\p\> s8\! |
  s2.\pp \bar "|."
}

%-------Typeset music and generate midi

\score {

  \context PianoStaff \with {
  } <<
    \accidentalStyle PianoStaff.piano
    \new Staff = "RH" << \clef treble \key d \major \time 3/4 \RH >>
    \new Dynamics << \Dynamics >>
    \new Staff = "LH" << \clef bass   \key d \major \time 3/4 \LH >>
  >>
  \layout {
    \context {
      \Score
      scriptDefinitions = #my-script-alist
      \omit TupletBracket
      \omit TupletNumber
      \override TupletBracket.avoid-slur = #'ignore
      \override TupletBracket.padding = 1.5
      \override DynamicTextSpanner.style = #'none
      \override DynamicTextSpanner.font-size = 0
      \override Hairpin.height = 0.5  %% default too thick for short hairpins

      \override Script.stencil =  % default accent too large
      #(lambda (grob)
         (let ((script (ly:grob-property grob 'script-stencil)))
           (if (equal? script '(feta . ("sforzato" . "sforzato")))
               (ly:stencil-scale (ly:script-interface::print grob) 0.85 0.85)
               (ly:script-interface::print grob))))

      \override DynamicText.Y-extent =
      #(ly:make-unpure-pure-container ly:grob::stencil-height '(-0 . 0))
      \override Slur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
      \override PhrasingSlur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
    }
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
  \midi {
    \tempo 4 = 50
    \context {
      \Score
      midiChannelMapping = #'voice
      midiInstrument = "acoustic grand"
      dynamicAbsoluteVolumeFunction = #myMidiVolume
    }
  }
}

