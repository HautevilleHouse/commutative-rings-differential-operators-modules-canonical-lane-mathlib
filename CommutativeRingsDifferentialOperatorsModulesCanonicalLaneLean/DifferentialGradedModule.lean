import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialGradedModulePackage where
  gradedRing : GradedRing ℕ
  differential : ℤ → GradedOperator gradedRing
  gradedModule : GradedModule gradedRing
  differentialSquareZero : Prop
  leibnizRule : Prop
  homologyCalculated : Prop
  spectralSequenceObtained : Prop

structure DifferentialGradedModuleEvidence (D : DifferentialGradedModulePackage) where
  differentialSquareZeroClosed : D.differentialSquareZero
  leibnizRuleClosed : D.leibnizRule
  homologyCalculatedClosed : D.homologyCalculated
  spectralSequenceObtainedClosed : D.spectralSequenceObtained

def DifferentialGradedModuleClosed (D : DifferentialGradedModulePackage) : Prop :=
  D.differentialSquareZero ∧ D.leibnizRule ∧ D.homologyCalculated ∧ D.spectralSequenceObtained

theorem differential_graded_module_closed_from_evidence
    (D : DifferentialGradedModulePackage)
    (E : DifferentialGradedModuleEvidence D) :
    DifferentialGradedModuleClosed D := by
  exact And.intro E.differentialSquareZeroClosed
    (And.intro E.leibnizRuleClosed
      (And.intro E.homologyCalculatedClosed E.spectralSequenceObtainedClosed))

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
