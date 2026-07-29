import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.DifferentialOperatorRing

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialModule (R : Type u) [CommRing R] (D : DifferentialOperatorRing R) (M : Type v) [AddCommGroup M] [Module R M] where
  action : D.carrier → M → M
  moduleStructure : Module D.carrier M := by
    refine { smul := action, .. } ; sorry
  actionLinear : ∀ (P : D.carrier) (x y : M), action P (x + y) = action P x + action P y
  actionSMul : ∀ (P : D.carrier) (r : R) (x : M), action P (r • x) = r • action P x
  actionAssoc : ∀ (P Q : D.carrier) (x : M), action (D.diffOpComposition P Q) x = action P (action Q x)
  derivationAction : ∀ (r : R) (x : M), action (D.derivation r) x = r • x

def DifferentialModuleClosed (R : Type u) [CommRing R] (D : DifferentialOperatorRing R) (M : Type v) [AddCommGroup M] [Module R M] (DM : DifferentialModule R D M) : Prop :=
  DM.actionLinear ∧ DM.actionSMul ∧ DM.actionAssoc ∧ DM.derivationAction

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
