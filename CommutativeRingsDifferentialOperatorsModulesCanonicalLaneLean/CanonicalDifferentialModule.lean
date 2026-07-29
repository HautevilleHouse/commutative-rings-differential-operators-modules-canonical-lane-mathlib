import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure CanonicalDifferentialModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  differentialOperators : DifferentialOperatorAlgebra R M
  koszulComplex : KoszulComplex R M
  cohomologyModule : CohomologyModule R M
  bernsteinPackage : BernsteinInequalityPackage R M
  filteredRing : FilteredRing (DifferentialOperatorAlgebra R M)
  compatibility : Prop
  compatibilityTerm : compatibility

structure CanonicalDifferentialModuleEvidence (C : CanonicalDifferentialModule R M) where
  differentialOperatorsClosed : True
  koszulComplexClosed : KoszulComplexClosed C.koszulComplex
  cohomologyModuleClosed : CohomologyModuleClosed C.cohomologyModule
  bernsteinClosed : BernsteinInequalityClosed C.bernsteinPackage
  filteredRingClosed : True
  compatibilityClosed : C.compatibility

def CanonicalDifferentialModuleClosed (C : CanonicalDifferentialModule R M) : Prop :=
  KoszulComplexClosed C.koszulComplex ∧
  CohomologyModuleClosed C.cohomologyModule ∧
  BernsteinInequalityClosed C.bernsteinPackage ∧
  C.compatibility

theorem canonical_differential_module_closed_from_evidence (C : CanonicalDifferentialModule R M) (E : CanonicalDifferentialModuleEvidence C) : CanonicalDifferentialModuleClosed C := by
  exact And.intro E.koszulComplexClosed (And.intro E.cohomologyModuleClosed (And.intro E.bernsteinClosed E.compatibilityClosed))

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse