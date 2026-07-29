import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeOrdersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure CommutativeOrdersRouteObligations where
  latticeStructure : Prop
  orderIsomorphism : Prop
  commutativityProof : Prop

def CommutativeOrdersRouteClosed (R : CommutativeOrdersRouteObligations) : Prop :=
  R.latticeStructure ∧ R.orderIsomorphism ∧ R.commutativityProof

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse