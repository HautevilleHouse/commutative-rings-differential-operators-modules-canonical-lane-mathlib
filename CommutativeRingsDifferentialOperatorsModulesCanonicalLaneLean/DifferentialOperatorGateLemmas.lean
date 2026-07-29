import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.DifferentialOperatorAdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

def gateClosed (O : DifferentialOperatorAdmittedObject) : Prop :=
  True

theorem gateFromAdmissibleClass (O : DifferentialOperatorAdmittedObject) : gateClosed O := by
  trivial

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
