import CommutativeOrdersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def commutativeOrdersProjection : Projection CommutativeOrderEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem commutative_orders_projection_idempotent (x : CommutativeOrderEndgameState) :
    commutativeOrdersProjection.toFun (commutativeOrdersProjection.toFun x) = commutativeOrdersProjection.toFun x := by
  exact commutativeOrdersProjection.idempotent x

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse