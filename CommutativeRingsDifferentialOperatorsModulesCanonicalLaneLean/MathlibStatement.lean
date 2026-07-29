import CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.FinalTheorem
import Mathlib.Algebra.Lie.Derivation

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

open scoped DifferentialOperator

theorem mathlib_derivation_law_available (R : Type) [CommRing R] :
    ∀ (D1 D2 : Derivation R R), D1.comp D2 - D2.comp D1 = D1.bracket D2 := by
  intro D1 D2
  exact LieModule.leibniz_lie D1 D2

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
