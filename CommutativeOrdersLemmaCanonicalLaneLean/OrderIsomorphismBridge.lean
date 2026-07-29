import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Order.Basic

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure OrderIsomorphismEvidence where
  iso : OrderIso
  preservesCommutativity : Prop

def OrderIsomorphismClosed (E : OrderIsomorphismEvidence) : Prop :=
  E.preservesCommutativity

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse