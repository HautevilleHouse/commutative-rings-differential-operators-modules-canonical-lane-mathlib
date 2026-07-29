import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.PDEModule

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure HolonomicModule (R : Type u) [CommRing R] (n : ℕ) (P : PDESystem R n) extends PDEModule R n P where
  finiteLength : Prop
  bernsteinInequality : Prop
  characteristicVariety : AlgebraicGeometry.Scheme
  dimensionBound : ℕ
  dimensionBoundSatisfied : dimensionBound ≤ n

structure HolonomicModuleEvidence {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (H : HolonomicModule R n P) where
  finiteLengthClosed : H.finiteLength
  bernsteinInequalityClosed : H.bernsteinInequality
  dimensionBoundSatisfiedClosed : H.dimensionBoundSatisfied

def HolonomicModuleClosed {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (H : HolonomicModule R n P) : Prop :=
  H.finiteLength ∧ H.bernsteinInequality ∧ H.dimensionBoundSatisfied

theorem holonomic_module_closed_from_evidence {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (H : HolonomicModule R n P) (E : HolonomicModuleEvidence H) : HolonomicModuleClosed H := by
  exact And.intro E.finiteLengthClosed (And.intro E.bernsteinInequalityClosed E.dimensionBoundSatisfiedClosed)

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse