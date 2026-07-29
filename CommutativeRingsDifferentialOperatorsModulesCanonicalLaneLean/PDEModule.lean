import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.DiffOpRing

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure PDESystem (R : Type u) [CommRing R] (n : ℕ) where
  partialDerivatives : Fin n → DifferentialOperator R
  compatibility : Prop

structure PDEModule (R : Type u) [CommRing R] (n : ℕ) (P : PDESystem R n) where
  baseModule : Type v
  [addCommGroup : AddCommGroup baseModule]
  [module : Module R baseModule]
  action : Array (DifferentialOperator R) → baseModule → baseModule
  linearity : Prop
  leibniz : Prop

structure PDEModuleEvidence {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (M : PDEModule R n P) where
  linearityClosed : M.linearity
  leibnizClosed : M.leibniz

def PDEModuleClosed {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (M : PDEModule R n P) : Prop :=
  M.linearity ∧ M.leibniz

theorem pde_module_closed_from_evidence {R : Type u} [CommRing R] {n : ℕ} {P : PDESystem R n}
  (M : PDEModule R n P) (E : PDEModuleEvidence M) : PDEModuleClosed M := by
  exact And.intro E.linearityClosed E.leibnizClosed

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse