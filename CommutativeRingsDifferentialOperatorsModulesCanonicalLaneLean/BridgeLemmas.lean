import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ModuleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse