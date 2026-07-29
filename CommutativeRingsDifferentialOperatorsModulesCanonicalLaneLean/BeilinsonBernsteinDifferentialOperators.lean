import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure BeilinsonBernsteinDifferentialOperatorsPackage where
  flagVariety : FlagVariety ℂ
  differentialOperatorsFlag : Type u
  sheavesOfModules : Category
  localizationMap : Localization (sheafOfRings flagVariety) differentialOperatorsFlag
  beilinsonBernsteinTheorem : Prop
  monadicity : Prop
  harishChandraModuleCategory : Prop

structure BeilinsonBernsteinDifferentialOperatorsEvidence (B : BeilinsonBernsteinDifferentialOperatorsPackage) where
  beilinsonBernsteinTheoremClosed : B.beilinsonBernsteinTheorem
  monadicityClosed : B.monadicity
  harishChandraModuleCategoryClosed : B.harishChandraModuleCategory

def BeilinsonBernsteinDifferentialOperatorsClosed (B : BeilinsonBernsteinDifferentialOperatorsPackage) : Prop :=
  B.beilinsonBernsteinTheorem ∧ B.monadicity ∧ B.harishChandraModuleCategory

theorem beilinson_bernstein_differential_operators_closed_from_evidence
    (B : BeilinsonBernsteinDifferentialOperatorsPackage)
    (E : BeilinsonBernsteinDifferentialOperatorsEvidence B) :
    BeilinsonBernsteinDifferentialOperatorsClosed B := by
  exact And.intro E.beilinsonBernsteinTheoremClosed
    (And.intro E.monadicityClosed E.harishChandraModuleCategoryClosed)

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
