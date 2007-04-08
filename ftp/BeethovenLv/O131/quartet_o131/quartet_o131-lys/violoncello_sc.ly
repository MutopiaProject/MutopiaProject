\include "english.ly"
\include "defs.ly"

\include "1global.ly"
\include "1violoncello.ly"

\include "2global.ly"
\include "2violoncello.ly"

\include "3global.ly"
\include "3violoncello.ly"

\include "4global.ly"
\include "4violoncello.ly"

\include "5global.ly"
\include "5violoncello.ly"

\include "6global.ly"
\include "6violoncello.ly"

\include "7global.ly"
\include "7violoncello.ly"

\paper {
	raggedbottom = ##f
	raggedlastbottom = ##f
}

\header {
	instrument = "Violoncello"
}

mImyspacing = {
}

mIImyspacing = {
}

mIIImyspacing = {
}

mIVmyspacing = {
}

mVmyspacing = {
}

mVImyspacing = {
}

mVIImyspacing = {
}

\book {
	\header { \include "header.ly" }
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIbarlines
			\mImyspacing
			\new Voice { \mICello }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIIbarlines
			\mIImyspacing
			\new Voice { \mIICello }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIIIbarlines
			\mIIImyspacing
			\new Voice { \mIIICello }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIVbarlines
			\mIVmyspacing
			\new Voice { \mIVCello }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVbarlines
			\mVmyspacing
			\new Voice { \mVCello }
		>>
	}
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVIbarlines
			\mVImyspacing
			\new Voice { \mVICello }
		>>
	}
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVIIbarlines
			\mVIIkeychange
			\new Voice { \mVIICello }
		>>
	}
}
