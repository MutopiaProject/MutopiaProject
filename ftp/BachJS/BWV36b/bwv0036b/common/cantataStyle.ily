\paper {
  #(set-paper-size "letter")
  two-sided = ##t
  top-margin = 1.00\cm % 1.25
  bottom-margin = 1.25\cm % 1.5
  outer-margin = 1.5\cm
  inner-margin = 2.25\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  markup-system-spacing.minimum-distance = #10
  oddHeaderMarkup = \markup \fill-line {
    " "
    \on-the-fly #not-part-first-page \fromproperty #'header:instrument
    \override #'(font-name . "Linux Libertine O")
    \fontsize #5
    \on-the-fly #print-page-number-check-first
      \fromproperty #'page:page-number-string
  }
  evenHeaderMarkup = \markup \fill-line {
    \override #'(font-name . "Linux Libertine O")
    \fontsize #5
    \on-the-fly #print-page-number-check-first
      \fromproperty #'page:page-number-string
    \on-the-fly #not-part-first-page \fromproperty #'header:instrument
    " "
  }
  oddFooterMarkup = \markup {
    \on-the-fly #part-first-page { \vspace #1 \fill-line { " "
      \fromproperty #'header:copyright " "
    } }
  }
  evenFooterMarkup = \oddFooterMarkup
  scoreTitleMarkup = \markup {
    \hspace #12
    \override #'(font-name . "Linux Libertine O Semibold")
    \fontsize #5
    \fromproperty #'header:piece
  }
}

% This markup function is required because the instrumentName font-name must
% be reset when dealing with incipits (I don't know why).
markupInstrumentName =
#(define-scheme-function
   (parser location text)
   (markup?)
   #{ \markup{
     \override #'(font-name . "Linux Libertine O Bold")
     #text }
   #} )

tacet =
#(define-scheme-function
   (parser location title instInfo)
   (string? string?)
   #{ \markup {
        \hspace #12.0
        \override #'(font-name . "Linux Libertine O Semibold")
        \left-column {
          \fontsize #5 #title
          \vspace #0.25
          \line { \hspace #4.0 \fontsize #4 \smallCaps #instInfo }
        }
      }
   #} )

\layout {
  \context {
    \Lyrics
    \override LyricText #'font-size = #1
  }
  \context {
    \Staff
    \override InstrumentName. #'font-name = "Linux Libertine O Bold"
    \override ClefModifier.extra-offset = #'(-0.3 . 0.07)
  }
  \context {
    \PianoStaff
    \override InstrumentName. #'font-name = "Linux Libertine O Bold"
    \consists #Span_stem_engraver
  }
  \context {
    \Score
      \override LyricText #'font-name = #"Linux Libertine O"
      \override BarNumber #'font-name = "Linux Libertine O Semibold Italic"
      \override TextScript #'font-name = "Linux Libertine O Italic"
      \override TextSpanner #'font-name = "Linux Libertine O Italic"
      \override DynamicTextSpanner #'font-name = "Linux Libertine O Italic"
      \override MultiMeasureRestText #'font-name = "Linux Libertine O Italic"
      \override MetronomeMark #'font-name = "Linux Libertine O Bold"
      \override TupletNumber #'font-name = "Linux Libertine O Bold Italic"
      \override FootnoteItem #'font-name = "Linux Libertine O"
      \override OttavaBracket #'font-name = "Linux Libertine O Semibold Italic"
      \override BarNumber.Y-offset = #3.5
      \override BarNumber.font-size = #2
      \override MetronomeMark.font-size = #2
  }
  \context {
    \Voice
    \override Script.padding = #0.5
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

