import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Order.Basic

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure CommutativeOrdersSpace where
  carrier : Type
  partialOrder : PartialOrder carrier
  totalOrderProp : Prop

structure CommutativeOrdersAdmittedObject where
  space : CommutativeOrdersSpace
  commutativeLemma : Prop
  lemmaProof : commutativeLemma

def CommutativeOrdersWitnessClosed (O : CommutativeOrdersAdmittedObject) : Prop :=
  O.commutativeLemma

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse