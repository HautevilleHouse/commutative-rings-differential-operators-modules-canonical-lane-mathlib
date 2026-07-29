import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure AuslanderGorensteinPackage where
  ring : Type u
  ringStructure : CommRing ring
  injectiveDimension : ℕ
  injectiveDimensionProperty : injectiveDimension = FiniteInjectiveDimension ring
  gorensteinProperty : Prop
  canonicalModuleDefined : Prop
  dualityHolds : Prop
  differentialOperatorsRing : Type v
  auslanderGorensteinTheorem : Prop

structure AuslanderGorensteinEvidence (A : AuslanderGorensteinPackage) where
  gorensteinPropertyClosed : A.gorensteinProperty
  canonicalModuleDefinedClosed : A.canonicalModuleDefined
  dualityHoldsClosed : A.dualityHolds
  auslanderGorensteinTheoremClosed : A.auslanderGorensteinTheorem

def AuslanderGorensteinClosed (A : AuslanderGorensteinPackage) : Prop :=
  A.gorensteinProperty ∧ A.canonicalModuleDefined ∧ A.dualityHolds ∧ A.auslanderGorensteinTheorem

theorem auslander_gorenstein_closed_from_evidence
    (A : AuslanderGorensteinPackage) (E : AuslanderGorensteinEvidence A) :
    AuslanderGorensteinClosed A := by
  exact And.intro E.gorensteinPropertyClosed
    (And.intro E.canonicalModuleDefinedClosed
      (And.intro E.dualityHoldsClosed E.auslanderGorensteinTheoremClosed))

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
