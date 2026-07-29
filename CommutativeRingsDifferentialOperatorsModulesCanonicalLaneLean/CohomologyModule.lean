import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure CohomologyModule (R : Type u) [CommRing R] (A : Type v) [AddCommGroup A] [Module R A] where
  complex : Type w
  differentials : ℕ → complex → complex
  cohomologyGroups : ℕ → Type x
  zeroDifferential : ∀ n : ℕ, (differentials (n+1)) ∘ (differentials n) = 0
  cohomologyDefined : ∀ n : ℕ, cohomologyGroups n = (kernel (differentials n)) / (image (differentials (n-1)))
  finiteness : Prop
  vanishingCondition : ℕ → Prop

structure CohomologyModuleEvidence (C : CohomologyModule R A) where
  zeroDifferentialClosed : C.zeroDifferential
  cohomologyDefinedClosed : C.cohomologyDefined
  finitenessClosed : C.finiteness

def CohomologyModuleClosed (C : CohomologyModule R A) : Prop :=
  C.zeroDifferential ∧ C.cohomologyDefined ∧ C.finiteness

theorem cohomology_module_closed_from_evidence (C : CohomologyModule R A) (E : CohomologyModuleEvidence C) : CohomologyModuleClosed C := by
  exact And.intro E.zeroDifferentialClosed (And.intro E.cohomologyDefinedClosed E.finitenessClosed)

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse