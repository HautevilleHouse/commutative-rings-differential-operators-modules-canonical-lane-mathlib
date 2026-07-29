import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.DifferentialOperatorGateLemmas

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

def ConstrainedDifferentialOperatorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_operator_endgame (A : AdmissibleClass) :
  ConstrainedDifferentialOperatorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gateFromAdmissibleClass A)

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
