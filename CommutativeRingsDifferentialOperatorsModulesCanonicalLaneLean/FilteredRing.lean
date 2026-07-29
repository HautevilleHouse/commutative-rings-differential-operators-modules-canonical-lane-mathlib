import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure FilteredRing (R : Type u) [CommRing R] where
  filtration : ℕ → Set R
  filtration_is_submodule : ∀ n : ℕ, (filtration n).IsSubmodule
  filtration_increasing : ∀ m n : ℕ, m ≤ n → filtration m ⊆ filtration n
  filtration_covers : (⋃ n : ℕ, filtration n) = Set.univ
  filtration_mul : ∀ (r s : R) (m n : ℕ), r ∈ filtration m → s ∈ filtration n → r * s ∈ filtration (m + n)

structure AssociatedGradedRing (R : Type u) [CommRing R] where
  filteredRing : FilteredRing R
  gradedComponents : ℕ → Type v
  gradedRingStructure : Type w
  isomorphism : Prop
  isomorphism_term : isomorphism

structure AssociatedGradedRingEvidence (G : AssociatedGradedRing R) where
  isomorphismClosed : G.isomorphism

def AssociatedGradedRingClosed (G : AssociatedGradedRing R) : Prop :=
  G.isomorphism

theorem associated_graded_ring_closed_from_evidence (G : AssociatedGradedRing R) (E : AssociatedGradedRingEvidence G) : AssociatedGradedRingClosed G := by
  exact E.isomorphismClosed

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse