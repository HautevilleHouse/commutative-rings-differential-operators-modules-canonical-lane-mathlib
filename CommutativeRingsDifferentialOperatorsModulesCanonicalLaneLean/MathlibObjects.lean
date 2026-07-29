import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure ModuleSpace where
  carrier : Type
  ring : Semiring carrier
  
structure AdmittedObject where
  space : ModuleSpace
  moduleOverRing : Prop
  differentialOperators : Prop
  holonomicCondition : Prop
  conclusion : holonomicCondition

structure ModuleEndgameState where
  object : AdmittedObject

def ModuleWitnessClosed (O : AdmittedObject) : Prop :=
  O.holonomicCondition

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse