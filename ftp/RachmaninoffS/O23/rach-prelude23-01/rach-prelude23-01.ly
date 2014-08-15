%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 1
%%--------------------------------------------------------------------

%%%%%%%% Notes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% * This piece is a showcase of how #braindead lilypond is regarding
%   grace notes. (https://code.google.com/p/lilypond/issues/detail?id=34)
%   - Most are shortened to avoid insufficient note length stealing from
%     normal notes
%   - Starting a voice with grace note mess up most voice/staff properties,
%     so the properties need to be specified again after grace notes
%   - Bar 24,26,28 grace notes are done as cadenza using real notes, then
%     apply grace note visual style on them. Otherwise they have to be
%     scaleDuration'ed to such extreme as being undistinguishable mess,
%     or in case they are not scaled, left / right hand midi channel will
%     be out of sync!
%
% * In bar 33 the Metronome mark aligns with grace space paddings

%%%%%%%% Known Problems %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% * Some artifacts need tweaking to look better, e.g.
%   - Shortened hairpins due to invisible dynamic text
%   - Last hairpin at bar 36 (should start at stem, not notehead left bound)
%
% * Out of sync with beat positions in MIDI. This is a compromise where
%   better auditory experience is more desirable.

%%%%%%%% Editorial Notes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% * Bar 24 grace note slur: If upward slur is chosen (following convention),
%   slur will look awkward. Following Gutheil / Muzyka edition which looks
%   better. However, upward slur in bar 26 and 28 grace note feels more
%   natural.
%
% * Bar 29 left hand 2nd slur: Gutheil edition ends the slur at C♯,
%   while Muzyka ends at G note after it. Agree with Gutheil edition here
%   since the slurs in previous bars are mainly for semiquaver melodies.


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

    ragged-last = ##f
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    title = "Prelude I"
    composer = "Sergei Rachmaninoff (1873-1943)"
    opus = "Op. 23, No 1"
    date = "1903"
    style = "Romantic"
    source = "IMSLP - Muzyka and Gutheil editions"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    maintainer = "Abel Cheung"
    maintainerEmail = "abelcheung at gmail dot com"
    mutopiatitle = "Prelude Op. 23, No. 1"
    mutopiaopus = "Op. 23"
    mutopiacomposer = "RachmaninoffS"
    mutopiainstrument = "Piano"

    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
 footer = "Mutopia-2014/08/15-1958"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions and shorthands
cb = \clef bass
ct = \clef treble
oD = \once \omit DynamicText
oH = \once \omit Hairpin

subBeam = {
  \once \set subdivideBeams = ##t
  \once \set baseMoment = #(ly:make-moment 1 8)
}

barLinePad = { % some dynamics sticking too close to bar lines
  \once \override Staff.BarLine.space-alist.next-note = #'(semi-fixed-space . 2.0)
}

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


%-------- The following funcs are for slur shape tuning

#(define (change-slur-offset grob Y-one Y-two Y-three Y-four)
   (let* ((points (ly:slur::calc-control-points grob))
          (pt-one (first points))
          (pt-two (second points))
          (pt-three (third points))
          (pt-four (fourth points)))
     (set-cdr! pt-one   (+ Y-one   (cdr pt-one  )))
     (set-cdr! pt-two   (+ Y-two   (cdr pt-two  )))
     (set-cdr! pt-three (+ Y-three (cdr pt-three)))
     (set-cdr! pt-four  (+ Y-four  (cdr pt-four )))
     (ly:grob-set-property! grob 'control-points
       (list pt-one pt-two pt-three pt-four))))

% broken slurs/ties are often ugly with wrong Y-offset, so attempt
% to cure *only* if curve is broken across systems
#(define (shape-slur-if-broken grob part Y-one Y-two Y-three Y-four)
   (if (eq? 'Slur (assoc-ref (ly:grob-property grob 'meta) 'name))
       (let* ((orig (ly:grob-original grob))
              (siblings (if (ly:grob? orig)
                            (ly:spanner-broken-into orig) '())))
         (if (>= (length siblings) 2)
             (cond
              ((eq? part 'first)
               (change-slur-offset (first siblings)
                 Y-one Y-two Y-three Y-four))
              ((eq? part 'second)
               (change-slur-offset (second siblings)
                 Y-one Y-two Y-three Y-four)))))))


%----------- function for adding articulation to all notes

#(define tied? #f)

#(define (check-tie e)
   (if (eq? 'TieEvent (ly:music-property e 'name))
       (set! tied? #t)))

#(define (add-articulation articulation m)
   (let ((ar (make-music 'ArticulationEvent 'articulation-type articulation)))
     (for-some-music
      (lambda (evt)
        (let ((name    (ly:music-property evt 'name))
              (es      (ly:music-property evt 'elements))
              (ar-list (ly:music-property evt 'articulations)))
          (case name
            ((EventChord)
             (if (and (not tied?)
                      (or (ly:duration? (ly:music-property evt 'duration))
                          (memq 'NoteEvent
                            (map (lambda(x) (ly:music-property x 'name)) es))))
                 (ly:music-set-property! evt 'elements (append es (list ar))))
             (set! tied? #f)
             (for-each check-tie es))
            ((NoteEvent)
             (if (not tied?)
                 (ly:music-set-property! evt 'articulations
                   (append ar-list (list ar))))
             (set! tied? #f)
             (for-each check-tie ar-list))
            ((TieEvent) (set! tied? #t))
            ((GraceMusic) #t)
            (else #f))))
      m)))

addArticulation =
#(define-music-function (parser location articulation mus)
   (string? ly:music?)
   "Add same articulation to all notes except rests, grace and tied notes"
   (set! tied? #f)
   (add-articulation articulation mus)
   mus)


% Emulate grace note, for bar 24
% http://lists.gnu.org/archive/html/lilypond-user/2013-05/msg00415.html
graceStyle = \applyContext
#(lambda (context)
   (map (lambda (x)
          (ly:context-pushpop-property
           context (cadr x) (caddr x) (cadddr x)))
     (ly:context-property context 'graceSettings)))

% unapply grace note style
noGraceStyle = \applyContext
#(lambda (context)
   (map (lambda (x)
          (ly:context-pushpop-property
           context (cadr x) (caddr x)))
     (ly:context-property context 'graceSettings)))


% Pretend to be grace note in bar 24.
% Need to be place before right hand in order to use #skip-of-length
LHgraceA = {
  \graceStyle
  % don't cross stem of ending note
  \shape #'((0 . 0) (-0.35 . -0.3) (-0.7 . -0.6) (-1.05 . -1)) Slur
  % EDITORIAL NOTE: Downward slur in Gutheil / Muzyka edition looks nicer
  \absolute \scaleDurations 2/5 { \oD fis,,16\ff[_( fis, cis a cis'] }
  \noGraceStyle
}

LHgraceB = {
  \graceStyle \once \override Slur.positions = #'(0 . 0)
  \absolute \scaleDurations 1/3 { \oD d,16\p[^( a, fis] }
  \noGraceStyle
}

LHgraceC = {
  \graceStyle \once \override Slur.positions = #'(0 . 0)
  \absolute \scaleDurations 1/3 { \oD a,16\mf[^( fis cis'] }
  \noGraceStyle
}

%-------- Right Hand parts

RHone = \relative c'' { % bar 21-23
  \temporary \omit DynamicText
  r4 \ct <d d'>2--\mf \ct <dis dis'>4-- |
  r4 \ct <e e'>4-- r2 |
  \ct <g g'>2->\f r4 \ct <gis gis'>8->\ff q16-> q-> |
  \revert DynamicText.stencil
}

RHtwo = \relative c { % bar 21-23
  \temporary \omit DynamicText
  b2--\f \cb a--\mf |
  \cb gis4.-- \cb \tuplet 3/2 { gis16\f^( g gis } g2->) |
  r4 r8 \cb fis8->( eis2->) |
  \revert DynamicText.stencil
}

RH = \relative c'' {
  % invisible bar to cope with left hand grace note, see start of left hand portion
  \partial 16 \afterGrace s16 { s4*2/3 } \bar ""

  R1 |
  r4 fis2(-- -\tweak X-offset -4 ^\mf e4^\> |
  \oD d1)\pp |
  r4
  \once \override Slur.after-line-breaking =
  #(lambda (grob) (shape-slur-if-broken grob 'first 0 0 1 1))
  \oD d2(\mf-- bis8.-- cis16-- |
  cis2.)-- \oD b4\p-- |

  \barNumberCheck 6
  \oD a1\pp~ |
  a4 r r2 |
  r4
  \once \override Slur.after-line-breaking =
  #(lambda (grob) (shape-slur-if-broken grob 'first 0 0 1 1))
  fis'( -\tweak X-offset -4 ^\mf e4. cis8^\> |
  \oD d1)\pp |
  r4 \oD d2\mf( bis4)-- |

  \barNumberCheck 11
  \oH cis2.\>~ cis8 cis8-- |
  \addArticulation "tenuto" {
    \oD cis1\pp~ |
    cis4 r
    cis'4. -\tweak X-offset -4.5 ^\mf( a8) |
    a2 \cb cis,,4. a8 |
    a2 \ct
    \shape #'((0.5 . 0)(0.5 . 0)(-0.5 . 0)(-0.5 . 0)) Tie
    cis''4~\( \tuplet 3/2 { cis8 cis, gis' } |
    a2\) \cb a,,4. fis8 |
    fis2 \ct <fis'' fis'>4. <d d'>8 |
    q2 \cb fis,,4. d8 |
    d2 \ct <fis'' fis'>8 fis~
  }
  \subBeam fis16
  \once \override Slur.positions = #'(0 . 0)
  \shape #'((0 . 0)(0 . 1)(0 . 0.5)(0 . 0.5)) Slur
  fis16( \tuplet 3/2 { <cis cis'> fis <cis cis'> } |
  <d d'>2--) \cb d,,4.-- b8-- |

  % bar 21-23
  <<
    { \voiceOne \RHone }
    \new Voice
    { \voiceTwo \RHtwo }
  >>

  \barNumberCheck 24
  \oneVoice
  \temporary \omit DynamicText

  \cadenzaOn #(skip-of-length LHgraceA) \cadenzaOff

  <gis'''='' gis'>2\ff-> \oH <fis fis'>->\>~ |
  <fis fis'>4 <e e'>2( <cis cis'>4 |

  \cadenzaOn #(skip-of-length LHgraceB) \cadenzaOff
  <c d fis d'>2.\p) <a a'>4( |
  <aes bes d bes'>2) r8 \oH <b d b'>4\< <b cis b'>8-- |

  \cadenzaOn #(skip-of-length LHgraceC) \cadenzaOff
  <b cis b'>2--\mf( <a fis' a>\mp) |
  r4 \oH <g b g'>2\>( <fis a fis'>4) |

  \barNumberCheck 30
  << { \oD fis'2.\p-- } \\ { \oD <fis, a>8\p } >>
  \addArticulation "tenuto" {
    e'4\p |
    d2. bis4\mp |
    \oH cis2\p\> a4.. fis16\pp |
  }
  \revert DynamicText.stencil

  \barNumberCheck 33
  <<
    \relative c {
      r4 r8 \cb cis8^\mf-- <cis fis,>4.-- cis8-- |
      \temporary \omit DynamicText
      cis[(\p^\<-3 b]\!-2
      % default fingering position doesn't look good
      \once \override Fingering.avoid-slur = #'ignore
      \once \override Fingering.extra-offset = #'(-0.5 . -1.5)
      fis'[^\>-4 e])\p b(^\< fis'\mf a^\> gis\p |
      fis1--) |
      \revert DynamicText.stencil
    }
    \\
    \relative c' {
      \temporary \omit DynamicText
      fis1\pp |
      fis,,4\p a\mf b\p cis\mf |
      r16 \ct fis''\p^( <gis, b> fis'
      <a, bis>^\< fis' <a, cis> fis'\mf )
      <a, cis>^(^\> fis' <gis, b> fis'\p
      <a, bis> fis' <a, cis> fis') |
      \revert DynamicText.stencil
    }
  >>

  \barNumberCheck 36
  \temporary \omit DynamicText
  <a cis>\tenutoAlt(\p^\< fis' <b, d>\! fis'
  <bis, dis>--\mp^\> a' <cis, e>\! a')
  <d, eis>  (\mp^\> b' <d, fis>\! b')
  <fisis e >(\mp^\> cis' <eis, gis>\! cis') |

  <fis fis,>\pp( cis b gis a gis eis fis)
  cis'         ( a gis eis fis d bis cis) |
  fis          ( cis b gis a gis eis fis)

  <<
    \relative c' {
      s2 |
      \barNumberCheck 39
      r2 \addArticulation "tenuto" {
        \tuplet 3/2 { \oH \oD <fis a cis fis>8\pp\< q q }
        \oD q4\f~ |
        q2
      }
    } \\
    \relative c' {
      \voiceOne
      \oD cis'16\pp_( a fis e
      \subBeam fis d
      \tuplet 3/2 { b16 gis cis } |
      \barNumberCheck 39
      fis,1) |
      s2
    }
  >>

  \barNumberCheck 40
  \stemUp \oH \oD <fis a cis fis>4.\mf\>^- q8^- |
  \oD q1\pp-\tweak padding 0.5 \fermata ^-
}

%---------- Left Hand parts

LHone = \relative c' {
  \temporary \omit DynamicText
  <>\pp

  % staff or voice starting with grace note has been b0rked for ages
  \partial 16 \relative c, {
    \afterGrace s16 { \scaleDurations 2/3 { fis8[( cis'8] } }
  } \bar ""

  \oH a16\< fis' b, fis'\mp)
  \temporary \omit Hairpin
  \repeat unfold 5 { bis,\mp\>\tenutoAlt( fis' cis fis\pp) }
  \revert Hairpin.stencil
  \ct d\tenutoAlt( fis <cis e> fis)
  <cis e>\tenutoAlt( fis <cis eis> fis) |
  \repeat unfold 2 { <d eis>\tenutoAlt( g   <d fis> g)   }
  \oH <>\<
  \repeat unfold 2 { <d eis>\tenutoAlt( g   <d fis> g)   } |
  <>\mf
  \repeat unfold 3 { <d eis>\tenutoAlt( gis <d fis> a')  }
  eis      \tenutoAlt( gis fis a) |
  <fis a>  \tenutoAlt( b <eis, a> b')
  \oH <>\>
  <fis a>  \tenutoAlt( b <eis, a> b')
  <fis gis>\tenutoAlt( a <eis gis> a)
  fis      \tenutoAlt( gis eis gis) |

  \barNumberCheck 6
  fis\pp( gis eis fis e fis dis e
  d e cis d \cb bis cis b cis) |
  \grace { \scaleDurations 2/3 { fis,,8( cis' } }
  a'16^\< fis' b, fis')\mp
  \repeat unfold 3 { bis,\tenutoAlt(\mp^\> fis' cis fis\p) } |
  \repeat unfold 2 { bis,\tenutoAlt( fis' cis fis) }
  cis    \tenutoAlt( fis d fis) \ct
  <cis e>\tenutoAlt( fis <cis eis> g') |
  <>\pp
  \repeat unfold 2 { <d eis>\tenutoAlt( g   <d fis> g  ) }
  \oH <>\<
  \repeat unfold 2 { <d eis>\tenutoAlt( gis <d fis> gis) } |
  <>\mf
  \repeat unfold 3 { <d eis>\tenutoAlt( gis <d fis> a' ) }
  eis    \tenutoAlt( gis fis a) |

  \barNumberCheck 11
  <fis a>\tenutoAlt( b <eis, a> b')
  \oH <fis a>\>\tenutoAlt( b <eis, a> b')
  <fis a>\tenutoAlt( b <fis gis> a)
  gis    \tenutoAlt( a g gis) |
  a\pp( b gis a g a fis g eis fis e fis dis e d e) \cb |
  \grace { \scaleDurations 2/3 {  a,,8( e' } }
  \ct cis'16^\< a' d, a')\mp
  \repeat unfold 2 { dis,\mp^\>\tenutoAlt( a' e a\p) }
  e\mp^\>\tenutoAlt( a eis a\p) |

  \barNumberCheck 14
  eis\tenutoAlt( a fis a)
  <cis, fis>( a' <fis gis> b
  <fis gis>^\< b <e, a> cis'
  <fis, a> cis' <f, a> d'\mf |
  <fis, a cis>^\> dis' <e, a cis> e'\p)

  \revert DynamicText.stencil
  dis,\tenutoAlt^\p ( a' e a )
  dis,\tenutoAlt( a' e a)
  e   \tenutoAlt( a eis a) |
  eis\tenutoAlt( a fis a)
}

LHtwo = \relative c {
  \partial 16 s16 |
  fis8 gis a4 a a |
  ais ais ais ais |
  b b b b |
  bis bis bis d |
  cis cis cis cis |

  \barNumberCheck 6
  d8( a cis b fis a <dis, fis> <d fis>) |
  fis8[ gis] a4 a a |
  ais ais ais ais |
  b b b b |
  bis bis bis d |

  \barNumberCheck 11
  cis-- d-- dis-- e-- |
  fis8( cis e d a cis fis, <f a>) |
  a b cis4 cis cis |
  cis r r2 |
  r4 cis cis cis |

  cis
}

LHthree = \relative c'' {

  \barNumberCheck 24
  \temporary \omit DynamicText

  \cadenzaOn \LHgraceA \cadenzaOff
  \ct a8)(\ff b bis cis) fis,( g gis a) |
  \cb \oH cis,\>[( dis] \ct e[ eis] fis g gis a) \cb |

  \cadenzaOn \LHgraceB \cadenzaOff
  d,8)( e f fis) a,( b c cis) |

  \barNumberCheck 27
  \once \override Slur.positions = #'(0 . 0)
  d16\tenutoAlt ( aes ees'-- f, e'-- d f\tenutoAlt aes,
  \ct \oH eis'--\< <b d> fis'-- <b, d>
  fisis'-- <b, cis> gis'-- <b, cis> ) \cb |

  \cadenzaOn \LHgraceC \cadenzaOff
  \oH gis'8)(\> fis eis fis\mp bis, cis) a( b) |
  bis16\p( fis cis') cis,
  % EDITORIAL NOTE: Follow Gutheil edition for 2nd left hand slur (end at C♯)
  cis'( d, d' g, e' b cis) g
  d'( fis, dis') a |

  \barNumberCheck 30
  \repeat unfold 2 { bis\tenutoAlt( fis' cis fis) } \ct
  cis    \tenutoAlt( fis d fis       )
  <cis e>\tenutoAlt( fis <cis eis> g') |
  <d eis>\tenutoAlt( g <d fis> g     )
  \oH <d eis>\tenutoAlt\<( gis <d fis> gis )
  <d eis>\tenutoAlt( gis <d fis>\mp a'  )
  \oH eis\> \tenutoAlt( gis fis a\p     ) |
  \revert DynamicText.stencil
}

LHfour = \relative c'' {
  \temporary \omit DynamicText

  % padding for "grace notes"
  \cadenzaOn #(skip-of-length LHgraceA) \cadenzaOff

  \barNumberCheck 24
  a16\ff <a, cis> b' q bis q cis q
  fis, q g q gis q a q |
  \oH cis,\mp\> a dis fis, e' cis eis a,
  fis' cis g' a, gis' cis, a' fis, |

  \cadenzaOn #(skip-of-length LHgraceB) \cadenzaOff
  d'\pp a e' c f a, fis' fis, a fis b d, c' fis, cis' a |

  \barNumberCheck 27
  d8\mp[ ees] e[ f] \autoBeamOff
  \oH eis\< fis fisis gis\mf \autoBeamOn |

  \cadenzaOn #(skip-of-length LHgraceC) \cadenzaOff
  \oH gis16\pp <fis, cis'> fis' q eis q fis q
  bis, fis cis' fis, a fis b cis, |
  bis'8\mf[ \oH cis\>] \autoBeamOff cis d e[ cis] d dis\p \autoBeamOn |

  \barNumberCheck 30
  \once \stemUp \acciaccatura cis,8 a'4 a ais ais |
  b b bis d |

  \revert DynamicText.stencil
}

LHfive = \relative c { % bar 24-31
  \temporary \omit DynamicText

  % padding for "grace notes"
  \cadenzaOn #(skip-of-length LHgraceA) \cadenzaOff

  s1*2 |
  \cadenzaOn #(skip-of-length LHgraceB) \cadenzaOff
  s1 |

  \stemDown
  % Default horiz shift for 3rd voice either is unnecessary or
  % doesn't work (some notes would overlap), so do it manually
  \once \override NoteColumn.force-hshift = #0
  bes2\p
  \temporary \override NoteColumn.force-hshift = #0.8
  a'4\mp_( gis\mf) |
  \revert NoteColumn.force-hshift

  \cadenzaOn #(skip-of-length LHgraceC) \cadenzaOff
  s1 |
  \override NoteColumn.ignore-collision = ##t
  a,4\mp b2 bis4 |
  s1*2 |
  \revert DynamicText.stencil
}

LH = {
  % bar 1-15
  <<
    { \voiceOne \LHone }
    \new Voice
    { \voiceTwo \LHtwo }
  >>

  \barNumberCheck 16
  \temporary \omit DynamicText
  \oneVoice \relative c' {
    <cis eis>16\p( a' <d, fis> b'
    <dis, fis>^\< b' <d, f> bis' <d, fis> bis' <cis, fis a> cis'\mf |
    <e, fis a>^\> cis' <d, fis a> d'\mp)
    <gis,, d' fis>\tenutoAlt( gis' <a, d fis> a')
    \oH <>\<
    \repeat unfold 2 { <a, d fis>    \tenutoAlt( a' <ais, cis fis> ais') } |
    \repeat unfold 2 { <ais, cis fis>\tenutoAlt( ais' <b, d fis> b') }
    <b, d fis>( b' <cis, e fis> cis'
    <b, d fis> cis' <bes, e g> d'\mf |

    \barNumberCheck 19
    \oH <a, e' g>\> d' <d, fis a> d'\mp)
    <gis,, d' fis>\tenutoAlt( gis' <a, d fis> a')
    \oH <>\<
    \repeat unfold 2 { <a, d fis>    \tenutoAlt( a' <ais, cis fis> ais') } |
    \repeat unfold 2 { <ais, cis fis>\tenutoAlt( ais' <b, d fis> b') }
    <b, d fis>( b' <c, d fis> c'
    <c, d fis> c' <cis, d fis> cis' |

    <cis, g'>\f \oH cis'\> <d, g> d')
    <b, d fis>\mf  \tenutoAlt( b' <b, d   g> b')
    \oH <b, d g>\< \tenutoAlt( b' <b, dis g> b')
    <b, dis fis>   \tenutoAlt( b' <b, dis g> b') |

    \barNumberCheck 22
    <b, dis gis>\tenutoAlt( b' <b, e gis> b')
    <b, e g>    \tenutoAlt( b' <b, e gis> b')
    % FIXME too lazy to write a whole function just for fixing this slur
    \shape #'(((0 . 0) (1 . 0) (2 . 0) (3 . 0)) ()) Slur
    <f, b d>\f( e' q f q g q a |
    <b, d f> b' <c, f> c'
    \oH <cis, f>\< cis' <d, fis> d'
    <d, g> d' <d, gis> d'
    \tuplet 6/4 { <d, gis a>\ff d' <d, gis ais> d' <d, gis b> d') } |
  } \cb
  \revert DynamicText.stencil

  \barNumberCheck 24
  <<
    { \voiceOne \LHthree }
    \new Voice { \voiceTwo \LHfour }
    % Not following lilypond recommendation on voice order, it ends up doing more work since
    % notes in 3rd (middle) voice are horizontally shifted. We want the bottom ones shifted instead
    \new Voice { \voiceThree \LHfive }
  >>

  \oneVoice \relative c'' {
    \temporary \omit DynamicText

    \barNumberCheck 32
    \oH <a fis cis>\p\>( b <gis e> a
    <fis d> gis <e a,> fis
    <dis b> e <d fis,> e \cb
    <cis eis,> d <b cis,> cis) |

    \grace { \scaleDurations 2/3 { fis,,8\pp^( cis' } }
    <fis a>16 fis' <gis, b> fis'
    <a, bis>^\< fis' <a, cis> fis')\mp
    <a, cis>( fis'^\> <gis, b> fis'\pp
    <a, bis>^\< fis' <a, cis> fis')\p |

    \barNumberCheck 34
    \ct <a, cis>(^\< fis' <b, d>\mf fis'
    <bis, dis>^\> a' <cis, e>\p a')
    <d, eis>(^\< b' <d, fis>\mf b'
    <e, g>^\> cis' <eis, gis>\p cis') |
    <cis, fis a>16 r r8 r \cb
    cis--\mf <cis fis,>4.-- cis8-- |
    \revert DynamicText.stencil
    <<
      {
        \temporary \omit DynamicText
        cis\tenutoAlt\mp[(\< b]\!
        a--[\mf\> e'])\!
        \ct b\p\tenutoAlt[( fis']) cis\tenutoAlt[( gis'])
        \revert DynamicText.stencil
      } \\
      \relative c { fis4 a b cis }
    >>

    \barNumberCheck 37
    \oD <fis a>2.\pp~ <fis a>16 d( bis cis) |
    \cb fis,( cis b gis a gis eis fis)
    <<
      \relative c, {
        s2 | r2
        \once \override Beam.positions = #'(4.5 . 4.5) % align beamed and unbeamed notes
        \temporary \override Script.direction = #DOWN
        \addArticulation "tenuto" {
          \tuplet 3/2 { \oH \oD <fis cis' fis a>8\pp q q }
          \oD q4\f~ |
          q2
        }
      } \\
      \relative c, {
        \voiceOne
        \oD cis'16\pp_( a fis e
        \subBeam fis d
        \tuplet 3/2 { b16 gis cis } |
        fis,1) |
        s2
      }
    >>
    \oH \oD <fis cis' fis a>4.\mf\>-- q8-- |
    \oD q1--\fermata\pp
  }
}

%------------ Dynamics

Dynamics = {
  \tempo \markup \huge "Largo." 4 = 58
  \partial 16 s16 |
  % bar 1-10
  \set Score.tempoHideNote = ##t
  \override Score.MetronomeMark.font-size = 1
  s16 -\tweak X-offset -4 \pp\< s8 s16\!
  \repeat unfold 5 { s8\> s8\! }
  s2 |
  s2\pp s4..\< s16\! |
  s1\mf |
  s4 s2.\dim |
  \barLinePad s2.\pp
  \tempo 4 = 55 s4 |
  \tempo 4 = 58 s1*2 |
  s2\pp s4..\< s16\! |
  s1\mf |

  \barNumberCheck 11
  s4 s2.\dim |
  \barLinePad s2.\pp
  \tempo 4 = 55 s4 |
  \tempo 4 = 58 s1*4 |
  s2 s2\cresc |
  s2\! s2\< |
  s8\> s8\! s4 s2\cresc |
  s2\! s2\< |

  \barNumberCheck 21
  s8.\f\> s16\! s4 s2\cresc |
  s2 s2-\tweak X-offset -2 -\tweak extra-offset #'(2 . -1) \f |
  s4 s2\cresc
  \tempo 4 = 52 s4 |
  \tempo 4 = 58

  % padding for "grace notes"
  \cadenzaOn #(skip-of-length LHgraceA) \cadenzaOff

  % allow LilyPond decide potential line breaks within bars
  % otherwise impossible to achieve ragged-* settings
  s2\ff \bar "" s2 |
  s1\dim |

  \cadenzaOn #(skip-of-length LHgraceB) \cadenzaOff
  s1\p |
  s2 \bar "" s4.\< s8\! |

  \cadenzaOn #(skip-of-length LHgraceC) \cadenzaOff
  s4.\> s8\! \bar "" s2 |
  s4 s2.\dim |

  \barNumberCheck 30
  s1 -\tweak X-offset -3 \p |
  s4 s4.\< s8\! s4\> |
  s4-\tweak extra-offset #'(0 . -1) \p s8\dim
  \tempo "rit." 4 = 54 s4.
  \tempo 4 = 50 s8
  \tempo 4 = 46 s8 |
  \tempo "a tempo" 4 = 58
  \grace { s4*2/3 } %%%% Lilypond is retarded
  s4\pp s2. |
  s1*2 |
  s2
  \tempo 4 = 55 s2 |
  \tempo 4 = 52
  \barLinePad s8-\tweak extra-offset #'(0 . -1.5) \pp
  \tempo 4 = 54 s2.. |
  s2.
  \tempo "rit." 4 = 50 s8
  \tempo 4 = 42 s8 |
  \tempo 4 = 48 s2 s4\< s4\f |
  \tempo 4 = 44 s2\dim
  \tempo 4 = 40 s4.\> s8\! |
  \tempo 4 = 30 s1\pp \bar "|."
}

%-------Typeset music and generate midi
\score {
  \context PianoStaff \with {
    \accidentalStyle PianoStaff.piano
  } <<
    \new Staff << \ct \key fis \minor \time 4/4 \RH >>
    \new Dynamics << \Dynamics >>
    \new Staff << \cb   \key fis \minor \time 4/4 \LH >>
  >>
  \layout {
    \context {
      \Score
      scriptDefinitions = #my-script-alist
      \omit TupletBracket
      \override TupletBracket.avoid-slur = #'ignore
      \override DynamicTextSpanner.font-size = 0
      \override DynamicTextSpanner.style = #'none
      \override Hairpin.height = 0.5
      \override MetronomeMark.padding = 2
    }
  }
  \midi {
    \tempo 4 = 58
    \context {
      \Score
      midiInstrument = "acoustic grand"
      %dynamicAbsoluteVolumeFunction = #myMidiVolume
    }
  }
}
