\version "2.18.0"

\layout {
	\compressFullBarRests
}

\score{
\include \instrument
	\layout {
		\context {
			\Staff
			\override InstrumentName.stencil = ##f
		}
	}
\include \incmidi
	\header {
		piece = \pPiece
	}
}
