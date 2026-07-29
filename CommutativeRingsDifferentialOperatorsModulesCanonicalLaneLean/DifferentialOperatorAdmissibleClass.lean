import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.ConnectionModule

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialOperatorAdmittedObject where
  R : Type u
  [commRingR : CommRing R]
  D : DifferentialOperatorRing R
  M : Type v
  [addCommGroupM : AddCommGroup M]
  [moduleRM : Module R M]
  DM : DifferentialModule R D M
  conn : ConnectionModule R D M DM

def differentialOperatorBridgeClosed (O : DifferentialOperatorAdmittedObject) : Prop :=
  DifferentialModuleClosed O.R O.D O.M O.DM ∧ ConnectionModuleClosed O.R O.D O.M O.DM O.conn

theorem differentialOperatorBridgeClosedFromEvidence (O : DifferentialOperatorAdmittedObject) :
  differentialOperatorBridgeClosed O := by
  admit

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
