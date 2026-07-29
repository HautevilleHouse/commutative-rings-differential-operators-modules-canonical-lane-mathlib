import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure Projection (α : Type u) where
  toFun : α → α
  idempotent : ∀ x, toFun (toFun x) = toFun x

def moduleProjection : Projection ModuleEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem module_projection_idempotent (x : ModuleEndgameState) :
    moduleProjection.toFun (moduleProjection.toFun x) = moduleProjection.toFun x := by
  exact moduleProjection.idempotent x

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse