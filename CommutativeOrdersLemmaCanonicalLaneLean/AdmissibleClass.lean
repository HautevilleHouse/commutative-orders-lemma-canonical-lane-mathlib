import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CommutativeOrdersLemmaPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CommutativeOrdersLemmaClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse
