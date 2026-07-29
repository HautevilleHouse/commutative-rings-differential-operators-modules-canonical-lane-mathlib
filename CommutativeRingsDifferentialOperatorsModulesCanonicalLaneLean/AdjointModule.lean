import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.HolonomicModule

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure AdjointModule (R : Type u) [CommRing R] (n : ℕ) (P : PDESystem R n) extends HolonomicModule R n P where
  adjointAction : DifferentialOperator R → (M : PDEModule R n P) → (M → R)
  adjointRelation : Prop
  integrationByParts : Prop

structure AdjointModuleEvidence {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (A : AdjointModule R n P) where
  adjointRelationClosed : A.adjointRelation
  integrationByPartsClosed : A.integrationByParts

def AdjointModuleClosed {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (A : AdjointModule R n P) : Prop :=
  A.adjointRelation ∧ A.integrationByParts

theorem adjoint_module_closed_from_evidence {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (A : AdjointModule R n P) (E : AdjointModuleEvidence A) : AdjointModuleClosed A := by
  exact And.intro E.adjointRelationClosed E.integrationByPartsClosed

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse