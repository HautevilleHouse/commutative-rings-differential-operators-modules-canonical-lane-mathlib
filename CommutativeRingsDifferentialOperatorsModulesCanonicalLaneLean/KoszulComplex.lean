import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure KoszulComplex (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  sequence : List R
  chainComplex : Type w
  differential : ℕ → chainComplex → chainComplex
  homology : ℕ → Type x
  exactnessCondition : ∀ n : ℕ, (differential (n+1)) ∘ (differential n) = 0
  homologyDefined : ∀ n : ℕ, homology n = (kernel (differential n)) / (image (differential (n+1)))
  depthRelation : Prop
  depthRelationProof : depthRelation

structure KoszulComplexEvidence (K : KoszulComplex R M) where
  exactnessConditionClosed : K.exactnessCondition
  homologyDefinedClosed : K.homologyDefined
  depthRelationClosed : K.depthRelation

def KoszulComplexClosed (K : KoszulComplex R M) : Prop :=
  K.exactnessCondition ∧ K.homologyDefined ∧ K.depthRelation

theorem koszul_complex_closed_from_evidence (K : KoszulComplex R M) (E : KoszulComplexEvidence K) : KoszulComplexClosed K := by
  exact And.intro E.exactnessConditionClosed (And.intro E.homologyDefinedClosed E.depthRelationClosed)

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse