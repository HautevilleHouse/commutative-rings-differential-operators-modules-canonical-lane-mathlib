import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse