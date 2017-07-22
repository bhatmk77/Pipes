// MKB

precedencegroup LeftFunctionalApply {
	associativity: left
	higherThan: AssignmentPrecedence
	lowerThan: TernaryPrecedence
}

infix operator |> : LeftFunctionalApply

@discardableResult
func |> <In, Out>(lhs: In, rhs: (In) throws -> Out) rethrows -> Out {
	return try rhs(lhs)
}

