import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.DifferentialModule

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure ConnectionModule (R : Type u) [CommRing R] (D : DifferentialOperatorRing R) (M : Type v) [AddCommGroup M] [Module R M] (DM : DifferentialModule R D M) where
  connection : D.carrier → M → M
  connectionLinear : ∀ (P : D.carrier) (x y : M), connection P (x + y) = connection P x + connection P y
  connectionSMul : ∀ (P : D.carrier) (r : R) (x : M), connection P (r • x) = r • connection P x
  connectionDerivation : ∀ (r : R) (x : M), connection (D.derivation r) x = r • x
  connectionAction : ∀ (P : D.carrier) (x : M), connection P x = DM.action P x

def ConnectionModuleClosed (R : Type u) [CommRing R] (D : DifferentialOperatorRing R) (M : Type v) [AddCommGroup M] [Module R M] (DM : DifferentialModule R D M) (C : ConnectionModule R D M DM) : Prop :=
  C.connectionLinear ∧ C.connectionSMul ∧ C.connectionDerivation ∧ C.connectionAction

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
