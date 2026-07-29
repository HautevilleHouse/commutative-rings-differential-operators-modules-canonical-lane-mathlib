import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialOperatorSheafPackage where
  baseScheme : Scheme
  sheafOfModules : Type u
  differentialOperators : Type v
  filteredStructure : FilteredAlgebra (Γ( baseScheme, O_S )) differentialOperators
  quasiCoherent : IsQuasiCoherent sheafOfModules
  differentialOperatorsAct : SheafAction differentialOperators sheafOfModules
  connectionDefined : Prop
  curvatureComputed : Prop

structure DifferentialOperatorSheafEvidence (D : DifferentialOperatorSheafPackage) where
  connectionDefinedClosed : D.connectionDefined
  curvatureComputedClosed : D.curvatureComputed

def DifferentialOperatorSheafClosed (D : DifferentialOperatorSheafPackage) : Prop :=
  D.connectionDefined ∧ D.curvatureComputed

theorem differential_operator_sheaf_closed_from_evidence
    (D : DifferentialOperatorSheafPackage)
    (E : DifferentialOperatorSheafEvidence D) :
    DifferentialOperatorSheafClosed D := by
  exact And.intro E.connectionDefinedClosed E.curvatureComputedClosed

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
