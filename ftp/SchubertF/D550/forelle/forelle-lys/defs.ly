\version "2.16.0"
% Some useful macros

crescText = \markup { \italic "cresc." }

tupletNum = \override TupletNumber #'stencil = ##t

noTupletNum = \override TupletNumber #'stencil = ##f

tupletBracket = \override TupletBracket #'bracket-visibility = ##t

noTupletBracket = \override TupletBracket #'bracket-visibility = ##f
