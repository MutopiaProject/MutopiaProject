%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 6
%%--------------------------------------------------------------------

%%%%%%% Notes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% * Many ties do need precise positioning. In particular, ties at
%   bar 13 and 18 are delicate; any slight change of layout
%   can destroy the whiteout masks.
%
% * Lilypond didn't handle the voice interleaving very well, so quite
%   some notes need manual horizontal shifting. Again, bar 13 & 18
%   are good examples, as well as any unbeamed semiquaver.

%%%%%%% Editorial Notes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% * This piece is using Piano auto-accidental mode instead of default.
%   A few places can be ambiguous on existing IMSLP editions, so the
%   default accidental mode is not chosen.
%
% * In bar 19 slur after arpeggio, Muzyka edition included B♭ while
%   Gutheil one didn't. Gutheil edition is followed here, since nearby
%   note groups don't include first note in slurs too.
%
% * Dashed line on bar 26-27 is removed. Gutheil and Muzyka editions
%   generally don't have dashed line spanner following cresc and dim,
%   so it's quite odd having one here.
%
% * Bar 30 left hand: Gutheil edition didn't have slur for last 3
%   semiquavers, while Muzyka did. Judging from previous 2 similar bars,
%   slur should have been there.
%
% * Bar 31 cross-staff slur: For Gutheil edition it ends at G, while
%   Muzyka edition one ends at E♭. Following Muzyka one, though I have
%   no good reason judging which one is correct.

%%%%%%% Known Problems %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% * A few places with "Impossible or ambiguous (de)crescendo in MIDI",
%   but it's too difficult to trace where they come from.
%
% * All "may not find good beam slope" come from kneed beams; but
%   somehow the result is good enough so warnings are ignored.
%
% * Some dynamic volume might not be so accurate, in order to avoid
%   even more warnings about existence of hidden cross-staff hairpins.

%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.2"

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
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #12       %-pads music from copyright block

  % ragged-right = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f

  % debug-slur-scoring = ##t
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
  title = "Prelude VI"
  composer = "Sergei Rachmaninoff (1873-1943)"
  opus = "Op. 23, No 6"
  date = "1903"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  % Both are cross-referenced to minimize errors
  source = "IMSLP - Muzyka and Gutheil editions"

  maintainer = "Abel Cheung"
  maintainerEmail = "abelcheung at gmail dot com"
  mutopiatitle = "Prelude Op. 23, No. 6"
  mutopiaopus = "Op. 23"
  mutopiacomposer = "RachmaninoffS"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2014/12/14-1996"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------- Util and shorthands
ct = \clef treble
cb = \clef bass
oD = \once \omit DynamicText
oH = \once \omit Hairpin

ms = -\tweak self-alignment-X #LEFT _\markup \italic "m.s."
md = -\tweak self-alignment-X #LEFT
     -\tweak outside-staff-priority ##f
     _\markup \italic "m.d."

toRH = { \voiceTwo \change Staff="RH" }
toLH = { \voiceOne \change Staff="LH" }

flattenBeam = { \once \override Beam.damping = 2 }
basicSlur = \once \override Slur.positions = #'(0 . 0)
% Slur endpoints usually lie on right of tenuto. Shift them horizontally
% so they are more like directly on top of tenuto instead.
slurOnTenuto =
\shape #'((-0.5 . 0)(-0.5 . 0)(-0.5 . 0)(-0.5 . 0)) Slur

ottavaUp = { \ottava #1 \set Staff.ottavation = #"8" }

hshift =
#(define-music-function (parser location offset) (number?)
   #{ \once \override Voice.NoteColumn.force-hshift = #offset #} )

% For dotted note on 2nd voice, where notehead and dots are separated
% by stem from 1st voice
separateDottedNote = {
  \hshift -0.3
  \once \override Dots.extra-offset = #'(0.3 . 0)
}

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

tenutoAlt = #(make-articulation "tenutoalt")

#(assoc-set! (assoc-ref my-script-alist "tenuto") 'padding 0.4)

% idea from:
% http://lists.gnu.org/archive/html/lilypond-user/2014-05/msg00498.html
whiteoutMaskOne = \markup {
  \with-dimensions #'(0 . 0) #'(0 . 0)
  \with-color #white %#red
  \override #'(filled . #t) \path #0
  #'((moveto 1.45 5.2)
     (lineto 1.45 3.6)
     (lineto -0.17 3.6)
     (lineto 0.33 4.2)
     (lineto 1.05 4.2)
     (lineto 1.05 5.2)
     (closepath))
  \with-dimensions #'(0 . 0) #'(0 . 0)
  \with-color #white %#red
  \override #'(filled . #t) \path #0
  #'((moveto -1.98 3.6)
     (lineto -2.03 5.4)
     (lineto -1.53 5.4)
     (lineto -1.58 4.2)
     (curveto -1 4.4 -0.8 4.0 -0.88 3.6)
     (closepath))
}

whiteoutMaskTwo = \markup {
  \with-dimensions #'(0 . 0) #'(0 . 0)
  \with-color #white %#red
  \filled-box #'(1.03 . 1.45) #'(3.6 . 5.0) #0
}

whiteoutMaskThree = \markup {
  \with-dimensions #'(0 . 0) #'(0 . 0)
  \with-color #white %#red
  \filled-box #'(-2.5 . -2.1) #'(3.6 . 5.6) #0
}


RH = \relative c' {
  r2 r8
  <<
    \relative c'' {
      \oD <g g'>4(\p -\tweak to-barline ##f \< <aes aes'>8 |
      <bes bes'>2\!)
    }
    \\
    \relative c'' { \oD \separateDottedNote ees4.\p | <ees g>2 }
  >>
  r8
  <<
    \relative c'' {
      \temporary \omit DynamicText
      <g g'>4\p\<( <aes aes'>8\mp |
      <a a'>\> <c c'>
      \oneVoice \once \stemUp <bes bes'>4\p~ \voiceOne q8)
      \basicSlur <d d'>( <ees ees'> <f f'> |
      s2 <bes, bes'>8 <aes aes'> <g g'> <f f'> |
      <bes bes'>2)
      \revert DynamicText.stencil
    }
    \\
    \relative c'' {
      \separateDottedNote \oD ees4.\p |
      \hshift 1.8 <g ees>4 \hshift -0.3 q2 bes4 |
      \oneVoice <g bes ees g>8 <f bes des f>
      <ees g c ees> <c ees~ g c> \voiceTwo
      ees4 ees |
      ees2
    }
  >>

  \barNumberCheck 5
  r8
  <<
    \relative c'' {
      \oD <g g'>8\p -\tweak to-barline ##f \<(
      <aes aes'> <a a'> | <bes bes'>2\!)
    } \\
    \relative c'' { \separateDottedNote \oD ees4.\p | <ees g>2 }
  >>
  r8
  <<
    \relative c'' {
      \temporary \omit DynamicText
      <g g'>8(-\tweak X-offset -1.5 \p\<
      <aes aes'> <a a'>)-\tweak X-offset 1.5 \mp |
      <a a'>(\> <c c'>
      \oneVoice \once \stemUp <bes bes'>4\!~ \voiceOne q8)
      \basicSlur <d d'>\p\<( <ees ees'> <f f'>\! |
      \oneVoice <g c ees g>\mf <f d' f> <ees g~ c ees> <c~ g' c~>
      \voiceOne <c c'> \oH <bes bes'>\> <g g'> <a a'> |
      <bes bes'>2\p)
      \revert DynamicText.stencil
    }
    \\
    \relative c'' {
      \temporary \omit DynamicText
      \separateDottedNote ees4.\p |
      \hshift 1.8 <g ees>4 q2 bes4 |
      \skip 2 \separateDottedNote ees,4.\mf \hshift -0.8 <c d>8\mp |
      <d g>2\p
      \revert DynamicText.stencil
    }
  >>

  \barNumberCheck 9
  r8
  <<
    \relative c'' {
      \oD <bes bes'>4\p -\tweak to-barline ##f \<(
      <c c'>8 | <d d'>2\!)
    }
    \\
    \relative c''' { \separateDottedNote \oD g4.\p | <g bes>2 }
  >>
  r8
  <<
    \relative c'' {
      \temporary \omit DynamicText
      \oH <bes bes'>4\p\<( <c c'>8) |
      <cis cis'>( <ees ees'> <d d'>) <ees_~ ees'^~>(\mf
      q <f f'>\> <e e'>)
      \slurOnTenuto <aes aes'>(\mp-- |
      <f f'>)[-- <aes, aes'>\p(] <bes bes'> <b b'>
      <c c'>2)
      \revert DynamicText.stencil
    }
    \\
    \relative c''' {
      \temporary \omit DynamicText
      \separateDottedNote g4.\mp |
      <g bes>4.
      % avoid stem flag overlapping notehead of other voice
      \hshift -0.8 bes8\mf^~ bes4 \oH c8\> bes |
      aes c,\p f4 <f aes>2 |
      \revert DynamicText.stencil
    }
  >> |

  \barNumberCheck 13
  r8
  <<
    \relative c'' {
      \temporary \omit DynamicText
      <aes aes'>8-\tweak X-offset -2 \p\<( <b b'>
      \once \override TextScript.layer = 3
      \once \override TextScript.whiteout = ##t
      \once \override TextScript.outside-staff-priority = ##f
      <des des'>-\tweak X-offset 2 \mp_\whiteoutMaskOne
      <c c'>) <des des'>( <d d'>-\tweak height 0.5 \>
      <aes' f'>-\tweak X-offset 2 \p |
      <ees ees'>)\noBeam
      \shape #'(() ((0 . 2)(0 . 2)(0 . 2)(0 . 2))) Slur
      <g, g'>( <aes aes'> <a a'>
      <bes_~ bes'^~>2 |
      q8) \oH <a a'>\<( <bes bes'> <d d'> <c c'>4. <d d'>8 |

      \barNumberCheck 16
      <ees ees'>)\noBeam
      \shape #'(() ((0 . 2) (0 . 2) (0 . 1.5) (0 . 1.5))) Slur
      <c c'>( <des des'> <d d'>
      <ees_~ ees'^~>2 |
      q8) <d d'>( <ees ees'> <g g'> <f f'>4. <fis fis'>8 |
      \oneVoice <g b f' g>)\noBeam\mf \voiceOne <a, a'>(\mp \oH <b b'>\<
      \once \override TextScript.layer = 3
      \once \override TextScript.whiteout = ##t
      \once \override TextScript.outside-staff-priority = ##f
      <c c'>_\whiteoutMaskTwo
      <d d'> <ees ees'> <f f'> <fis fis'> | \oneVoice

      \barNumberCheck 19
      \ottavaUp <g bes f' g>)\f <aes f' aes>--
      \oH <bes f' g bes>--\< <b f' b>--
      \oH <c e aes c>--\ff\> <bes e g bes>-- <aes c f aes>--\f <g c e g>-- |
      \voiceOne \oH <g g'>(\tenutoAlt\> <f f'>4) \ottava #0 <ees ees'>8(
      <des des'> <ces ces'> <bes bes'> <aes aes'>) |
      r <g g'>(\p <aes aes'>\< <a a'> <bes ees bes'>4.)\mp <bes bes'>8-- |
      <bes ees bes'>(\tenutoAlt <aes aes'> <bes ees bes'> <aes aes'>)
      <f f'>4..(\tenutoAlt <ees ees'>16)\tenutoAlt\p |

      \barNumberCheck 23
      \oneVoice <ees g ees'>4-- r r8 \voiceOne g4( aes8 |
      bes2~ bes8) g(\< aes a)-\tweak X-offset 2 \mp |
      a(-\tweak X-offset 2 \> c bes4~\p bes8) f4( ges8 |
      g bes aes) \oH ees(\> e f fis aes |

      \barNumberCheck 27
      g) bes( ees g bes <d, d'> <ees ees'> f') |
      <g, bes ees g>(\pp <f bes des f> <g c ees> <c,_~ c'^~>
      q <bes bes'> <aes aes'> <g g'>) |
      <ees' g ees'>( <bes ees bes'> <aes aes'>4~
      \once \override TieColumn.tie-configuration = #'((-1.5 . -1) (7 . 1))
      q8 <g g'> <f f'> <e e'>) |

      \barNumberCheck 30
      <c' e c'>( <g c g'> <c f> <ees, ees'>~
      \once \override TieColumn.tie-configuration = #'((-4.5 . -1) (5 . 1))
      q <c c'> <des des'> <d d'>) |
      \oneVoice r8 \voiceOne <ees' g,>( f fis g2) |
      r8 des4(\mf d8 ees2) |
      r8 aes,( bes b c2) |
      r8 \oH g4(\> aes8 ces2) |

      \barNumberCheck 35
      r8 g(\p aes a bes2) |
      r8 \oH g(\> aes a bes2) |
      r8 \slurOnTenuto g(\f-- aes-- a-- bes)-- bes4-- bes8-- |
      bes(\tenutoAlt\mf aes bes aes)
      \slurOnTenuto f4..(\mp-- ees16)\p-- |
      \revert DynamicText.stencil
    }
    \\
    \relative c''' {
      <<
        %
        % WARNING: Fragile. Handle with care.
        %
        % Add fake voice for generating tie on A♭ note. Make sure 2nd
        % and 3rd notes have the same horiz shift amount!
        \relative c'' {
          \voiceTwo
          \hshift -0.5 \oD f8\p~
          \once \override Stem.Y-offset = 1
          \once \override Stem.length =
          #(lambda(grob) (+ 2 (ly:stem::calc-length grob)))
          \hshift 1.4 f4~
          \once \override TieColumn.tie-configuration = #'((3.8 . -1))
          \once \override Stem.Y-offset = 1
          \once \override Stem.length =
          #(lambda(grob) (+ 2 (ly:stem::calc-length grob)))
          \hshift -0.15 f4
        }
        \new Voice \with {
          \remove "Beam_engraver"
          \remove "Stem_engraver"
          %\override NoteHead.color = #green
        } \relative c''' {
          \voiceFour
          \hshift 0.15 \oD aes8_\p~
          \once \override TieColumn.tie-configuration = #'((5.0 . -1))
          \hshift 1.4 aes4_~
          \once \override TieColumn.tie-configuration = #'((5.6 . -1))
          \hshift -0.15 aes4
        }
      >>
      \temporary \omit DynamicText
      \voiceTwo g8\p f |
      \hshift -0.8 g \separateDottedNote <ees bes>4. ees2^~ |
      ees4 \oH <g ees>4\< \hshift -0.3 q2 |

      \barNumberCheck 16
      \hshift -0.8 <aes c>8 \separateDottedNote <aes ees>4. aes2^~ |
      aes4 <aes c>4 \hshift -0.3 q2\mf |
      s8 \hshift -0.5 f~\mp
      \once \override TieColumn.tie-configuration = #'((3.5 . -1))
      \hshift -0.3 <f g>4~
      \once \override TieColumn.tie-configuration =
      #'((4.8 . DOWN) (3.8 . DOWN))
      \hshift -0.8 q8_\whiteoutMaskThree b4\mf \hshift -0.8 b8 |

      \barNumberCheck 19
      \skip 1 |
      \oH <ces ees>2\> f,4 ees\p |
      \skip 2 ees\mp d-- |
      d-- c-- <c ees>(--\> <bes d>)\p |

      \barNumberCheck 23
      \skip 1 |
      r2 ees,-- |
      des2.-- des4~ |
      des4 c2 \skip 4 |
      <ees bes>4 r \skip 2 |

      \barNumberCheck 28
      r8 bes'16\((\pp_\ms c) ees-\tweak padding 0.9 _\md f fis aes
      g ees8 des16 c ces bes ees\) |
      r8
      \temporary \override Beam.positions = #'(-4.5 . -4)
      ees,16\((_\ms f)
      \revert Beam.positions
      \once \override Beam.positions = #'(-3 . -3)
      ees'-\tweak padding 1.5 _\md bes c f
      ees c8 bes16 aes bes c g\) |
      r8
      \shape #'((0 . -0.5)(0 . -0.5)(0 . 0)(0 . 0)) PhrasingSlur
      c,16\((_\ms e)
      f-\tweak padding 3 _\md g aes bes
      c aes8 g16 aes f bes bes,\) |

      \barNumberCheck 31
      \skip 2 r8 \oH ees'(--\< d-- des)-- |
      c4(\mf bes~ bes8) aes4(\tenutoAlt g8)\tenutoAlt |
      \temporary \override NoteColumn.ignore-collision = ##t
      \shape #'((0.6 . 0)(0.4 . 0)(0.2 . 0)(0 . 0)) Slur
      \once \override Slur.positions = #'(-5 . -4) g4( f~ f8) e4( ees8) |
      \revert NoteColumn.ignore-collision
      \once \override Slur.positions = #'(-3 . -5)
      \oH ees4(\tenutoAlt\> d~ d8) ees( e f)\p |

      \barNumberCheck 35
      \skip 2. ees4-- |
      \skip 2. d-- |
      <<
        {
          \temporary \omit DynamicText
          \skip 2 g\f \oH f\> |
          \shape #'((1.2 . 1)(1 . 1)(0 . 0.3)(0 . 0)) Slur
          \basicSlur fes(\mf ees) ees\mp d\p |
          \revert DynamicText.stencil
        }
        \new Voice \relative c' {
          \temporary \omit DynamicText
          \voiceFour \stemDown <bes des>2--\f
          \once \override NoteColumn.force-hshift = 1.5 <bes c>-- |
          \once \override NoteColumn.force-hshift = 0.5 ces--\mf
          \once \override NoteColumn.force-hshift = 0.2 bes-- |
          \revert DynamicText.stencil
        }
      >>

      \revert DynamicText.stencil
    }
  >>

  \barNumberCheck 39
  \temporary \omit DynamicText
  <ees=' g,>4--\p r r8 \voiceOne
  ees16(\pp f g aes a c |
  bes g bes c ees f fis aes
  g bes c d ees c ees f) |
  aes( g ees c a c bes g
  f ees c a c bes g ees) |
  fis( g ees c) \change Staff="LH" d( ees bes g)
  a( bes g ees) fis( g ees) r |

  \barNumberCheck 43
  \oneVoice \change Staff="RH" r4
  <<
    \absolute{
      \oD ees'''2.\arpeggio\fermata\pp
      -\tweak self-alignment-X #RIGHT
      -\tweak extra-offset #'(0 . 0.3)
      ^\markup \italic "m.s." } \\
    \relative c'' { \oD <g bes ees g>2.\arpeggio\pp }
  >>
  \revert DynamicText.stencil
}

LH = \relative c {
  \temporary \omit DynamicText
  r8 \basicSlur bes16(\pp c ees f fis aes
  g bes \ct c d ees c ees f |
  g ees bes d ees\< g aes a)\p
  bes(\> g ees d\pp \flattenBeam c d \cb c bes |
  c bes a bes g ees d c)
  <bes ees,>( ees f fis g bes8 c16) \ct |
  \revert DynamicText.stencil
  <<
    \relative c' {
      \temporary \omit DynamicText
      <des ees,>16(\pp ees g des' c bes ees, f)
      g( f ees c)~ \voiceTwo c \cb ces^( bes aes)~ |
      \flattenBeam aes \basicSlur g^( <bes, ees,> c \oneVoice ees f fis aes
      g bes \ct c d ees c f fis |
      g ees bes d ees\< g aes a -\tweak X-offset 1 \p)
      \revert DynamicText.stencil
    }
    \\
    \relative c'' {
      \skip 8 \oD g8\pp~ <g des>4 c, s16
      \voiceOne ces8 \skip 16 |
      <bes ees>4 \voiceTwo
    }
  >>
  \temporary \omit DynamicText
  bes'='16(-\tweak X-offset -1 \p\> g ees d\pp
  \flattenBeam c d \cb c bes |

  \barNumberCheck 7
  c bes a bes g ees d c)
  <bes ees,>( ees f fis g bes8 d16) |
  \temporary \override DynamicLineSpanner.outside-staff-priority = ##f
  \once \override Slur.positions = #'(0 . 4)
  <ees a, g c,>(\arpeggio\mp \ct f^\< g d'
  c\mf^\> c, d ees)\mp
  \revert DynamicLineSpanner.outside-staff-priority
  \cb \oH <g c, d,>(\>\arpeggio fis ees c~ c bes fis d) |

  \barNumberCheck 9
  \basicSlur g,(\p d' e fis g aes a c
  bes \ct d e fis g ees g a |
  bes g d fis g\< bes c cis)-\tweak X-offset 2 \mp
  d(\> bes g f-\tweak X-offset 1 \p ees f ees d |
  ees d cis d \cb bes g \oD ees\mf des)
  c( g' \oH bes\> des \flattenBeam c bes e, c,) |

  \barNumberCheck 12
  \basicSlur f( c' \oD e\p f g aes ees' des
  <c aes> \ct d e g f des f g |
  bes aes c, e f\< aes bes b)-\tweak X-offset 2 \mp
  c(\> aes f ees\p \cb <d aes bes,>\arpeggio c bes aes') |
  \basicSlur ees,,( bes' ees g bes \ct ees f fis
  aes g ees c \cb bes g ees f |

  \barNumberCheck 15
  \oH g\< d)
  %\shape #'((0 . 0)(0 . 0.5)(0 . 1.5)(0 . 0)) Slur
  \basicSlur c( g' bes d f ees)
  <g, bes,>( c ees aes g ees d c) |
  % slur overlaps with tie
  \shape #'(((0 . 0) (0 . 2) (0 . 0) (0 . 0)) ()) Slur
  \basicSlur <ees, aes,>( aes c ees~ ees \ct aes bes b
  des c aes f ees \cb c aes bes |

  \barNumberCheck 17
  c g)
  \shape #'((0 . 0)(0 . -1)(0 . -0.5)(0 . 0)) Slur
  \basicSlur f( c' ees g bes aes)
  \basicSlur <c, ees,>( \ct f aes des c aes8 c,16) |
  \cb <f b, d,>8\arpeggio\noBeam\mf g16(\mp f \oH ees\< d c d
  c b aes g f ees d g,)\f |
  \revert DynamicText.stencil

  \barNumberCheck 19
  <<
    \relative c' {
      \temporary \omit DynamicText

      \once \override Beam.auto-knee-gap = 0 \absolute des,16\f
      \oneVoice g( bes f' g f aes, g) \voiceOne
      % EDITORIAL NOTE: Following Gutheil edition, doesn't include B♭
      % in slur.
      <bes c,,>\arpeggio
      \set stemRightBeamCount = 1 c_( \set stemLeftBeamCount = 1 \ct
      \once \tupletDown \tuplet 3/2 { e bes' b }
      c bes e, c) \cb \oneVoice |
      % Warning? Screw it.
      \once \override Beam.auto-knee-gap = 0 \oH \absolute <f, f,,>\>
      aes( ces ees \ct \voiceOne aes bes) ces( ces,
      aes' ees ces) f,( ees' des) ces( \cb bes, |

      \barNumberCheck 21
      g'\p bes ees d c ees f fis
      g ees bes c d ees g) g,( \oneVoice |
      <aes c, f,> c ees bes c ees f) g,(
      <aes bes,> c ees c <d aes> f bes) r |

      \barNumberCheck 23
      \oneVoice ees,,,8( bes'16 c ees f fis aes
      g bes c d ees c ees f |
      g ees bes d f ees c bes
      aes g c bes~ bes) aes( g ges |
      f[ bes,,) r
      \once \override Slur.positions = #'(3 . 0)
      bes'(] f' bes c ees
      des bes~ bes)
      \once \override Slur.positions = #'(0 . 4)
      aes( <g ees,> f~ f e~ \voiceOne |

      \barNumberCheck 26
      e) d( ees e f e f fis g ges g aes)
      \once \override VoiceFollower.bound-details =
      #'((right (attach-dir . -1) (padding . 1.5))
         (left  (attach-dir .  1) (padding . 1.5)))
      \showStaffSwitch \toRH <ces d>4 |
      \hideStaffSwitch \toLH ees,,16 bes' ees f g aes a c
      bes ees f g \once \override Beam.auto-knee-gap = 0 bes
      \toRH ees f bes |

      \barNumberCheck 28
      \change Staff="LH" \oneVoice
      <des,,~ g, ees,>2--\arpeggio\pp des8 g,( aes bes) |
      \voiceOne b\arpeggio des c4~ c8 e,( f g) |
      g\arpeggio bes aes4~ aes8
      % EDITORIAL NOTE: Adding slur, following Muzyka edition
      e( f aes) |
      % EDITORIAL NOTE: Gutheil & Muzyka editions disagree at ending
      % note of cross-staff slur; following Muzyka edition (E♭)
      \basicSlur \shape #'((0 . 0)(2 . 0)(-2 . -5)(0 . 0)) Slur
      g16_( bes ees g aes \toRH a bes ees)
      \change Staff="LH" \oneVoice
      r \oH g,,(\< a c bes ees f fis) \voiceOne |

      \barNumberCheck 32
      <g des ees,>16(\tenutoAlt\arpeggio\mf
      f8 e16) f16(\tenutoAlt fes8 ees16)
      d16(\tenutoAlt des8 c16~ c) ces( bes a)
      \once \override VoiceFollower.bound-details =
      #'((right (attach-dir . -1) (padding . 2.0))
         (left  (attach-dir .  1) (padding . 2.0)))
      \showStaffSwitch \toRH <aes c>4-- \hideStaffSwitch \skip 2. |
      \toLH \oH c16(\tenutoAlt\> ces8 bes16) ces(\tenutoAlt bes8 a16)
      aes( g fis g aes g aes a)\p |

      \barNumberCheck 35
      \once \override VoiceFollower.bound-details =
      #'((right (attach-dir . -1) (padding . 1.0))
         (left  (attach-dir .  1) (padding . 2.0)))
      \showStaffSwitch \toRH <f' bes, g>2.--\arpeggio
      \hideStaffSwitch \change Staff="LH" \voiceTwo
      ees16 g,( aes a) |
      \once \override VoiceFollower.bound-details.right.attach-dir = -1
      \showStaffSwitch \toRH <d bes>2.--
      \hideStaffSwitch \change Staff="LH" \voiceTwo
      \oH bes16\mf\> e,^( f ges |

      \barNumberCheck 37
      \voiceOne g)\f
      e,( bes' b c des8 c16~
      c) d( ees e \oH f\> f,8 g16) |
      r d'(\mf ees e f4~ f16)
      \shape #'((0 . 0)(0 . 1)(-1 . -5)(-0.7 . -2)) Slur
      \oH f(\> fis g aes a bes\p
      \once \override Beam.auto-knee-gap = 0 \toRH aes) |
      \revert DynamicText.stencil
    }
    \\
    \relative c, {
      \temporary \omit DynamicText
      des4\f s c s |
      % Ties too tiny, can be treated as dots
      \temporary \override Tie.details.stem-gap = 0
      \temporary \override Tie.details.note-head-gap = 0.1
      \skip 4.. ces''16\mp~ ces8.\noBeam f,16~ f8.\noBeam
      % Note needs more right-padding otherwise tie is invisible
      \once \override NoteColumn.X-extent =
      #(lambda(grob)
         (let ((width (ly:axis-group-interface::width grob)))
           (set-cdr! width (+ 2 (cdr width)))
           width))
      bes,16\p~ |
      \revert Tie.details.note-head-gap
      \revert Tie.details.stem-gap
      bes4 r r2 |
      \skip 1*4 |

      \barNumberCheck 26
      aes2.~ aes4 |
      \skip 2 bes'-- c--\pp |
      \skip 1 |
      ees,2\arpeggio r |
      ees,2\arpeggio r |

      \barNumberCheck 31
      ees8 r r4 \skip 2 |
      r2 r4 ees'\mf |
      \oneVoice \basicSlur ees,8( c'16 f~
      \once \override TieColumn.tie-configuration = #'((4.0 . 1))
      f ges g aes~ aes) f( g bes aes bes b c) |
      \voiceTwo r2 r4 bes,~\p

      \barNumberCheck 35
      \oneVoice bes8 ees,16( bes'~ bes) ees,( bes' g'~
      g) \basicSlur bes( c d
      \once \omit Stem \once \omit Flag \once \stemUp ees16) \skip 8. |
      \oH <d, g>8\< g,16( d'~
      \once \override TieColumn.tie-configuration = #'((2 . 1))
      d) d( g c d) g,( aes a
      \once \omit Stem \once \omit Flag \once \stemUp bes16)\mf \skip 8. |

      \barNumberCheck 37
      \voiceTwo s16
      \once \override Score.NoteCollision.merge-differently-dotted = ##t
      e,,8.\f~ e4 f~ f8 \absolute{d,\rest} |
      aes4(\mf~ aes16 g aes a bes2) |
      \revert DynamicText.stencil
    }
  >>

  \barNumberCheck 39
  \temporary \omit DynamicText
  <bes=, ees,>8\p bes16( c \stemUp ees\pp f fis aes
  g bes) \toRH c( d ees c f fis |
  g bes, d ees g aes a c
  bes f' ees aes g bes aes c) |
  \basicSlur ces( bes c, d ees fis, g bes
  b c ees, f fis g d c) |
  ces( bes g a) \change Staff="LH" aes( g ees f)
  ees( d b c) ces( bes a bes) |

  \barNumberCheck 43
  \oneVoice \absolute{ ees,,8( ees,) }
  % arpeggio was overlapping with fermata
  \once \override PianoStaff.Arpeggio.padding = 0.8
  <bes g' bes ees>2.\arpeggio\fermata
  \revert DynamicText.stencil
}

Dynamics = {
  \tempo \markup \large "Andante" 4 = 72
  s1-\tweak Y-offset -2.75 \pp |
  \set Score.tempoHideNote = ##t
  \skip 1 |
  s2 s8 s4.\p |
  \skip 1*4 |
  s2\mf s4\dim
  \tempo 4 = 68 \skip 4 |
  \tempo 4 = 72 s1\p |

  \barNumberCheck 10
  \skip 2 \skip 8 s4.\cresc |
  s4. s8-\tweak Y-offset -1.25 \mf \skip 4
  \tempo 4 = 68 \skip 4 |
  \tempo 4 = 72 \skip 8 s2..\p |
  \skip 2.
  \tempo 4 = 68 \skip 4 |
  \tempo 4 = 72
  s1-\tweak extra-offset #'(0 . -1.5) \p |
  \set crescendoSpanner = #'text
  \once \override DynamicTextSpanner.text = "poco a poco cresc."
  s1\< |
  \skip 1 |
  \skip 2
  \tempo 4 = 68 \skip 2 |
  \tempo 4 = 72 s8\! s8 \crescHairpin s2.\< |
  \tempo 4 = 70 s4-\tweak Y-offset -2.5 \f s8\< s8.\!
  \tempo 4 = 68 s16\> s8*2/3 s16*2/3\! \skip 4 |

  \barNumberCheck 20
  s2.-\tweak bound-details.left.stencil-offset #'(-1 . -1.5) \dim
  \tempo 4 = 66 s4 |
  \tempo 4 = 68
  s1-\tweak extra-offset #'(0 . -1) \p |
  \skip 2
  \tempo 4 = 64 \skip 4
  \tempo 4 = 60 \skip 4 |
  \tempo 4 = 72
  s1-\tweak extra-offset #'(0 . -1) \p |
  \skip 1*2 |
  % EDITORIAL NOTES: dashed line spanner removed for style consistency
  \skip 4. s8\dim
  \tempo 4 = 68 \skip 4
  \tempo 4 = 64 \skip 4 |
  \tempo 4 = 72 \skip 1 |
  s1\pp |
  \skip 1 |
  \skip 2
  \tempo 4 = 68 \skip 2 |

  \barNumberCheck 31
  \tempo 4 = 72 \skip 2 s8 s4.\< |
  s1\mf |
  \skip 1 |
  s2.\dim
  \tempo 4 = 68 \skip 4 |
  \tempo 4 = 72
  \skip 8 s2..-\tweak extra-offset #'(0 . -1) \p |
  \skip 8 s2..-\tweak extra-offset #'(0 . -1) \cresc |
  \tempo 4 = 68
  s2.-\tweak X-offset -2 -\tweak Y-offset 1 \f
  s4 -\tweak Y-offset 2 \> |
  s2\mf
  \tempo 4 = 64
  s4-\tweak bound-details.left.stencil-offset #'(2 . 4) \dim
  \tempo 4 = 60 \skip 4 |
  \tempo 4 = 66 s4
  \tempo 4 = 72 s2.\pp |

  \barNumberCheck 40
  \skip 2.
  \tempo 4 = 68 \skip 4 |
  \skip 4
  \tempo 4 = 72 \skip 2. |
  \skip 2.
  \tempo \markup \large "rit." 4 = 64 \skip 8
  \tempo 4 = 56 \skip 8 |
  \tempo 4 = 40 \skip 1 \bar "|."
}


%-------Typeset music and generate midi
\score {

  \context PianoStaff \with {
    \accidentalStyle PianoStaff.piano

    % For whiteout masks
    \override LedgerLineSpanner.layer = 100
    \override StaffSymbol.layer = 100
    \override Stem.layer = 10
    \override Accidental.layer = 10
    \override NoteHead.layer = 10
    \override Tie.layer = -1

    \omit TupletBracket
    \override TupletBracket.avoid-slur = #'ignore
    \override DynamicTextSpanner.style = #'none
    \override DynamicTextSpanner.font-size = 0
    \override VoiceFollower.after-line-breaking = ##t
    \override Hairpin.height = 0.5
    connectArpeggios = ##t
  } <<
    \new Staff = "RH" << \clef treble \key ees \major \time 4/4 \RH >>
    \new Dynamics << \Dynamics >>
    \new Staff = "LH" << \clef bass   \key ees \major \time 4/4 \LH >>
  >>
  \layout {
    \context {
      \Score
      scriptDefinitions = #my-script-alist
      \override MetronomeMark.font-size = -1
      \override Script.stencil =  % default accent too large
      #(lambda (grob)
         (let ((script (ly:grob-property grob 'script-stencil)))
           (if (equal? script '(feta . ("sforzato" . "sforzato")))
               (ly:stencil-scale (ly:script-interface::print grob) 0.75 0.75)
               (ly:script-interface::print grob))))
      % extent estimators, DON'T BE NAUGHTY
      \override DynamicText.Y-extent =
      #(ly:make-unpure-pure-container ly:grob::stencil-height '(-0 . 0))
      \override Stem.Y-extent = % DIE!!! DIE!!! DIE!!!
      #(ly:make-unpure-pure-container ly:stem::height '(-0 . 0))
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
    \tempo 4 = 72
    \context {
      \Score
      midiInstrument = "acoustic grand"
      midiChannelMapping = #'voice
      %dynamicAbsoluteVolumeFunction = #myMidiVolume
    }
  }
}

