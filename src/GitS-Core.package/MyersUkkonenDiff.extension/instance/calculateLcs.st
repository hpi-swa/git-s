*GitS-Core-private-override
calculateLcs
	"I find one of the longest common subsequences of my the arguments. I assume that none of my arguments are empty. I return nil or an Array which represents a list. The first two elements are the matching line numbers, the last is the next node in the list or nil if there are no more elements. The list containts the longest common subsequence. I'm a modified version of the greedy lcs algorithm from the 6th page of 'An O(ND) Difference Algorithm and Its Variations (1986)' by Eugene W. Myers"

	| n m v lcss max |
	n := file1 size.
	m := file2 size.
	max := m + n.
	max = 0 ifTrue: [^ nil].
	v := Array new: 2 * max + 1.
	v at: max + 2 put: 0.
	lcss := Array new: 2 * max + 1.
	0 to: max do: [ :d |
		d negated to: d by: 2 do: [ :k |
			| index chain x y |
			(k + d = 0 or: [ k ~= d and: [ (v at: max + k ) < (v at: max + k + 2) ] ])
				ifTrue: [ 
					index := max + k + 2.
					x := v at: index ]
				ifFalse: [ 
					index := max + k.
					x := (v at: index) + 1 ].
			chain := lcss at: index.
			y := x - k.
			[ x < n and: [ y < m and: [ (file1 at: x + 1) = (file2 at: y + 1) ] ] ]
				whileTrue: [
					chain := { x := x + 1. y := y + 1. chain } ].
			(x >= n and: [ y >= m ]) ifTrue: [
				^chain ].
			v at: max + k + 1 put: x.
			lcss at: max + k + 1 put: chain ] ].
	self error