import CommutativeOrdersLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CommutativeOrderSpace where
  carrier : Type
  order : CommutativeOrder carrier

structure CommutativeOrderAdmittedObject where
  space : CommutativeOrderSpace
  totalOrder : Prop
  discreteOrder : Prop
  conclusion : totalOrder ∧ discreteOrder

structure CommutativeOrderEndgameState where
  object : CommutativeOrderAdmittedObject

def CommutativeOrderWitnessClosed (O : CommutativeOrderAdmittedObject) : Prop :=
  O.totalOrder ∧ O.discreteOrder

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse