\version "2.18.2"

zu			= \markup { \bold {zu 2} }
cr			= \markup { \italic cresc. }
noDynamic	= \once \override DynamicText.transparent = ##t

trillnatural = \markup { \column { \fontsize #-4 { \musicglyph #"accidentals.natural" } \musicglyph #"scripts.trill" } }
trillflat = \markup { \column { \fontsize #-4 { \musicglyph #"accidentals.flat" } \musicglyph #"scripts.trill" } }
trillsharp = \markup { \column { \fontsize #-4 { \musicglyph #"accidentals.sharp" } \musicglyph #"scripts.trill" } }
