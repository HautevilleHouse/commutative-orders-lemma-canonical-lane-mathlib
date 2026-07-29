import HautevilleHouse.CommutativeOrdersLemmaCanonicalLaneLean.SzpilrajnExtensionLemma

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SzpilrajnExtensionClosed A.object.partialOrder A.object.szpilrajnExtension

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    -- construct evidence from A's fields
    -- Assumes A carries the necessary structure
    sorry

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse
