import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure BernsteinInequality (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  ringDimension : ℕ
  moduleLength : ℕ
  multiplicity : ℕ
  inequality : Prop
  inequalityTerm : inequality

structure BernsteinInequalityPackage (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  bernstein : BernsteinInequality R M
  multiplicityBound : ℕ
  multiplicityBoundValid : multiplicityBound = bernstein.multiplicity + 1

structure BernsteinInequalityEvidence (B : BernsteinInequalityPackage R M) where
  inequalityClosed : B.bernstein.inequality
  multiplicityBoundClosed : B.multiplicityBoundValid

def BernsteinInequalityClosed (B : BernsteinInequalityPackage R M) : Prop :=
  B.bernstein.inequality ∧ B.multiplicityBoundValid

theorem bernstein_inequality_closed_from_evidence (B : BernsteinInequalityPackage R M) (E : BernsteinInequalityEvidence B) : BernsteinInequalityClosed B := by
  exact And.intro E.inequalityClosed E.multiplicityBoundClosed

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse